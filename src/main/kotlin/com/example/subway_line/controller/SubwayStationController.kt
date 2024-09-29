package com.example.subway_line.controller

import com.example.subway_line.model.SubwayStation
import com.example.subway_line.service.SubwayStationService
import org.springframework.http.HttpStatus
import org.springframework.http.ResponseEntity
import org.springframework.web.bind.annotation.*

@RestController
@RequestMapping("/stations")
class SubwayStationController(private val subwayStationService: SubwayStationService) {

    @GetMapping("/line/{lineNumber}")
    fun getStationsByLine(@PathVariable lineNumber: Int): ResponseEntity<List<SubwayStation>> {
        val stations = subwayStationService.getStationsByLine(lineNumber)
        return ResponseEntity.ok(stations)
    }

    @PostMapping
    fun addStation(@RequestBody station: SubwayStation): ResponseEntity<SubwayStation> {
        val savedStation = subwayStationService.addStation(station)
        return ResponseEntity.status(HttpStatus.CREATED).body(savedStation)
    }

    @GetMapping
    fun getAllStations(): ResponseEntity<List<SubwayStation>> {
        val stations = subwayStationService.getAllStations()
        return ResponseEntity.ok(stations)
    }

    @DeleteMapping("/{id}")
    fun deleteStation(@PathVariable id: Long): ResponseEntity<Void> {
        subwayStationService.deleteStation(id)
        return ResponseEntity.noContent().build()
    }

    @PutMapping("/{id}")
    fun updateStation(@PathVariable id: Long, @RequestBody station: SubwayStation): ResponseEntity<SubwayStation> {
        val updatedStation = subwayStationService.updateStation(id, station)
        return ResponseEntity.ok(updatedStation)
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