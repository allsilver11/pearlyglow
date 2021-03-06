<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- main.jsp -->
<style>
/*
	#mainTop{width:1400px;height:450px;background-color: blue;}
	#menu{width:200px;height:400px;float: left;display:none;background-color: yellow;}
	#mainSlide{width:1200px;height:400px;float: left;background-color: lightgreen;position:absolute;overflow:hidden;
	z-index: 200;}
	#imgDiv{width:6025px;height:400px;float: left;background-color: lightgreen;position:absolute;
	z-index: 201;}
	.slideImg{width:1200px;height:400px;}
	#category{width:1200px;height:450px;background-color: grey;}
	#categoryLeft{width:780px;height:400px;background-color: red;float: left;}
	#categoryRight{width:420px;height:400px;background-color: green;float: left;}
	#categoryRightTop{width:420px;height:200px;background-color: orange;}
	#categoryRightTop div{width:190px;height:190px;margin-left:20px;float:left;background-color: lightgreen;}
	#categoryRightBottom{width:420px;height:200px;background-color: purple;}
	#categoryRightBottom div{width:190px;height:190px;margin-top:10px;margin-left:20px;float:left;background-color: lightblue;}
	#mdPick{width:1200px;height:800px;background-color: green;}
	#mainItemList{margin:auto;text-align: center;}
	#mainItemList td{padding:20px;background-color: lightgreen;}
	#mainItemList a{color:black;text-decoration: none; font-weight:bold;}
	#instagramBanner{width:1200px;height:400px;background-color: lightgreen;}
	#instagramRecommends{margin:auto;}
	#instagramRecommends td{padding:10px;background-color: lightblue;}
	*/
	#mainTop {width: 1400px;height: 450px;}
	/* 	#menu{width:200px;height:400px;float: left;display:none;} */
	#mainSlide {width: 1200px;height: 400px;float: left;position: relative;overflow: hidden;}
	#imgDiv {width: 6025px;height: 400px;float: left;position: relative;}
	.slideImg {width: 1200px;height: 400px;}
	#category {width: 1200px;height: 450px;}
	#categoryLeft {width: 780px;height: 400px;float: left;}
	#categoryRight {width: 420px;height: 400px;float: left;}
	#categoryRightTop {width: 420px;height: 200px;}
	#categoryRightTop div {width: 190px;height: 190px;margin-left: 20px;float: left;}
	#categoryRightBottom {width: 420px;height: 200px;}
	#categoryRightBottom div {width: 190px;height: 190px;margin-top: 10px;margin-left: 20px;float: left;}
	#mdPick {width: 1200px;height: 800px;}
	#mainItemList {margin: auto;text-align: center;}
	#mainItemList td {padding: 20px;}
	#mainItemList a {color: black;text-decoration: none;font-weight: bold;}
	#instagramBanner {width: 1200px;height: 400px;}
	#instagramRecommends {margin: auto;}
	#instagramRecommends td {padding: 10px;}
	#quickView_wrap {width: 800px;height: 500px;position: relative;z-index: 999;top: -1100px;left: 200px;background-color: white;overflow: auto;display: none;}
   #quickView_wrap #image1{width: 350px; height:100%; float: left; background-color: white;}
   #quickView_wrap #detail{width: 50%; background-color: white;float: right;}
   #quickView_wrap #image1 #img1{ width: 350px;  } 
   #quickView_wrap #detail #title{width: 100%; background-color: white;} 
   #quickView_wrap #detail #nbso{width: 100%; background-color: white;} 
   #quickView_wrap #detail #nbso li{list-style: none;display: inline-block;font-size: 10px;border:1px solid black;}
   #quickView_wrap #detail #description{width: 100%;height: 90%; background-color: white; margin-top: 20px;} 
   #quickView_wrap #detail #description #text{width: 100%;height: 100%; background-color: white;}
   #quickView_wrap #detail #description #text #detailText {height: 70%;}
   #quickView_wrap #detail #description #text #optionText {height: 30%;}
   #quickView_wrap #detail #description #text p{font-size: 16px; } 
   #quickView_wrap #detail #description #text span{font-size: 13px; color: gray;} 
   #quickView_wrap #detail #description #option{width: 100%;height: 30%; background-color: white;} 
   #quickView_wrap #detail #description #option #buy{border-radius: 8px; background-color: #333333;color:white;border:none ;width: 150px;height: 40px;} 
   #quickView_wrap #detail #description #option #wish{border-radius: 8px; background-color: white;border:1px solid gray;width: 150px;height: 40px;} 
   #quickView_wrap #detail #description #option #plus{border-radius:4px; background-color: white;border: 1px solid lightgray;width: 30px;height: 44px;} 
   #quickView_wrap #detail #description #option #count{border-radius:4px; background-color: white;border: 1px solid lightgray;width: 80px;height: 40px;} 
   #quickView_wrap #detail #description #option #minus{border-radius:4px; background-color: white;border: 1px solid lightgray;width: 30px;height: 44px;} 

