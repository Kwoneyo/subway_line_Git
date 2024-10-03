
// DOM이 완전히 로드되었을 때 실행
document.addEventListener("DOMContentLoaded", function () {

    // 모든 호선 버튼을 선택
    const buttons = document.querySelectorAll(".line");

    // SVG 지하철 맵 요소 선택
    const svgMap = document.getElementById("subwayMap");

    // 각 버튼에 클릭 이벤트 리스너 추가
    buttons.forEach(button => {
        button.addEventListener("click", function () {

            // 클릭된 버튼에서 호선 번호 가져오기
            const lineNumber = this.getAttribute("data-line");

            // 해당 호선의 역 정보를 가져오는 함수 호출
            fetchStationsByLine(lineNumber);
        });
    });

    // 특정 호선 번호에 따라 역 정보를 가져오는 함수
    function fetchStationsByLine(lineNumber) {

        // 서버에서 해당 호선의 역 데이터 가져오기
        fetch(`/stations/line/${lineNumber}`)
            .then(response => response.json()) // JSON 형식으로 변환

            .then(data => displayStationsOnMap(data)) // 역 정보를 맵에 표시하는 함수 호출

            .catch(error => console.error("Error fetching stations:", error)); // 오류 처리
    }

    // 역 정보를 기반으로 SVG 맵에 역을 표시하는 함수
    function displayStationsOnMap(stations) {

        // SVG 내용 초기화 (기존 내용을 제거)
        svgMap.innerHTML = "";

        // 노선의 Y좌표 고정
        const lineY = 150;
        let currentX = 50; // 첫 번째 역의 시작 X좌표 설정

        // 노선 그리기
        const line = document.createElementNS("http://www.w3.org/2000/svg", "line"); // SVG 선 요소 생성
        line.setAttribute("x1", 50); // 시작 X좌표
        line.setAttribute("y1", lineY); // 시작 Y좌표
        line.setAttribute("x2", stations.length * 120 + 50); // 끝 X좌표 (역 수에 따라 조정)
        line.setAttribute("y2", lineY); // 끝 Y좌표
        line.setAttribute("stroke", getLineColor(stations[0].lineNumber)); // 호선 색상 설정
        line.setAttribute("stroke-width", "8"); // 선 두께 설정
        svgMap.appendChild(line); // SVG 맵에 선 추가

        // 각 역을 맵에 표시
        stations.forEach((station, index) => {
            const xPos = currentX; // 현재 역의 X좌표

            // 역 표시 (원)
            const stationCircle = document.createElementNS("http://www.w3.org/2000/svg", "circle"); // SVG 원 요소 생성
            stationCircle.setAttribute("cx", xPos); // 원의 중앙 X좌표
            stationCircle.setAttribute("cy", lineY); // 원의 중앙 Y좌표
            stationCircle.setAttribute("r", 10); // 원의 반지름
            stationCircle.setAttribute("fill", "white"); // 원의 색상 (흰색)
            stationCircle.setAttribute("stroke", getLineColor(station.lineNumber)); // 원 테두리 색상 설정
            stationCircle.setAttribute("stroke-width", "3"); // 테두리 두께 설정

            // 역 이름 표시 (텍스트)
            const stationText = document.createElementNS("http://www.w3.org/2000/svg", "text"); // SVG 텍스트 요소 생성
            stationText.setAttribute("x", xPos - 10); // 텍스트 X좌표 (원 중앙 위치에 따라 조정)
            stationText.setAttribute("y", lineY - 15); // 텍스트 Y좌표 (원 위쪽 위치)
            stationText.textContent = station.name; // 역 이름 설정

            // SVG 맵에 원과 텍스트 추가
            svgMap.appendChild(stationCircle);
            svgMap.appendChild(stationText);

            currentX += 120; // 다음 역을 위한 X좌표 증가 (120px 간격)
        });

        // SVG의 너비를 현재 X좌표에 맞게 조정
        svgMap.setAttribute("width", currentX); // X좌표에 맞춰 SVG 너비 조정
    }

    // 각 호선에 따른 색상을 반환하는 함수
    function getLineColor(lineNumber) {
        // 호선 번호에 따른 색상 매핑
        const colors = {
            "1": "#0052A4", // 1호선 색상
            "2": "#00A84D", // 2호선 색상
            "3": "#EF7C1C", // 3호선 색상
            "4": "#00A5DE", // 4호선 색상
            "5": "#996CAC", // 5호선 색상
            "6": "#CD7C2F", // 6호선 색상
            "7": "#747F00", // 7호선 색상
            "8": "#E6186C"  // 8호선 색상
        };
        return colors[lineNumber]; // 해당 호선 색상 반환
    }
});


//DOMContentLoaded 이벤트: DOM이 완전히 로드되었을 때 JavaScript가 실행되도록 합니다.
// 버튼 클릭 이벤트: 각 버튼에 클릭 이벤트 리스너를 추가하여 해당 호선의 역을 가져오도록 합니다.
// fetchStationsByLine 함수: 호선 번호에 따라 서버에서 역 데이터를 가져옵니다.
// displayStationsOnMap 함수:
// SVG 내용을 초기화하고, 고정된 Y좌표에 따라 노선을 그립니다.
// 각 역을 원 형태로 SVG에 추가하고, 역 이름을 텍스트로 표시합니다.
// currentX 변수를 사용하여 각 역 간의 X좌표를 조정하고, SVG의 너비를 업데이트하여 모든 역이 표시되도록 합니다.
// getLineColor 함수: 호선 번호에 따라 색상을 반환하는 함수입니다.