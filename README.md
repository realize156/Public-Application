# 공공시설 데이터 application

## 비전
국내 특정 지역을 방문할 때 그 지역에 대한 필요한 정보를 찾고자 하는 경험이 누구에게나 한 번쯤 있을 것이다. 
본 프로젝트는 공공데이터를 활용하여 사람들의 편의를 위해 관광지에 관한 다양한 정보나, 화장실, 대피소, 주변 병원 등 생활 속에서 필요로 하는 정보들을 정리한 플랫폼을 만들어 앱으로 제공하고자 한다.    복잡하지 않고 보기 쉽고 간편한 인터페이스로 전 연령층이 이용 할 수 있도록 설계하였으며 , 경제적·산업적으로 상당히 큰 성과를 거둘 수 있으리라 생각한다.   
예를 들면 관광지는 지역별로 음식점이나 축제 , 숙박에 관련하여 정보를 정리하여 분류 하였으며 다양한 위기상황 속 필요한 대피소나 병원, 그리고 화장실 등의 내용으로 설계 하였으며  지속적인 피드백을 통하여 부족한 점은 개선하고 계속해서 업데이트 하여  최종적인 우리 프로젝트의 목표는 사용자의 위치, 시간 , 상황에 꼭 맞는 맞춤 서비스를 제공하여 따로 검색 할 필요도 없이 사용자의 패턴을 분석하여 사용자가 필요로 하는 다양한 서비스를 제공 할 수 있도록 할 것이다.   

## 시스템 설명
Flutter를 이용하여 App를 개발하였으며, 사용자가 사용하기 편리한 인터페이스를 제공한다.
데이터를 JSON 형태로 관리하며 데이터를 받아와서 서버를 이용하여 데이터베이스에 저장한다.   
저장한 데이터베이스는 사용자의 필요로 의해 정보를 불러온다.   
사용자는 4개의 항목 ( 병원, 관광지, 대피소, 화장실)을 선택 할 수 있는데, 관광지 항목에선 특정 지역의 관광지와 그에 맞는 관광 정보의 목록 및 정보 예를 들면, 관광지에 들어가면 지역 선택, 구 선택을 할 수 있고, 그 사람 다음으론 축제의 일정이나, 숙소, 음식점 등에 관한 정보를 알 수 있으며, 정보에 대한 상세 위치도 알 수 있다.   
다음으로 병원 목록에선 병원의 정보를 대피소 목록에선 대피소의 목록을 화장실 목록에선 화장실에 대한 자세한 정보를 볼 수 있다.   
추가로 사용자의 필요에 따라 더 많은 기능을 추가 구현할 예정이다.   

## 시스템 범위
- 앱 사용자는 사용하고자 하는 기능(병원, 관광지, 대피소, 화장실) 을 선택할 수 있다.
- 앱 사용자는 지역 및 시군구의 상세 정보를 확인 할 수 있다.
- 앱 사용자는 화장실 상세 정보를 확인 할 수 있다. 
- 앱 사용자는 의료기관 상세 정보를 확인 할 수 있다.
- 앱 사용자는 대피소 상세 정보를 확인 할 수 있다.   

## 특징
 기능( 병원, 관광지, 대피소 , 화장실)을  등록, 수정, 삭제한다.
- 앱은 사용자가 앱의 병원 기능을 선택하면 서버로부터 DB에 의료기관 정보 리스트를 요청한다.
- 앱은 사용자가 앱의 대피소 기능을 선택하면 서버로부터 DB에 대피소 정보 리스트를 요청한다.
- 앱은 사용자가 앱의 화장실 기능을 선택하면 서버로부터 DB에 화장실 정보 리스트를 요청한다.
- 앱은 사용자가 앱의 관광지 기능을 선택하면 서버로부터 DB에 관광지 정보 리스트를 요청한다.
- 앱이 서버와 연결실패 때 오류 메시지를 보여준다.   

## Screen Shot
<div>
<img width="200" src="https://user-images.githubusercontent.com/44607643/103197598-b5f2b100-4929-11eb-97a8-0a2232e2fa70.png">
<img width="200" src="https://user-images.githubusercontent.com/44607643/103197641-d0c52580-4929-11eb-877f-0b3b14a04a12.png">
<img width="200" src="https://user-images.githubusercontent.com/44607643/103197652-d458ac80-4929-11eb-98b6-78bd2d1fcf4a.png">
</div>
<div>
<img width="200" src="https://user-images.githubusercontent.com/44607643/103197656-d6bb0680-4929-11eb-8ca8-c6060922db0d.png">
<img width="200" src="https://user-images.githubusercontent.com/44607643/103197666-d884ca00-4929-11eb-8f17-d604cc522f1a.png">
<img width="200" src="https://user-images.githubusercontent.com/44607643/103197669-da4e8d80-4929-11eb-870d-587aaa2dc459.png">
</div>
<div>
<img width="200" src="https://user-images.githubusercontent.com/44607643/103197673-dc185100-4929-11eb-8c0e-35169487cda7.png">
<img width="200" src="https://user-images.githubusercontent.com/44607643/103197676-dde21480-4929-11eb-8790-4da2af3bdcdf.png">
<img width="200" src="https://user-images.githubusercontent.com/44607643/103197681-dfabd800-4929-11eb-8271-d6cf4b8a1e81.png">
</div>
<div>
<img width="200" src="https://user-images.githubusercontent.com/44607643/103197684-e0dd0500-4929-11eb-9adb-cbb92bda4cf3.png">
<img width="200" src="https://user-images.githubusercontent.com/44607643/103197689-e2a6c880-4929-11eb-9f21-64642db0a130.png">
<img width="200" src="https://user-images.githubusercontent.com/44607643/103197694-e4708c00-4929-11eb-9796-bc68d1973605.png">
</div>
<div>
<img width="200" src="https://user-images.githubusercontent.com/44607643/103197698-e63a4f80-4929-11eb-9cc2-dbc73808e976.png">
</div>   
