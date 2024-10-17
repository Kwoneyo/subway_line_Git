package com.example.subway_line

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication
import org.springframework.data.jpa.repository.config.EnableJpaRepositories

@SpringBootApplication		//스프링 부트 애플리케이션의 자동 설정을 활성화하는 어노테이션이며,
							//스프링 컨테이너를 생성하고, 빈을 스캔하며, 다양한 설정을 자동으로 처리한다.
@EnableJpaRepositories("com.example.subway_line.repository")
//JPA 리포지토리를 활성화하는 어노테이션이다, 이 어노테이션을 사용하여 "com.example.subway_line.repository" 패키지에 있는
//JAP 리포지토리를 스프링이 자동으로 스캔하고 관리할 수 있게 만든다. 이로 인해 JpaRepository 를 사용하는 리포지토리 인터페이스가 활성화된다.
class SubwayLineApplication
//main 함수를 통해 애플리케이션을 실행할 때 이 클래스 기반으로 애플리케이션이 시작됨.

fun main(args: Array<String>) {
	runApplication<SubwayLineApplication>(*args)
}
