package com.example.subway_line.service

import com.example.subway_line.model.SubwayStation
import com.example.subway_line.repository.SubwayStationRepository
import org.springframework.stereotype.Service

@Service        //service Layer 역할을 한다,
                //@Service 어노데이션이 붙은 클래스를 빈(bean)으로 등록하고 의존성 주입을 통해 다른 클래스를 사용할수 있게한다.
//service Layer: 서비스 레이어는 비즈니스 로직을 처리하는 중요한 역할을한다.
// 비즈니스 로직의 분리와 중앙화, 각 계층의 역할 명확화, 트랜잭션 관리, 코드 재사용성 촉진
//빈(bean): 스프링 컨테이너에서 관리되는 객체, 필요할 때 의존성 주입을 통해 다른 객체에서 사용
    class SubwayStationService(private val subwayStationRepository: SubwayStationRepository) {
        //인테페이스를 의존성 주입을 통해 받아오고, 이를 통해 데이터베이스와의 상호작용을 쉽게 할 수 있다.
        //SubwayStationService: 지하철역과 관련된 비즈니스 로직을 처리하는 서비스 클래스
        //subwayStationRepository: 리포지토리 인터페이스를 사용해 데이터베이스와 통신한다.

        fun getStationsByLine(lineNumber: Int): List<SubwayStation> {
            //특정 지하철 라인 번호로 지하철역 목록을 조회하는 함수
            return subwayStationRepository.findByLineNumber(lineNumber)
            //lineNumber 를 기준으로 해당 라인의 역들을 데이터베이스에서 조회한다,
            //findByLineNumber 는 리포지토리 인터페이스에 정의된 커스텀 쿼리 메스드 이다.
            //조회된 지하철역 리스트를 반환하며, 반환 타입은 List<SubwayStation> 지하철역 객체들의 리스트이다.
        }

        fun addStation(station: SubwayStation): SubwayStation {
            //새로운 지하철역을 데이터베이스에 추가하는 함수
            return subwayStationRepository.save(station)
            //전달된 station 객체를 데이터베이스에 저장하며, 저장된 지하철역 객체를 반환한다.
        }

        fun getAllStations(): List<SubwayStation> {
            //모든 지하철역을 조회하는 함수
            return subwayStationRepository.findAll()
            //데이터베이스에 있는 모든 역을 조회, 조회된 모든 지하철역의 리스트를 반환, 반환타입은 List<SubwayStation>
        }

        fun deleteStation(id: Long) {
            //ID를 기반으로 지하철 역을 삭제하는 함수
            if (subwayStationRepository.existsById(id)) {
                //해당 ID를 가진 역이 존재하는지 확인한다,
                //existsById(id)는 리포지토리 메서트로, 특정 ID가 데이터베이스에 존재 여부 확인한다.
                subwayStationRepository.deleteById(id)
                //해당 ID가 존재하면, 그 역을 삭제한다.
            } else {
                throw IllegalArgumentException("ID가 $id 인 스테이션이 존재하지 않습니다.")
                //ID에 해당하는 역이 없으면 예외를 발생 시킨다.
            }
        }

    fun updateStation(id: Long, station: SubwayStation): SubwayStation {
        //지하철역 정보를 수정하는 함수이다.
        if (subwayStationRepository.existsById(id)) {
            //업데이트하려는 역이 존재하는지 확인한다.
            return subwayStationRepository.save(station.copy(id = id))
            //station.copy(id = id):기존 ID를 유지하면서, 새로운 정보로 station 객체를 복사한다.
            //수정된 지하철역 객체를 반환한다.
        } else {
            throw IllegalArgumentException("ID가 $id 인 스테이션이 존재하지 않습니다.")
            //ID에 해당하는 역이 없으면 예외를 발생 시킨다.
        }
    }
}

    // 필요에 따라 다른 비즈니스 로직 추가 가능



//getStationsByLine: 특정 호선의 모든 역을 가져오는 메서드,          HTTP 메서드 GET(조회)
//addStation: 새로운 지하철 역을 데이터베이스에 추가                 HTTP 메서드 POST(생성)
//getAllStations: 모든 지하철 역을 데이터베이스에서 조회.            HTTP 메서드 GET(전체조회)
//deleteStation: 특정 ID의 역을 삭제                             HTTP 메서드 DELETE(삭제)
//updateStation: 지하철 역의 정보를 수정                          HTTP 메서드 PUT(수정)