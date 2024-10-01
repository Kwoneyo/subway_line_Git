package com.example.subway_line.model

import jakarta.persistence.Entity
import jakarta.persistence.GeneratedValue
import jakarta.persistence.GenerationType
import jakarta.persistence.Id
import jakarta.persistence.Table
import jakarta.persistence.Column


@Entity
@Table(name = "subwaystation")
data class SubwayStation(                               //클래스 선언과 테이블이름 매핑
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    val id: Long = 0,

    @Column(nullable = false)
    val name: String,

    @Column(name = "line_number", nullable = false)
    val lineNumber: Int,

    @Column(precision = 9)                  //소수점 이하 최대 9자리까지 표현할 수 있는 위도 필드
    val latitude: Double? = null,

    @Column(precision = 9)                  //소수점 이하 최대 9자리까지 표현할 수 있는 경도 필드
    val longitude: Double? = null,

    @Column(name = "phone_number", length = 15)
    val phoneNumber: String? = null,

    @Column(columnDefinition = "TEXT")
    val description: String? = null
)

//@Entity: 이 클래스가 JPA의 엔티티임을 나타냄
//@Table(name = "subway_station"): 데이터베이스의 테이블 이름을 지정
//각 필드는 데이터베이스의 컬럼에 해당하며, 필요에 따라 null 허용 여부를 설정할 수 있음