package com.example.subway_line

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication
import org.springframework.data.jpa.repository.config.EnableJpaRepositories

@SpringBootApplication
@EnableJpaRepositories("com.example.subway_line.repository")
class SubwayLineApplication

fun main(args: Array<String>) {
	runApplication<SubwayLineApplication>(*args)
}
