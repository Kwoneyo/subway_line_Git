package com.example.subway_line.model

import jakarta.persistence.Entity
import jakarta.persistence.GeneratedValue
import jakarta.persistence.GenerationType
import jakarta.persistence.Id
import jakarta.persistence.Table
import jakarta.persistence.Column

// Entity 는 주로 데이터베이스의 테이블을 나타내는 클래스를 의미하며,
// 이 클래스는 JPA(Java Persistence API)를 사용하여 데이터베이스에 저장되고 관리함.
@Entity                                                 //JPA 가 해당 클래스를 엔티티로 인식하기 위해 어노테이션을 붙임
@Table(name = "subwaystation")                          // name 속성을 사용하여 매핑할 테이블 이름을 (subwaystation)정의

data class SubwayStation(                               //SubwayStation 이라는 이름을 가진 엔티티로 정의되며, 각 데이터베이스 테이블의 열 에 매핑.
    @Id                                                 //해당 속성을 PK로 지정, 해당 속성의 값은 DB에 동일한 값 으로 저장될 수 없다.
    @GeneratedValue(strategy = GenerationType.IDENTITY) //id 필드 값을 따로 설정하지 않아도 1씩 자동으로 증가하며 저장된다.
    val id: Long = 0,                                   //id 필드는 Long 타입이며 기본 값으로 0이 할당된다.

    @Column(nullable = false)                           //해당 필드가 null 값을 허용하지 않는다는 의미며, 반드시 값이 있어야 함
    val name: String,                                   //name 필드는 String 타입이고 지하철역의 이름을 나타내며, 빈값을 허용하지 않음.

    @Column(name = "line_number", nullable = false)     //데이터베이스의 열 이름을 line_number 로 지정하며, 해당 값이 null 을 허용하지 않는다.
    val lineNumber: Int,                                //lineNumber 필드는 Int 타입이며 지하철 호선 번호를 나타냄, 반드시 값이 있어야함

    @Column(precision = 9)                              //소수점 이하 최대 9자리까지 표현할 수 있는 위도
    val latitude: Double? = null,                       //latitude 지하철역의 위도를 나타내며, 이 필드는 null 값을 허용할 수 있음

    @Column(precision = 9)                              //소수점 이하 최대 9자리까지 표현할 수 있는 경도
    val longitude: Double? = null,                      //longitude 지하철역의 경도를 나타내며, 이 필드는 null 값을 허용할 수 있음

    @Column(name = "phone_number", length = 15)         //열의 이름을 phone_number 로 지정하고, 필드의 최대 길이를 15자로 제한
    val phoneNumber: String? = null,                    //phoneNumber 필드는 지하철역의 전화번호를 저장하며, 값이 없을 수 있다.

    @Column(columnDefinition = "TEXT")                  //데이터베이스에서  TEXT 타잊으로 저장되며, 길이가 긴 문자열을 저장 할때 사용
    val description: String? = null                     //description 필드는 지하철 역에 대한 설명을 나타내며, null 값을 허용함
)

//@Entity: 이 클래스가 JPA의 엔티티임을 나타냄
//@Table(name = "subway_station"): 데이터베이스의 테이블 이름을 지정
//각 필드는 데이터베이스의 컬럼에 해당하며, 필요에 따라 null 허용 여부를 설정할 수 있음