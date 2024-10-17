package com.example.subway_line.repository

import com.example.subway_line.model.SubwayStation
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository

@Repository     //SubwayStationRepository 를 빈(Bean)으로 등록하게 만듦,
                //이를 통해 해당 인터페이스를 관리하고, 의존성 주입을 통해 쉽게 사용할수 있게 해줌
interface SubwayStationRepository : JpaRepository<SubwayStation, Long> {
    //SubwayStationRepository 는 JpaRepository 를 상속받는 인터페이스이다.
    //<SubwayStation, Long>:이 리포지토리가 다루는 엔티티 클래스 타입, SubwayStation 의 id 필드가 Long 타입임을 나타냄.
    //JpaRepository: 상속함으로써 기본적인 CRUD 기능을 자동으로 제공 받음.

    // 필요한 쿼리 메소드 추가 가능

    fun findByLineNumber(lineNumber: Int): List<SubwayStation>
    //findByLineNumber: 특정 라인 번호에 따라 지하철역 리스트를 반환하는 사용자 정의 쿼리 메소드
    //lineNumber 값을 기준으로 데이터를 조회하는 사용자 정의 쿼리 메소드이다.
    //lineNumber 에 해당하는 모든 지하철역(Station) 정보를 List<SubwayStation> 형태로 반환
}


