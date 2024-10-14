package com.example.subway_line.controller

import com.example.subway_line.model.SubwayStation
import com.example.subway_line.service.SubwayStationService
import org.springframework.http.HttpStatus
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.*
//Controller: 클라이언트의 요청을 처리하고 응답을 반환하는 역할을 한다.

@RestController                               //RESTful 웹 서비스를 처리하는 컨트롤러이며, 자동으로 JSON, XML 과 같은 형태로 데이터를 반환할 수 있드록 설정
@RequestMapping("/stations")                  //기본 URL 경로를 설정한다. /stations 가 기본 경로로 지정되어 있어, 모든 메서드는 /stations 경로 기반으로 동작
class SubwayStationController(private val subwayStationService: SubwayStationService) { //서비스 계층인 subwayStationService 를 주입받아 사용

    //1 클라이언트 요청받기
    //2 데이터 저장
    //3 응답 반환
    @GetMapping("/line/{lineNumber}")        //클라이언트가 /station/line/{lineNumber}로 GET 요청을 보내면 이 함수가 호출됨
    fun getStationsByLine(@PathVariable lineNumber: Int): ResponseEntity<List<SubwayStation>> {
        //ResponseEntity: HTTP 응답 전체(상태 코드, 헤더, 바디)를 캡슐화하여 반환하는역할을하며, JSON 형식으로 응답 데이터를 반환함.
        //@PathVariable: 경로에 포함된 변수를 메서드 파라미터로 받음, URL 에서 lineNumber 로 전달된 값을 메서드의 lineNumber 변수로 받음
        //ResponseEntity<List<SubwayStation>>: HTTP 응답으로 지하철역 리스트를 반환
        val stations = subwayStationService.getStationsByLine(lineNumber)
        // (lineNumber)에 속하는 지하철의 목록을 서비스 계층에서 받아와 stations 변수에 저장.
        return ResponseEntity.ok(stations)
        //상태코드 200 ok 와 함께 역 목록을 JSON 형태로 클라이언트 에게 반환함
    }

    @PostMapping                               //클라이언트가 /stations 경로로 POST 요청을 보낼 때 호출됨
    fun addStation(@RequestBody station: SubwayStation): ResponseEntity<SubwayStation> {
        //@RequestBody station: 클라이언트가 보낸 지하철 역 정보를 JSON 으로 받으며, 이 JSON 데이터는 SubwayStation 객체로 변환 된다.
        //ResponseEntity<SubwayStation>: 지하철 정보를 담아 상태 코드와 함께 반환할 HTTP 응답 객체
        val savedStation = subwayStationService.addStation(station)
        //데이터베이스에 있는 모든 지하철역의 목록을 서비스 계층에서 받아와 savedStation 변수에 저장.
        return ResponseEntity.status(HttpStatus.CREATED).body(savedStation)
        //ResponseEntity.status(HttpStatus.CREATED): 상태코드를 201로 설정하여 새로운 리소스(지하철역)가 생성 되었음을 알림.
        //body(savedStation): 클라이언트에게 응답할 실제 데이터(savedStation) 저장된 지하철역 정보를 포함한다.
    }

    @GetMapping                                 //클라이언트가 /stations 경로로 GET 요청을 보낼 떄 호출됨
    fun getAllStations(): ResponseEntity<List<SubwayStation>> {
        //ResponseEntity<List<SubwayStation>>: HTTP 응답으로 지하철역 리스트를 반환
        val stations = subwayStationService.getAllStations()
        //데이터베이스에 있는 모든 지하철역의 목록을 서비스 계층에서 받아와 stations 변수에 저장함.
        return ResponseEntity.ok(stations)
        //상태코드 200 ok 와 함께 모든 역 목록을 JSON 형태로 클라이언트 에게 반환함
    }

    @DeleteMapping("/{id}")                     //클라이언트가 /stations/{id} 경로로 DELETE 요청을 보낼떄 호출됨
    fun deleteStation(@PathVariable id: Long): ResponseEntity<Void> {
        //@PathVariable id: URL 에서 {id}에 해당하는 역의 ID 값을 받아 온다.
        //ResponseEntity<Void>: 데이터 없이 HTTP 상태코드와 헤더 정보만을 포함하는 응답을 나타냄
        subwayStationService.deleteStation(id)
        //서비스 계층에서 해당 ID에 해당하는 지하철역을 데이터베이스에서 삭제한다
        return ResponseEntity.noContent().build()
        //ResponseEntity.noContent(): 상태코드 204 No Content 를 반환하며, 응답 본문 없이 성공적으로 처리되었음을 알림.
        //.build(): 응답을 완성해서 반환한다.
    }

    @PutMapping("/{id}")                        //클라이언트가 /stations/{id} 경로로 PUT 요청을 보낼 때 호출됨
    fun updateStation(@PathVariable id: Long, @RequestBody station: SubwayStation): ResponseEntity<SubwayStation> {
        //@PathVariable id: URL에서 {id} 값을 받아, 수정할 역의 ID로 사용한다.
        //@RequestBody station: 클라이언트가 보낸 수정할 지하철역 정보를 JSON 형태로 받아온다.
        //ResponseEntity<SubwayStation>: 지하철 정보를 담아 상태 코드와 함께 반환할 HTTP 응답 객체
        val updatedStation = subwayStationService.updateStation(id, station)
        //서비스 계층에서 해당 ID의 지하철 역 정보를 새로 받아온 정보로 수정후 updatedStation 변수에 저장함
        return ResponseEntity.ok(updatedStation)
        //상태 코드 200 ok 와 함께 수정된 역 정보를 클라이언트에게 반환한다.
    }
}



//@RestController: 이 클래스가 컨트롤러임을 나타냄
//@RequestMapping("/stations"): "/stations" 경로로 시작하는 모든 요청을 처리
//@GetMapping("/line/{lineNumber}"): 특정 노선의 지하철역을 조회하는 GET 요청을 처리
//@PostMapping: 새 지하철역 데이터를 추가하는 POST 요청을 처리

//getStationsByLine: 특정 노선의 모든 역을 반환
//addStation: 클라이언트가 보낸 역 정보를 데이터베이스에 추가
//getAllStations: 모든 지하철 역을 반환
//deleteStation: 특정 ID의 역을 삭제
//updateStation: 지하철 역의 정보를 수정