#main_body {
	display: white;
}
</style>
<%
	String ppage = request.getParameter("ppage");
if (ppage == null) {
	ppage = "quickView.jsp";
}
%>
<div>
	<div id="main_section">
		<div id="mainTop">
			<div id="mainSlide">
				<div id="imgDiv">
					<img src="images/001.png" class="slideImg"
						onclick="location.href =''"> <img src="images/002.png"
						class="slideImg" onclick="location.href =''"> <img
						src="images/003.png" class="slideImg" onclick="location.href =''">
					<img src="images/004.png" class="slideImg"
						onclick="location.href =''"> <img src="images/001.png"
						class="slideImg" onclick="location.href =''">
				</div>
			</div>
		</div>
		<div id="category">
			<div id="categoryLeft"
				onclick="location.href ='${pageContext.request.contextPath }/index.jsp?spage=2020FW.jsp'">
				<img src="images/011.png" style="width: 780px; height: 400px;">
				<span
					style="position: relative; left: 300px; top: -230px; color: white; font-size: 40px; font-weight: bold; disabled: disabled;">2020
					FW</span>
			</div>
			<div id="categoryRight">
				<div id="categoryRightTop">
					<div id="categoryRTL"
						onclick="location.href ='${pageContext.request.contextPath }/itemListController?type=earring'">
						<img src="images/021.png" style="width: 190px; height: 190px;">
						<span
							style="position: relative; left: 60px; top: -110px; color: white; font-size: 14px; font-weight: bold;">EARRING</span>
						<span
							style="position: relative; left: -5px; top: -85px; color: white; font-size: 14px;">collection</span>
					</div>
					<div id="categoryRTR"
						onclick="location.href ='${pageContext.request.contextPath }/itemListController?type=bracelet'">
						<img src="images/022.png" style="width: 190px; height: 190px;">
						<span
							style="position: relative; left: 60px; top: -110px; color: white; font-size: 14px; font-weight: bold;">BRACELET</span>
						<span
							style="position: relative; left: -10px; top: -85px; color: white; font-size: 14px;">collection</span>
					</div>
				</div>
				<div id="categoryRightBottom">
					<div id="categoryRBL"
						onclick="location.href ='${pageContext.request.contextPath }/itemListController?type=necklace'">
						<img src="images/023.png" style="width: 190px; height: 190px;">
						<span
							style="position: relative; left: 60px; top: -110px; color: white; font-size: 14px; font-weight: bold;">NECKLACE</span>
						<span
							style="position: relative; left: -10px; top: -85px; color: white; font-size: 14px;">collection</span>
					</div>
					<div id="categoryRBR"
						onclick="location.href ='${pageContext.request.contextPath }/itemListController?type=ring'">
						<img src="images/024.png" style="width: 190px; height: 190px;">
						<span
							style="position: relative; left: 80px; top: -110px; color: white; font-size: 14px; font-weight: bold;">RING</span>
						<span
							style="position: relative; left: 25px; top: -85px; color: white; font-size: 14px;">collection</span>
					</div>
				</div>
			</div>
		</div>
		<div id="mdPick">
			<table id="mainItemList" width="800">
				<caption
					style="height: 20px; padding: 30px; font-weight: bold; font-size: 20px; text-align:center; caption-side: top;margin-bottom:20px;">MD's
					PICK</caption>
				<c:set var="i" value="0" />
				<tr>
					<c:forEach var="vo" items="${list }">
						<td>
							<div>
								<img src="${vo.iThumbnail }"
									onclick="location.href ='${pageContext.request.contextPath }/detailInfoController?iNum=${vo.iNum }'"
									style="border: 1px solid grey; width: 220px; height: 220px;">
								<a href="javascript:popup()"
									style="position: relative; top: -30px;"
									onclick="quickBuy(${vo.iNum})">Quick View</a><br> <a
									href="${pageContext.request.contextPath }/detailInfoController?iNum=${vo.iNum }">${vo.iName }</a><br> <span><fmt:formatNumber value="${vo.price }" pattern="#,###,###"/>???</span>
							</div>
						</td>
						<c:set var="i" value="${i+1 }" />
						<c:if test="${i==3 }">
							</tr>
							<tr>
						</c:if>
					</c:forEach>
				</tr>
			</table>
		</div>
		<div id="instagramBanner">
			<table id="instagramRecommends" width="800">
				<caption
					style="height: 50px; padding: 30px; font-weight: bold; font-size: 20px;text-align:center;caption-side: top;margin-bottom:60px;">
					#pearlyglow<br> recommends
				</caption>
				<tr>
					<c:forEach var="i" begin="1" end="5">
						<td>
							<div>
								<img src="images/04${i }.png" onclick="location.href =''"
									style="width: 180px; height: 180px;"> <span
									style="position: relative; left: 5px; top: -35px; color: white;">@pearlyglow</span>
							</div>
						</td>
					</c:forEach>
				</tr>
			</table>
		</div>
	</div>
	<div id="quickView_wrap">
		<div id="image1">
			<img alt="????????????" id="img1">
		</div>
		<div id="detail">
			<div id="title">
				<h4></h4>
			</div>
			<div id="nbso">
				<!-- new best soldout -->
				<ul>
					<li>NEW</li>
					<li>BEST</li>
					<li>Sold out</li>
				</ul>
			</div>
			<div id="description">
				<div id="text">
					<div id="detailText"><h6></h6><br><br><p></p><br><p></p><br>
					</div>
					<div id="optionText">
						<span>Gender: </span><br>
						<span>Category:</span><br>
						<span>Color: </span><br>
						<span>Size: / Weight: / Material:</span>
					</div>
				</div>
				<div id="option">
					<input type="button" value="-" onclick="changeM(event);" id="minus"><input
						type="text" name="count" value="1" id="count"><input
						type="button" value="+" onclick="changeP(event)" id="plus">
					<br> <br> <input type="button" value="????????????" id="buy"
						onclick="getForOrderFormController(1)"> <input
						type="button" value="????????????" id="wish" onclick="putBasketResult(1)"><br>
					<span id="resultSpan"></span>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	var i=0;
	var delay=0;
	setInterval(moveMainImg, 2);
	function moveMainImg(){
		var imgDiv=document.getElementById("imgDiv");
		imgDiv.style.left=i+"px";
		delay++;
		if(delay<3000/2){
			
		}else{
			i-=2;
			if(delay==((3000/2)+(1204/2))){
				delay=0;
				
			}
		}
		if(i<-4800){
			i=0;
			delay=0;
		}
	}
	function popup(){
		var quickView_wrap=document.getElementById("quickView_wrap");
		quickView_wrap.style.display="block";
		var main_section=document.getElementById("main_section");
		main_section.style.backgroundColor="#ABABAB";
		main_section.style.opacity="0.5";
		main_section.addEventListener("click", function(e) {
			quickView_wrap.style.display="none";
			main_section.style.backgroundColor="white";
			main_section.style.opacity="1";
			main_section.removeEventListener("click", function() {
			}, false);
		}, false);
		
	}
	
	//?????? + -
	var iCnt=parseInt(document.getElementById("count").value);
	function changeP(e){
		++iCnt;
		count.value=iCnt;
	}
	function changeM(e){
		if(iCnt >1){
			iCnt--;
			count.value=iCnt;
		}
	}
	function quickBuy(iNum){
		var xhr=new XMLHttpRequest();
		xhr.onreadystatechange=function(){
			if(xhr.readyState==4 && xhr.status==200){
				var xml=xhr.responseXML;
				var img1=document.getElementById("img1");
				var iNum=xml.getElementsByTagName("iNum")[0].textContent;
				var buy=document.getElementById("buy");
				var wish=document.getElementById("wish");
				buy.onclick=function(){
					getForOrderFormController(iNum);
				};
				wish.onclick=function(){
					putBasketResult(iNum);
				};
// 				img1.setAttribute('src','images/001.png');
				img1.src=xml.getElementsByTagName("iThumbnail")[0].textContent;
				var iName=document.getElementById("title").nextElementSibling;
				iName.innerHTML=xml.getElementsByTagName("iName")[0].textContent;
				var detailText=document.getElementById("detailText").childNodes;
				var price=xml.getElementsByTagName("price")[0].textContent;
				console.log(price);
				detailText.item(0).innerHTML="?????? : "+price+"???";
				detailText.item(3).innerHTML=xml.getElementsByTagName("kDetail")[0].textContent;
				detailText.item(5).innerHTML=xml.getElementsByTagName("eDetail")[0].textContent;
				var optionText=document.getElementById("optionText").childNodes;
				optionText.item(0).innerHTML="Gender: "+xml.getElementsByTagName("iGender")[0].textContent;
				optionText.item(2).innerHTML="Category: "+xml.getElementsByTagName("iCategory")[0].textContent;
				optionText.item(4).innerHTML="Color: "+xml.getElementsByTagName("color")[0].textContent;
				optionText.item(6).innerHTML="Size: "+xml.getElementsByTagName("iSize")[0].textContent+" / Weight: "+xml.getElementsByTagName("weight")[0].textContent+" / material: "+xml.getElementsByTagName("kDetail")[0].textContent;
			}
		};
		xhr.open('get','${pageContext.request.contextPath}/QuickView?iNum='+iNum,true);
		xhr.send();
	}
	
	// ???????????? json
	function putBasketResult(iNum) {
		var sbCnt = document.getElementById("count").value;
		console.log(iNum);
		console.log(sbCnt);
		var xhr = new XMLHttpRequest();
		xhr.onreadystatechange = function () {
			if (xhr.readyState == 4 && xhr.status == 200) {
				var json = JSON.parse(xhr.responseText);
				var resultSpan = document.getElementById("resultSpan");
				if (json.result == 'true') {
					resultSpan.innerHTML = "??????????????? ?????? ??????!";
				} else {
					resultSpan.innerHTML = "?????? ????????? ?????? ??????????????? ?????? ??????..";
				}
				
				
			}
		}
		xhr.open('get', '${pageContext.request.contextPath}/basketController?iNum='+iNum+'&sbCnt=' + sbCnt, true);
		xhr.send();
	}
	function getForOrderFormController(iNum) {
		var sbCnt = document.getElementById("count").value;
		location.href = "${pageContext.request.contextPath}/orderFormController?iNum="+iNum+"&sbCnt=" + sbCnt + "&price=${vo.price}";
	}
</script>