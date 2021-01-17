##### 2.1 인코딩의 이해와 R에서 UTF-8 설정하기


### 2.1.1 인간과 컴퓨터 간 번역의 시작, ASCII


# R에서 스크립트를 한글로 작성해 저장한 경우 이를 다시 불러올때 오류가 뜨거나 읽을수 없는 문자로 나타나는 경우 : 한글 인코딩 때문에 발생.


### 2.1.2 한글 인코딩 방식의 종류


# 이 책에서는 한글을 인코딩하는 데 쓰이는 EUC-KR 과 CP949, UTF-8 정도만 이해하기로 한다.

# 완성형
# EUC-KR : 가장 대표적인 한글 인코딩
# CP949 : EUC-KR을 보완해서 마이크로소프트가 도입한 방법(윈도우 기본 코딩)

# 조합형
# UTF-8 : 한글 뿐 아니라 다양한 언어에 적용 가능(전 세계 웹페이지의 대부분을 구성)


### 2.1.3 R에서 UTF-8 설정하기





##### 2.2 웹의 동작 방식

# 클라이언트 : 소프트웨어
# 서버 : 웹사이트와 앱을 저장하는 컴퓨터
# 요청과 응답

### 2.2.1 HTTP

# HTTP(HyperText Transfer Protocol)

# GET 방식과 POST방식





##### 2.3 HTML과 CSS

# HTML : 웹페이지의 제목, 단락, 목록 등 레이아웃을 잡아주는데 쓰이는 대표적인 마크업 언어

# CSS : HTML을 통해 잡혀진 뼈대에 글자의 색상이나 폰트. 배경색, 배치 등 화면을 꾸며주는 역할




### 2.3.1 HTML 기본 구조

# HTML은 크게 메타 데이터를 나타내는 head와 본문을 나타내는 body로 나누어집니다. head에서 title은 웹페이지에서 나타나는 제목을 나타내며 body 내에는 본문에 들어갈 각종 내용들이 포함되어 있습니다.

# <html>
# <head>
# <title>Page Title</title>
# </head>
# 
# <body>
# <h2> This is page heading </h2>
# <p> THis is first paragraph text </p>
# </body>
# </html>



### 2.3.2 태그와 속성

# HTML 코드는 태그와 속성, 내용으로 이루어져 있습니다. 크롤링한 데이터에서 특정 태그의 데이터만을 찾는 방법, 특정 속성의 데이터만을 찾는 방법, 뽑은 자료에서 내용만을 찾는 방법 등 내용을 찾는 방법이 모두 다르기 떄문에 태그와  속성에 대해 좀 더 자세히 살펴보겠습니다.

# 태그 : 꺽쇠(<>)로 감싸져 있는 부분, 여는태그<> 가 있으면 반드시 이를 닫는 태그인 </>가 쌍으로 있어야 한다.

# 속성 : 해당 태그에 대한 추가적인 정보 제공

# 내용 : 우리가 눈으로 보는 텍스트 부분




### 2.3.3 h 태그와 p 태그

# h태그 : 폰트의 크기 : 1 ~ 6(반비례)

# p태그 : 문단생성
 
# <html>
# <body>
#   
# <h1>Page heading: size 1</h1>
# <h2>Page heading: size 2</h2>
# <h3>Page heading: size 3</h3>
#   
# <p>Quant Cookbook</p>
# <p>By Henry</p>
#   
# </body>
# </html>



### 2.3.4 리스트를 나타내는 ul 태그와 ol 태그

# ul과 ol태그는 리스트(글머리 기호)를 만들때 사용됩니다.

# ul : 순서가 없는 리스트(unordered list)
# ol : 순서가 있는 리스트(ordered list)


# <html>
# <body>
#   
# <h2> Unordered List</h2>
# <ul>
# <li>Price</li>
# <li>Financial Statement</li>
# <li>Sentiment</li>
# </ul>  
#   
# <h2> Ordered List</h2>
# <ol>
# <li>Import</li>
# <li>Tidy</li>
# <li>Understand</li>
# <li>Communicate</li>
# </ol> 
#   
# </body>
# </html>




### 2.3.5 table 태그

# table태그는 표를 만드는 태그입니다.

# tr태그 : 각 행을 의미
# th 혹은 td태그 : 각 셀의 구분

# <html>
# <body>
#   
# <h2>Major Stock Indices and US ETF</h2>
#   
# <table>
# <tr>
# <th>Country</th>
# <th>Index</th>
# <th>ETF</th>
# </tr>
# <tr>
# <td>US</td>
# <td>S&P 500</td>
# <td>IVV</td>
# </tr>
# <tr>
# <td>Europe</td>
# <td>Euro Stoxx 50</td>
# <td>IEV</td>
# </tr>
# <tr>
# <td>Japan</td>
# <td>Nikkei 225</td>
# <td>EWJ</td>
# </tr>
# <tr>
# <td>Korea</td>
# <td>KOSPI 200</td>
# <td>EWY</td>
# </tr>
# </table>
#   
# </body>
# </html>



