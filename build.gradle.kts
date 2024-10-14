plugins {
	kotlin("jvm") version "2.0.0" // Kotlin 버전
	kotlin("plugin.spring") version "2.0.0" // Kotlin Spring 플러그인 버전
	id("org.springframework.boot") version "3.3.4" // Spring Boot 버전
	id("io.spring.dependency-management") version "1.1.6" // Spring 의존성 관리
	kotlin("plugin.jpa") version "2.0.0" // Kotlin JPA 플러그인 버전
}

group = "com.example"
version = "0.0.1-SNAPSHOT"

java {
	toolchain {
		languageVersion = JavaLanguageVersion.of(17) // Java 버전
	}
}

repositories {
	mavenCentral() // Maven 중앙 저장소
}

dependencies {
	implementation("org.springframework.boot:spring-boot-starter-data-jpa") // Spring Data JPA
	implementation("org.springframework.boot:spring-boot-starter-web") // Spring Web
	implementation("com.fasterxml.jackson.module:jackson-module-kotlin") // Jackson 모듈
	implementation("org.jetbrains.kotlin:kotlin-reflect") // Kotlin 리플렉션
	implementation("mysql:mysql-connector-java:8.0.32") // MySQL 커넥터
	testImplementation("org.springframework.boot:spring-boot-starter-test") // Spring Boot 테스트
	testImplementation("org.jetbrains.kotlin:kotlin-test-junit5") // Kotlin 테스트
	testRuntimeOnly("org.junit.platform:junit-platform-launcher") // JUnit 플랫폼 런처
}

kotlin {
	compilerOptions {
		freeCompilerArgs.addAll("-Xjsr305=strict") // JSR-305 설정
	}
}

tasks.withType<Test> {
	useJUnitPlatform() // JUnit 플랫폼 사용
}
