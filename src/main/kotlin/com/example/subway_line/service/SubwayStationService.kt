package com.example.subway_line.service

import com.example.subway_line.model.SubwayStation
import com.example.subway_line.repository.SubwayStationRepository
import org.springframework.stereotype.Service

@Service
    class SubwayStationService(private val subwayStationRepository: SubwayStationRepository) {

        fun getStationsByLine(lineNumber: Int): List<SubwayStation> {
            return subwayStationRepository.findByLineNumber(lineNumber)
        }

        fun addStation(station: SubwayStation): SubwayStation {
            return subwayStationRepository.save(station)
        }

        fun getAllStations(): List<SubwayStation> {
            return subwayStationRepository.findAll()
        }

        fun deleteStation(id: Long) {
            if (subwayStationRepository.existsById(id)) {
                subwayStationRepository.deleteById(id)
            } else {
                throw IllegalArgumentException("Station with id $id does not exist")
            }
        }

    fun updateStation(id: Long, station: SubwayStation): SubwayStation {
        if (subwayStationRepository.existsById(id)) {
            return subwayStationRepository.save(station.copy(id = id)) // ID를 유지하면서 업데이트
        } else {
            throw IllegalArgumentException("Station with id $id does not exist")
        }
    }
}

    // 필요에 따라 다른 비즈니스 로직 추가 가능





//getStationsByLine: 특정 호선의 모든 역을 가져오는 메서드,          HTTP 메서드 GET(조회)
//addStation: 새로운 지하철 역을 데이터베이스에 추가                 HTTP 메서드 POST(생성)
//getAllStations: 모든 지하철 역을 데이터베이스에서 조회.            HTTP 메서드 GET(전체조회)
//deleteStation: 특정 ID의 역을 삭제                             HTTP 메서드 DELETE(삭제)
//updateStation: 지하철 역의 정보를 수정                          HTTP 메서드 PUT(수정)