### 2.3.6 a태그와 src태그 및 속성

# a 태그와 src 태그는 다른 태그와는 다르게, 혼자 쓰이기보다는 속성과 결합해 사용됩니다.

# a 태그는 href속성과 결합해 다른 페이지의 링크를 걸 수 있습니다.
# a태그 뒤 href속성의 속성값으로 연결하려는 웹페이지 주소를 입력한 후 내용을 입력하면, 내용 텍스트에 웹페이지의 링크가 추가됨

# src 태그는 img 속성과 결합해 이미지를 불러옵니다.
# img태그 뒤 src 속성의 속석값에는 불려오려는 이미지 주소를 입력하며, width 속성과 height 속성을 통해 이미지의 가로세로길이를 조절할 수 있음.

# <html>
# <body>
#   
# <h2>a tag & href attribute</h2>
# <p>HTML links are defined with the a tag.
# The link address is specified in the href attribute:</p>
#   
# <a href="https://henryquant.blogspot.com/">Henry's Quantopia</a>
# 
# <h2>img tag & src attribute</h2>
# <p>HTML images are defined with the img tag,
# and the filename of the image source is
# specified in the src attribute:</p>
# 
# <img src="https://cran.r-project.org/Rlogo.svg",
# width="180",height="140">
# 
# </body>
# </html>



### 2.3.7 div태그

# div태그 : 화면의 전체적인 틀(레이아웃)을 만들 때 주로 사용하는 태그이며 단독사용이 가능하고 꾸밈을 담당하는 style속성과 결합되어 사용되기도 함


# <html>
# <body>
#   
# <div style="background-color:black;color:white">
#   <h5>First Div</h5>
#   <p>Black backgrond, White Color</p>
# </div> 
#     
# <div style="background-color:yellow;color:red">
#   <h5>Second Div</h5>
#   <p>Yellow backgrond, Red Color</p>
# </div> 
#       
# <div style="background-color:blue;color:grey">
#   <h5>Second Div</h5>
#   <p>Blue backgrond, Grey Color</p>
# </div> 
#         
# </body>
# </html>



### 2.3.8 CSS

# CSS : 웹 페이지를 꾸며주는 역할
# head에서 각 태그에 CSS 효과를 입력하면 본문의 모든 해당 태그에 CSS효과가 적용

# 이처럼 웹 페이지를 꾸미기 위해 특정 요소에 접근하는 것을 셀렉터(Selector)라고 한다.

 
# <html>
# <head>
# <style>
# body {background-color: powderblue;}
# h4   {color: blue;}
# </style>
# </head>
# <body>
#   
# <h4>This is a heading</h4>
# <p>This is a first paragraph.</p>
# <p>This is a second paragraph.</p>
#   
# </body>
# </html>


# head 태그 사이에 여러 태그에 대한 CSS 효과가 정의되었습니다. 먼저 body의 전체 배경 색상을 powderblue로 설정했으며, h4 태그의 글자 색상은 파란색(blue)으로 설정했습니다. body 태그 내에서 style에 태그를 주지 않더라도, CSS 효과가 모두 적용되었음이 확인됩니다.



### 2.3.9 클래스와 id

# CSS를 이용하면 본문의 모든 태그에 효과가 적용되므로, 특정한 요소에만 동일한 효과를 적용할 수 없다. 클래스 속성을 이용하면 동일한 이름을 가진 클래스에는 동일한 효과가 적용된다.


# <html>
# <style>
# .index {
#   background-color: tomato;
# color: white;
# padding: 10px;
# } 
# .desc {
#   background-color: moccasin;
#   color: black;
#   padding: 10px;
# } 
# </style>
#   
# <div>
# <h2 class="index">S&P 500</h2>
# <p class="desc"> Market capitalizations of 500 large companies
# having common stock listed on the NYSE, NASDAQ,
# or the Cboe BZX Exchange</p>
# </div>
#   
# <div>
# <h2>Dow Jones Industrial Average</h2>
# <p>Value of 30 large, publicly owned companies
# based in the United States</p>
# </div>
#   
# <div>
# <h2 class="index">NASDAQ Composite</h2>
# <p class="desc">The composition of the NASDAQ Composite is
# heavily weighted towards information technology companies</p>
# <div>
# </html>


