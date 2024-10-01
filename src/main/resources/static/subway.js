document.addEventListener("DOMContentLoaded", function () {
    const buttons = document.querySelectorAll(".line");
    const svgMap = document.getElementById("subwayMap");

    buttons.forEach(button => {
        button.addEventListener("click", function () {
            const lineNumber = this.getAttribute("data-line");
            fetchStationsByLine(lineNumber);
        });
    });

    function fetchStationsByLine(lineNumber) {
        fetch(`/stations/line/${lineNumber}`)
            .then(response => response.json())
            .then(data => displayStationsOnMap(data))
            .catch(error => console.error("Error fetching stations:", error));
    }

    function displayStationsOnMap(stations) {
        // SVG 내용 초기화
        svgMap.innerHTML = "";

        // 노선 그리기
        const lineY = 150 + (parseInt(stations[0].lineNumber) - 1) * 50; // 호선 Y좌표
        const line = document.createElementNS("http://www.w3.org/2000/svg", "line");
        line.setAttribute("x1", 50); // 시작 X좌표
        line.setAttribute("y1", lineY);
        line.setAttribute("x2", 750); // 끝 X좌표
        line.setAttribute("y2", lineY);
        line.setAttribute("stroke", getLineColor(stations[0].lineNumber)); // 호선 색상
        line.setAttribute("stroke-width", "8");
        svgMap.appendChild(line);

        // 역 표시
        stations.forEach((station, index) => {
            const xPos = 80 + (index * 120); // 각 역 간격 조정
            const yPos = lineY;

            // 역 표시 (원)
            const stationCircle = document.createElementNS("http://www.w3.org/2000/svg", "circle");
            stationCircle.setAttribute("cx", xPos);
            stationCircle.setAttribute("cy", yPos);
            stationCircle.setAttribute("r", 10);
            stationCircle.setAttribute("fill", "white");
            stationCircle.setAttribute("stroke", getLineColor(station.lineNumber));
            stationCircle.setAttribute("stroke-width", "3");

            // 역 이름 (텍스트)
            const stationText = document.createElementNS("http://www.w3.org/2000/svg", "text");
            stationText.setAttribute("x", xPos - 10);
            stationText.setAttribute("y", yPos - 15);
            stationText.textContent = station.name;

            svgMap.appendChild(stationCircle);
            svgMap.appendChild(stationText);
        });
    }

    // 각 호선에 따라 색상 리턴
    function getLineColor(lineNumber) {
        const colors = {
            "1": "#0052A4",
            "2": "#00A84D",
            "3": "#EF7C1C",
            "4": "#00A5DE",
            "5": "#996CAC",
            "6": "#CD7C2F",
            "7": "#747F00",
            "8": "#E6186C"
        };
        return colors[lineNumber];
    }
});
