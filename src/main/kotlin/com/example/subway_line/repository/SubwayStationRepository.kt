package com.example.subway_line.repository

import com.example.subway_line.model.SubwayStation
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository

@Repository
interface SubwayStationRepository : JpaRepository<SubwayStation, Long> {
    // 필요한 쿼리 메소드 추가 가능
    fun findByLineNumber(lineNumber: Int): List<SubwayStation>
}

//**JpaRepository**를 상속받아 기본적인 CRUD 작업을 자동으로 제공
//Long은 SubwayStation 엔티티의 id 타입
//findByLineNumber(lineNumber: Int): 이 메소드는 SubwayStation 엔티티의 lineNumber 필드를 기준으로
// 데이터베이스에서 데이터를 조회하는 기능을 추가함. Spring Data JPA는 메소드 이름을 기반으로 쿼리를 자동으로 생성해줌.