# 셀렉터를 클래스에 적용할 때는 클래스명 앞에 마침표(.)를 붙여 표현합니다. 위 예제에서 index 클래스는 배경 색상이 tomato, 글자 색상은 흰색, 여백은 10px로 정의되었습니다. desc 클래스는 배경 색상이 moccasin, 글자 색상은 검은색, 여백은 10px로 정의되었습니다. 본문의 첫 번째(S&P 500)와 세 번째(NASDAQ Composite) 레이아웃의 h2 태그 뒤에는 index 클래스를, p 태그 뒤에는 desc 클래스를 속성으로 입력했습니다. 따라서 해당 레이아웃에만 CSS 효과가 적용되며, 클래스 값이 없는 두 번째 레이아웃에는 효과가 적용되지 않습니다.


# id 또한 이와 비슷한 역할을 하며, HTML 내에서 여러개의 클래스가 정의될 수 있는 반면, id는 단 하나만 사용하기를 권장함



# <html>
# <head>
# <style>
#   
# /* Style the element with the id "myHeader" */
# #myHeader {
#   background-color: lightblue;
#   color: black;
#   padding: 15px;
#   text-align: center;
# }
# </style>
# </head>
# <body>
#   
# <!-- A unique element -->
# <h1 id="myHeader">My Header</h1>
#     
# </body>
# </html>


# 셀렉터를 id에 적용할 때는 클래스명 앞에 샵(#)를 붙여 표현하며, 페이지에서 한 번만 사용된다는 점을 제외하면 클래스와 사용 방법이 거의 동일합니다. 클래스나 id 값을 통해 원하는 내용을 크롤링하는 경우도 많으므로, 각각의 이름 앞에 마침표(.)와 샵(#) 을 붙여야 한다는 점을 꼭 기억하기 바랍니다.






##### 2.4 파이프 오퍼레이터( %>% )

# 간단한 예제를 통한 파이프 오퍼레이터 사용법 살펴보기

x = c(0.3078, 0.2577, 0.5523, 0.0564, 0.4685,
      0.4838, 0.8124, 0.3703, 0.5466, 0.1703)

# 우리가 원하는 과정은 다음과 같습니다.
 
# 1. 각 값들의 로그값을 구할 것(log)
# 2. 로그값들의 계차를 구할 것(diff)
# 3. 구해진 계차의 지수값을 구할 것(exp)
# 4. 소수 둘째 자리까지 반올림할 것(round)

# 단계별 함수 적용
x1 = log(x)
x2 = diff(x1)
x3 = exp(x2)
round(x3, 2)

# 괄호를 통해 감싸기
round(exp(diff(log(x))), 2)

# 파이프 연산자 사용
require(magrittr)
x %>% log() %>% diff() %>% exp() %>% round(., 2)

# 마지막으로 파이프 오퍼레이터를 사용하는 방법입니다. 코드도 짧으며 계산 과정을 한눈에 파악하기도 좋습니다. 맨 왼쪽에는 원하는 변수를 입력하며, %>% 뒤에는 차례대로 계산하고자 하는 함수를 입력합니다. 변수의 입력값을 ()로 비워둘 경우, 오퍼레이터의 왼쪽에 있는 값이 입력 변수가 됩니다. 반면 round()와 같이 입력값이 두 개 이상 필요하면 마침표(.)가 오퍼레이터의 왼쪽 값으로 입력됩니다.






##### 2.5 오류에 대한 예외처리

# 크롤링을 이용해 데이터를 수집할 때 일반적으로 for loop 구문을 통해 수천 종목에 해당하는 웹 페이지에 접속해 해당 데이터를 읽어온다. 그러나 특정 종목에 해당하는 페이지가 없거나, 단기적으로 접속이 불안정할 경우 오류가 발생해 루프를 처음부터ㅏ 다시 실행해야 하는 번거로움이 있다. tryCatch() 함수를 이용하면 예외처리, 즉 오류가 발생할 경우 이를 무시하고 넘어갈 수 있다.

# tryCatch() 함수의 구조

result = tryCatch({
  expr
}, warning = function(w) {
  warning-handler-code
}, error = function(e) {
  error-handler-code
}, finally = {
  cleanup-code
})

# expr : 실행하고자 하는 코드
# warning : 경고
# warning-handler-code : 경고 발생시 실행할 구문
# error: 오류
# error-handler-code : 오류 발생시 실행할 구문
# finally : 오류의 여부와 관계 없이 무조건 수행할 구문(생략가능)


number = data.frame(1,2,3,"4", 5, stringsAsFactors = FALSE)
str(number)

for (i in number) {
  print(i^2)
}

# 4는 문자이기 때문에 제곱을 할 수 없어 오류가 발생됨
# tryCatch() 함수를 사용하면 이처럼 오류가 발생하는 루프를 무시하고 다음 루프로 넘어갈 수 있게 된다.

for (i in number) {
  tryCatch({
    print(i^2)
  }, error = function(e) {
    print(paste('Error:', i))
  })
}

# expr 부분 : print(i^2)
# error-handler-code 부분 : print(paste('Error:',i))

