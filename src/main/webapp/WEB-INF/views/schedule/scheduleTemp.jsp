<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/reset.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/basic.css">

  
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/schedule/jui/jui.min.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/schedule/lib/animate.min.css"/>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/schedule/lib/main.css"/>
<link href='${pageContext.request.contextPath}/resources/schedule/fullcalendar/fullcalendar.css' rel='stylesheet' />
<link href='${pageContext.request.contextPath}/resources/schedule/fullcalendar/fullcalendar.print.css' rel='stylesheet' media='print' />


<script src="${pageContext.request.contextPath}/resources/SE2/js/HuskyEZCreator.js" type="text/javascript" charset="utf-8"></script>
<%-- <script src='${pageContext.request.contextPath}/resources/schedule/lib/jquery.min.js'></script> --%>
<script src='${pageContext.request.contextPath}/resources/schedule/lib/jquery-ui.custom.min.js'></script>
<script src='${pageContext.request.contextPath}/resources/schedule/fullcalendar/fullcalendar.min.js'></script>
<script src="${pageContext.request.contextPath}/resources/schedule/lib/niee-canvas-chart003.js"></script>
<script src="${pageContext.request.contextPath}/resources/schedule/lib/ajaxfileupload.js"></script>
<script src="${pageContext.request.contextPath}/resources/schedule/js/base.js"></script>
<script src="${pageContext.request.contextPath}/resources/schedule/js/core.js"></script>
<script src="${pageContext.request.contextPath}/resources/schedule/js/ui/button.js"></script>
<script src="${pageContext.request.contextPath}/resources/schedule/js/ui/combo.js"></script>
<script src="${pageContext.request.contextPath}/resources/schedule/js/ui/datepicker.js"></script>
<script src="${pageContext.request.contextPath}/resources/schedule/js/ui/dropdown.js"></script>
<%-- <script src="${pageContext.request.contextPath}/resources/schedule/js/ui/modal.js"></script> --%>
<%-- <script src="${pageContext.request.contextPath}/resources/schedule/js/uix/table.js"></script>
<script src="${pageContext.request.contextPath}/resources/schedule/js/uix/tree.js"></script> --%>



<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

<title>스케줄메인</title>


<style type="text/css">

a{
	color:black;
}


.clear{
	clear: both;
}

.main_section {
	min-width: 1460px;
	width: 100%;
	height: auto;
	min-height: 1000px;
	position: relative;
	margin-top: 30px;
}


.schedule_header {
    height: 142px;
    padding: 30px;
    border: 1px solid #e6e6e6;
    margin-bottom: 30px;
    background-color: white;
}


#header_ttt {
   font-size: 24px;
   font-weight: bolder;
   margin-bottom: 20px;
}


.DateMius{
   font-size: 14px;
   background-color: #07b481;
   vertical-align: middle;
   margin-top: 5px;
   float: right;
   height: 20px;
   border-radius: 4px;
   color: white;
   line-height: 15px;
   padding: 2px 3px;
}

/* 추가 */
#header_t {
   font-size: medium;
   font-weight: lighter;
   color: #666;
}

/* 추가  */
#header_t span:last-child{
   font-size: 20px;
   vertical-align: middle;
   margin-top: 5px;
   margin-right:50px;
   float: right;
   height: 32px;
   line-height: 20px;

}
.appCount{
   color: black;
   font-size: 22px;
}
.contents {
   width: 1260;
   height: 2000px;
   /* min-height: 1200px;
   max-height: 2700px; */
}
.clean{
   background-color: #f2f2f2;
   height: 15px;
   width: 100%;
}



#main_wrap {
	width: 1152px;
	height: auto;
	margin: 0 auto;
}




/* Style the tab content */

.tabContentWrap{
	width: 992px;
	height: auto;
	float: left;
	background: white;
}


.tabcontent {
	display: none;
	background-color: #f2f2f2;
	/* padding:0px 12px; */
	/* color: #fff; */
	color: black;
}

.tabcontent.current {
	display: block;
}














.sidebar {
    display: inline;
    float: left;
    margin-right: 10px;
    width: 150px;
}
.sidebar .sidebar-nav ul {
    list-style: none;
    border: 1px solid #dedede;
    border-radius: 3px;
    border-bottom-width: 2px;
    padding: 4px 8px;
    background-color: #fff;
}
.sidebar .sidebar-nav ul li {
    height: 48px;
    padding: 4px 0;
}
.sidebar .sidebar-nav ul li .taba{
    border-radius: 2px;
    display: block;
    padding: 10px 15px;
    font-size: 14px;
    color: #999;
   /*  width: 100%; */
}

.tab>.current>.taba {
    background-color: #2099bb !important;
    color: #ffffff !important;
}

</style>



<!-- 1뷰 -->

<style type="text/css">


#firstView_main_wrap{
	width: 1032px;
	height: auto;
	margin: 0 auto;
	background: gray;
	
}


/* sublayout 시작 */
/* .tw-sub-layout {
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  display: flex;
  flex-direction: column;
}
.tw-sub-layout__header {
  position: relative;
  flex: none;
  z-index: 2;
} */
.tw-sub-layout__content {
	/* width: 1152px; */
}

/* sublayout 끝 */

/* 첫째행 */




.tw-project-analytics-status {
    display: flex;
}


.tw-project-analytics-status > div {
    flex-grow: 1;
    padding: 0 20px;
    border-width: 0 1px 0 0;
    border-style: solid;
    border-color: #d4d6db;
}

.tw-project-analytics-status > div:first-child {
    padding-left: 0;
}

.tw-project-analytics-status > div:last-child {
    padding-right: 0;
    border-right-width: 0;
}

.tw-project-analytics-status__head {
    color: #696f7a;
    font-size: 14px;
}

.tw-project-analytics-status__text {
    color: #464c59;
    font-weight: 600;
    font-size: 18px;
}

.tw-add-date-panel {
    display: flex;
    flex-direction: row;
}

.tw-project-analytics-status .add-button {
    margin-top: 5px;
    width: 28px;
    height: 28px;
    border-radius: 4px;
    background: #e6e8ec;
    text-align: center;
    font-size: 14px;
}

.tw-project-analytics-status .add-button .tw-icon-add {
    line-height: 27px;
}

.tw-icon-add:before {
    content: "\E602";
}

.tw-project-analytics-status__text.\--plain {
    margin-top: 5px;
}

/* 첫째행 끝  */


/* 설정들? */

.tw-project-analytics-page h3 {
    margin: 0;
    color: #464c59;
    font-weight: 600;
    line-height: initial;
    font-size: 18px;
}
 
/* .tw-project-analytics-overview{
	height: 113px;
	background: white;
}
 */
.tw-project-analytics-overview__head {
    display: flex;
    margin-bottom: 35px;
    color: #696f7a;
}

.tw-project-analytics-overview__head-legends {
    display: flex;
    flex: 1;
    flex-wrap: wrap;
    justify-content: flex-end;
    font-size: 14px;
}

.tw-project-analytics-overview__head-legend {
    display: flex;
    align-self: flex-end;
    align-items: center;
}

.tw-project-analytics-overview__head-legend-text {
    margin: 0 10px;
}

.tw-project-analytics-overview__head-legend strong {
    font-weight: 600;
}

.tw-project-analytics-overview__head .tw-chart-legend__circle {
    display: inline-block;
    margin: 0 0 0 35px;
    border-width: 4px;
    border-style: solid;
}

.tw-project-analytics-overview__bars {
    display: flex;
    height: 40px;
   /*  border-radius: 2px; */
    border: 1px solid #e6e6e6;
    background: #d4d6db;
}

/* 설정들?  */








/* projectAnalysticPage 시작 */
.tw-project-analytics-page {
  /* min-height: 100vh; */
 /*  width: 100%; */
}
.tw-project-analytics-page h3 {
  margin: 0;
  color: #464c59;
  font-weight: 600;
  line-height: initial;
}
.tw-project-analytics-page__project-overview-options {
  margin-top: 5px;
}
.tw-project-analytics-page__container {
  margin: auto;
  /* padding: 20px 0 50px; */
  width: 100%;
  height: 100%;
}
.tw-project-analytics-page__container > div {
  margin: 10px auto;
  padding: 30px 35px;
  /* border-radius: 2px; */
  border: 1px solid #e6e6e6;
  background: #fff;
}

.partOverview{
	height: 500px;
}

.tw-project-analytics-page__container > div:first-child {
  margin-top: 0px;
}

.tw-project-analytics-page__self-centric {
  width: 1944px; /* width: 324px*4 */
  display: flex;
  background: none;
}

.tw-project-analytics-page__self-centric:empty {
  display: none;
}
.tw-project-analytics-page__self-centric > div:first-child {
  margin-left: 0;
}
.tw-project-analytics-page__self-centric > div:last-child {
  margin-right: 0;
}

/* projectAnalysticPage 끝 */





/* projectAnalysticoverview 시작 */
.tw-project-analytics-overview__head {
  display: flex;
  margin-bottom: 35px;
  color: #696f7a;
}
.tw-project-analytics-overview__head-legends {
  display: flex;
  flex: 1;
  flex-wrap: wrap;
  justify-content: flex-end;
  font-size: 14px;
}
.tw-project-analytics-overview__head-legend {
  display: flex;
  align-self: flex-end;
  align-items: center;
}
.tw-project-analytics-overview__head-legend-text {
  margin: 0 10px;
}
.tw-project-analytics-overview__head-legend strong {
  font-weight: 600;
}
.tw-project-analytics-overview__head .tw-chart-legend__circle {
  display: inline-block;
  margin: 0 0 0 35px;
  border-width: 4px;
  border-style: solid;
}
.tw-project-analytics-overview__bars {
  display: flex;
  height: 40px;
 /*  border-radius: 2px; */
  border: 1px solid #e6e6e6;
  background: #d4d6db;
}
.tw-project-analytics-overview__bars > div:first-child {
  border-radius: 2px 0 0 2px;
}
.tw-project-analytics-overview__bars > div:last-child {
  border-radius: 0 2px 2px 0;
}

/* projectAnalysticoverview 끝 */


/* chart따오기 */
.tw-project-analytics-self-centric-chart {
  overflow: hidden;
  box-sizing: border-box;
  margin: 0 5px;
  padding: 15px 15px 0;
  width: 324px;
  /* border-radius: 2px; */
  border: 1px solid #e6e6e6;
  background: #fff;
}
.tw-project-analytics-self-centric-chart__header {
  text-align: center;
}
.tw-project-analytics-self-centric-chart__header__container {
  margin-top: 5px;
}
.tw-project-analytics-self-centric-chart .tw-chart-legend {
  width: 230px; /* 3개일땐230px 4개일땐.... 5개일땐 170px */
  margin-right: 0;
  padding: 0;
  cursor: default;
}
.tw-project-analytics-self-centric-chart .tw-chart-legend__name {
  min-width: initial;
  width: 120px;
}
.tw-project-analytics-self-centric-chart .tw-chart-legend__circle {
  flex-shrink: 0;
}
.tw-project-analytics-self-centric-chart .tw-chart-legend__data {
  width: 60px;
}

/* chart따오기 */

.tw-donut-chart {
    position: relative;
    display: flex;
    flex-wrap: wrap;
    justify-content: space-around;
    padding: 20px 10px 0;
}

.tw-donut-chart__chart-container {
    position: relative;
    display: block;
    flex-shrink: 0;
    width: 200px;
    height: 200px;
}

.tw-donut-chart__title-container {
    position: absolute;
    padding-top: 25%;
    width: 100%;
    text-align: center;
}

.tw-donut-chart__chart {
    z-index: 1;
}

.tw-donut-chart__count {
    color: #464c59;
    font-size: 0.2em;
}

.tw-donut-chart__unit {
    color: #696f7a;
    font-size: 0.08em;
}

.tw-donut-chart__legend {
    margin-top: 10px;
}

.tw-chart-legend {
    display: flex;
    margin-top: 10px;
    margin-right: 10px;
    margin-bottom: 15px;
    padding: 0 10px;
    border-radius: 4px;
    opacity: 1;
    cursor: pointer;
    transition: 0.2s all ease-out;
}

.tw-chart-legend__name.\--has-data {
    overflow: hidden;
    width: calc(100% - 40px);
    /* width: 150px; */
    text-overflow: ellipsis;
}

.tw-chart-legend__name {
    display: inline-block;
    align-items: center;
}

.tw-chart-legend__circle {
    display: inline-block;
    width: 5px;
    height: 5px;
    border-radius: 50%;
}

.tw-chart-legend__text {
    display: inline-block;
    margin-left: 5px;
    color: #696f7a;
    font-size: 14px;
}

.tw-chart-legend__data {
    color: #696f7a;
    font-size: 14px;
}

.tw-chart-legend__value {
    padding-right: 5px;
    font-weight: 600;
}






.tw-tasklist-stats-panel__header {
    display: flex;
    margin-bottom: 10px;
}

.tw-tasklist-stats-panel__spacer {
    flex: 1;
}

.tw-chart-legend.\--compact {
    display: inline-flex;
}

.tw-chart-legend.\--selected {
    background-color: #f3f4f5;
}

.tw-tasklist-stats-panel__filter {
    float: right;
}

.tw-chart-legend {
    display: flex;
    margin-top: 10px;
    margin-right: 10px;
    margin-bottom: 15px;
    padding: 0 10px;
    border-radius: 4px;
    opacity: 1;
    cursor: pointer;
    transition: 0.2s all ease-out;
    -webkit-tap-highlight-color: transparent;
}

.tw-chart-legend__name {
    display: inline-block;
    align-items: center;
}







.tw-bar-chart__chart-container {
    position: relative;
    width: 95%;
    height: 90%;
}

.tw-bar-chart__chart-background {
    position: absolute;
    box-sizing: border-box;
    padding: 10px;
    width: 100%;
    height: 98%;
}

.tw-bar-chart__tasklists {
    position: absolute;
    box-sizing: border-box;
    padding: 65px 10px 10px;
    width: 100%;
    height: 100%;
}

.tw-bar-chart__label-x {
    position: absolute;
    width: 150px;
    color: #8d919a;
    text-align: center;
    font-size: 12px;
}

.tw-bar-chart__label-x.\--bottom {
    bottom: 14px;
}

.tw-bar-chart__background-table {
    margin-left: 150px;
    width: calc(100% - 150px);
    height: 100%;
    color: #8d919a;
    font-weight: 600;
    font-size: 12px;
}


.tw-bar-chart__background-table tr:nth-child(1) td {
    vertical-align: top;
}

.tw-bar-chart__background-table td:nth-child(odd) {
    border-right: solid 1px #f3f4f5;
}

.tw-bar-chart__background-table td:nth-child(1) {
    border-left: solid 1px #e6e8ec;
}

.tw-bar-chart__background-table td {
    padding-right: 5px;
    width: 10%;
    border-right: solid 1px #e6e8ec;
    vertical-align: bottom;
    text-align: right;
}


.tw-bar-chart__tasklists {
    position: absolute;
    box-sizing: border-box;
    padding: 65px 10px 10px;
    width: 100%;
    height: 100%;
}

.tw-bar-chart__tasklist {
    display: inline-flex;
    margin-bottom: 20px;
    width: 100%;
    height: 25px;
}

.tw-bar-chart__tasklist-title {
    display: inline;
    overflow: hidden;
    padding: 5px 10px 0 0;
    width: 140px;
    color: #464c59;
    text-align: right;
    text-overflow: ellipsis;
    white-space: nowrap;
    font-size: 12px;
}

.tw-bar-chart__chart {
    display: flex;
    flex: 1;
    overflow: hidden;
    width: 100%;
    font-weight: 600;
    font-size: 12px;
    transition: 0.2s all ease-out;
}
.tw-bar-chart__subChart {
    color: #fff;
    text-align: right;
    transition: 0.2s all ease-out;
}
.tw-bar-chart__subChart-text {
    overflow: hidden;
    margin: 5px 10px 0 0;
}

</style>



<!-- 2뷰 -->

<style type="text/css">

.schedule_main_container {
    padding: 50px 25px;
    width: calc(100% - 50px);
    height: 100%;
    border-radius: 2px;
    border: 1px solid #e6e6e6;
    background: #fff;
}

.main_container > div {
    margin: 10px auto;
    padding: 30px 35px;
    border-radius: 2px;
    background: #fff;
}

#schcalendar{
	width: inherit;
    height: 100%;
}




/* ************ unitlist 보기 mordal************* */
#unitListModal {
    margin-top: 100px;
    width: 600px;
    max-height: 550px;
    background: white;
    border-radius: 3px;
}

#unitListModal .headWrap {
    width: 100%;
    height: 50px;
    background: #2099bb;
    
}

#unitListModal .head {
    /* margin: 0 auto; */
    padding: 10px 10px;
    line-height: 30px;
    margin-left: 20px;
    font-weight: bold;
    font-size: 20px;
    color: white;
}
.listModalContents{

}

.detail {
    width: calc(100% - 60px);
    margin: 0 30px;
    padding: 15px 0;
    font-weight: bold;
}


.closeBtn:HOVER{
	color: gray;
}




</style>





<!-- 3뷰 -->
 
<style type="text/css">
.clear{
	clear:both;
}

div{
	display: block;
}

#thirdView_main_wrap {
    /* width: 1002px;
    height: auto;
    margin: 0 auto; */
    background: white;
    border: 1px solid #dedede;

}

.cardView_wrap{
	padding-bottom: 100px;
}


#cardKind {
    width: calc(100% - 20px);
    height: 40px;
    margin: 0 10px;
    border-bottom: 1px dashed #dedede;
    /* background: yellow; */
}

#cardKind ul li {
    float: left;
    line-height: 40px;
    margin-left: 20px;
    font-size: 13px;
    color: gray;
}

#cardKind ul li:HOVER{
	color: black;
}

.cardContents{
	
	width: 100%;
	height: auto;
	padding: 20px 0;
	/* background: red; */
}

.cardContentWrap {
    width: 816px;
    height: 320px;
    margin: 0 auto;
    /* background: green; */
}

.card {
    width: 250px;
    height: 300px;
    float: left;
    margin-top: 20px;
    margin-right: 20px;
    /* background: orange; */
    border: 1px solid #dedede;
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
    transition: 0.3s;
}

/* .card:hover {
    box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2);
} */

.cardTitle_wrap {
    height: 30px;
   /*  background: blue; */
    background : #dedede;
    line-height: 30px;
    margin-bottom: 5px;
    border-radius: 2px;
    text-align: center;
   
}

.cardTitle {
    margin-left: 20px;
    color: white;
    font-weight: bold;
}

.cardContent_wrap{
	height: calc(100% - 35px);
	/* background: orange; */
	overflow: auto;
}

.cardContent{
	padding: 10px 10px;
}

.unit{
	/* background: cyan; */
	width: inherit;
	height: 30px;
	line-height: 30px;
	margin-bottom: 10px;
	border-bottom: 1px solid #dedede;
	margin-bottom: 5px;
    border-radius: 2px;
}

.unit:hover {
    box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
}


/* ************ unit정보 보기 mordal************* *//* 
#unitViewModal {
    margin-top: 100px;
    width: 400px;
    max-height: 550px;
    background: white;
    border-radius: 3px;
}
 *//* 
 
#unitViewModal .headWrap {
    width: 100%;
    height: 50px;
    background: #2099bb;
    
}
 */
 /* 
#unitViewModal .head {
   
    padding: 10px 10px;
    line-height: 30px;
    margin-left: 20px;
    font-weight: bold;
    font-size: 20px;
    color: white;
}
 */

/* 
.detail {
    width: calc(100% - 60px);
    margin: 0 30px;
    padding: 15px 0;
    font-weight: bold;
}
 */
#unitDuration{
	text-align: center;
} 

#unitDescribe {
    width: calc(100% - 100px);
    max-height: 180px;
    overflow: auto;
    margin-bottom: 10px;
    margin-top: 15px;
    padding: 20px;
    line-height: 21px;
    background: ghostwhite;
}

.closeBtn:HOVER{
	color: gray;
}


</style>

<style type="text/css">
#cklist_section{
	width: 100%;
	height: inherit;
	background: white; /* lightgray; */
	float: left;
}

#cklist_section li{
	height: 40px;
}

input[type=checkbox], input[type=radio]{
	margin: 0;
	height: 40px;
	line-height: 40px;
	margin-left:10px;
}

#cklist_table{
	border: 1px solid black;
	text-align: center;
	width: 95%;
	height: 40%;
	margin : 10px auto;
	font-size: 15px;
}

#cklist_table th {
    width: 33%;
    height: 30px;
    line-height: 30px;
}



.unit3{
	height: 40px;
    margin: 2px;
   /*  background: orange; */
   border-bottom:1px solid gray;
}

.unitTitle{
    width: 80%;
    height: 40px;
    line-height: 40px;
    padding-left: 10px;
    font-weight: bold;
    float: left;
 }
 
#cklist_table input[type='checkbox']{
	float: right;
} 

td{
	vertical-align: top;
}


</style>

<style type="text/css">
#client_section{
	width: calc(100% - 20px);
    padding: 30px 10px;
    /* height: inherit; */
    background: white;
    float: left;
}

</style>

<style type="text/css">
table,#excelTable{
	margin: 0 auto;
	border: 1px solid #ccccff;
}

thead{
	background-color: #ccddff;
	font-weight: bold;
	font-size: 15px;
}

tbody{
	font-size: 15px;
	text-align: left;
}

th,td{
	padding: 8px;
	border-left: 1px solid #ccccff;
	border-bottom:  1px solid #ccccff;
}

tr{
	font-size: 0.8em;
}

th{
	border-top: 2px solid #3377ff;
}

th:FIRST-CHILD,td:FIRST-CHILD{
	border-left: 0;
}


.label{
    display: inline;
    padding: .2em .6em .2em;
    font-size: 1.5em;
    font-weight: bold;
    line-height: 1;
    color: #fff;
    text-align: center;
    white-space: nowrap;
    vertical-align: baseline;
    border-radius: .2em;
    background-color: #f33d12;
}

.label:HOVER {
	
	cursor: pointer;
	
}



</style>





<!-- <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script> -->
   


<script type="text/javascript">



function getContextPath(){
	//alert('${pageContext.request.contextPath}');
	var context = '${pageContext.request.contextPath}';
	return context;
}

function setDetailView(scheduleNum){

	//전체일정을 표로 보여주고 //엑셀 변환하기 기능을 제공한다 
	$.ajax({
		url:"/flu/schedule/detailView?scheduleNum="+scheduleNum,
		type:"GET",
		success:function(data){
			$("#tab5").html(data);
		}
	});
	
}

var currentTab = '${currentTab}';
var scheduleNum = '${scheduleNum}';

	$(function() {
		
		
		 $('#chat').click(function() {
	         
	         var url="../chat/chatDo?projectNum=${projectNum}";
	         var option = "width=440,height=500,top=100,left=300";
	        
	         window.open(url,'chat',option);
	         
	      });
		
		
		//데이터 뿌리기
		getPartList(scheduleNum);
		getUserList(scheduleNum);
		getUnitList(scheduleNum,-1,'','',''); //scheduleNum,partNum,email,unitState,kind
		loadTabContent("${pageContext.request.contextPath}/schedule/firstView?scheduleNum="+scheduleNum,'tab1'); //1번탭 로드
		if(currentTab != ''){
			//alert("");
			$('ul.tab li[data-tab="${currentTab}"]').trigger('click');
		}//안되넹..
		
		
		var memberKind = '${member.kind}';

		//날짜가 입력이 안되있을경우 modal 생성
		if($("#sDateforTitle").text() == ''){
			
			if(memberKind == 'client' ){
				$("#insertMainschedule").modal({backdrop:'static'});	
			}else{
				alert("스케줄이 설정되있지 않습니다");
				history.back();//뒤로가기
			}
		}

		
		
		
		
		
		
		

		//tab 클릭 이벤트
		$('ul.tab li').click(function() {
			//css
			var activeTab = $(this).attr('data-tab');
			$('ul.tab li').removeClass('current');
			$('.tabcontent').removeClass('current');
			$(this).addClass('current'); //클릭한 애만 current 설정
			$('#' + activeTab).addClass('current');
			
			
			
			if(activeTab == 'tab1'){
				//아싸리 여기서 비워버리는게 좋겠다
				$.ajax({
					url:"/flu/schedule/test?scheduleNum="+scheduleNum+"&projectNum=${projectNum}",
					type:"GET",
					success: function(data){
						$("#tab1").html(data);
					}
				});
				
			}else if(activeTab == 'tab2'){
				
				$.ajax({
					url:"/flu/schedule/secondView?scheduleNum="+scheduleNum,
					type:"GET",
					success: function(data){
						$("#tab2").html(data);
					}
				});

				/* $('#schcalendar').fullCalendar({
					header: {
						left: '',
						right: 'today,month'//'today,month,basicWeek,basicDay'
					},
					titleFormat: {
						month: 'yyyy년 MMMM',
						week: "yyyy년 MMMM d[yyyy]{'일 ~ '[mmm] dd일'}",
						day: "yyyy년 MMM d dddd"
					},
					monthNames : ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
					monthNamesShort : ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월'],
					dayNames : ['일요일','월요일','화요일','수요일','목요일','금요일','토요일'],
					dayNamesShort : ['일','월','화','수','목','금','토'],
					allDayText : '금일일정',
					minTime : 9,
					maxTime : 19,
					axisFormat : "HH:mm",
					editable: true,

				   eventClick: function(calEvent, jsEvent, view) {

				        alert('Event: ' + calEvent.title);
				        alert('desc: ' + calEvent.description);
				        //partClick(calEvent.description);
				        // alert('Coordinates: ' + jsEvent.pageX + ',' + jsEvent.pageY); // 화면 좌표인듯
				        alert('View: ' + view.name);

				        // change the border color just for fun
				        //$(this).css('background', 'orange');
				        
				        getUnitList(scheduleNum,calEvent.description,'','','');//눌린 파트에 대한 unit 들을 table로 뿌린다
				        unitListModal.show(); 
				        
				        //일정에 가지고있는 링크를 사용해서 열어준다
				        /*
				        if(event.url) {
			               alert(event.title + "\n" + event.url, "wicked", "width=700,height=600");
			               window.open(event.url,"_blank");
			               return false;
			           }
				        */

				/*     },
				    // 달력의 빈칸을 클릭했을때 실행되는 함수
				    dayClick: function(date) {
						//scheduleParam = {seq : 0, title : '', contents : '', starttime : date.getTime(), endtime : date.getTime(), writer:''};
						//$('#title').val(scheduleParam.title);
						//$('#contents').val(scheduleParam.contents);
						//spicker.select(date.getFullYear(),date.getMonth()+1,date.getDate()); 
						//epicker.select(date.getFullYear(),date.getMonth()+1,date.getDate()); 
						//writeModal.show(); 
						
				    }
				}); */
				/* 
				var resultJson = getPartList(scheduleNum);
				addEvents(resultJson);
				
				
				
				$(document).on("click",".listModalUnit",function(){
					alert("unit 상세보기 modal로 바꿔주면 좋겟지요");
				});
				 */
				////////////////////2뷰끝/////////////////////
				
				
				
				
				
				
				
				
				
			}else if(activeTab == 'tab3'){
				//alert("표보기");
				//url = "/flu/schedule/thirdView?scheduleNum="+scheduleNum;
				
				
				
				
				/////////////3뷰////////////////
				/* var unitModal;
				
				jui.ready([ "ui.modal" ], function(modal) {
				    unitModal = modal("#unitViewModal", {
				        color: "black",
				        target: "body",
				        opacity: 0.5
				    });
				});
				 */
				

				
				
				$(".cardContentWrap").html(""); //일단 비우기
				//상태별로 초기화
				getUnitList(scheduleNum,-1,'','할일',"상태별");// -1 이면 전체가 나온다 
				getUnitList(scheduleNum,-1,'','진행중',"상태별");// -1 이면 전체가 나온다 
				getUnitList(scheduleNum,-1,'','완료',"상태별");// -1 이면 전체가 나온다 
				//getUnitList(scheduleNum,-1,'','마감일지남',"상태별");// -1 이면 전체가 나온다 
				getUnitList(scheduleNum,-1,'','',''); //전체뷰 볼거

				
				
				
				
				
				/////////////////////3뷰끝/////////////////////////////
				
				
				
				
				
				
				
				
				
				
				
			}else if(activeTab == 'tab4'){
				//alert("체크리스트");
				loadCheckList(scheduleNum,'${member.email}',-1);
				/* $.ajax({
					url:"/flu/schedule/checkListForFreelancer",
					type:"POST",
					data:{
						scheduleNum:scheduleNum
					},
					success:function(data){
						$("#tab4").html(data);
					}
				}); */
				
			}else if(activeTab == 'tab5'){
				//alert("파트일정추가");
				/* 
				//전체일정을 표로 보여주고 //엑셀 변환하기 기능을 제공한다 
				$.ajax({
					url:"/flu/schedule/detailView?scheduleNum="+scheduleNum,
					type:"GET",
					success:function(data){
						$("#tab5").html(data);
					}
				});
				 */
				setDetailView(scheduleNum);
				
			}else if(activeTab == 'tab6'){
				//alert("간트");
				//location.href="/flu/schedule/sixthView";
			}else if(activeTab == 'tab7'){
				//alert("간트2");
				location.href="/flu/schedule/dhxTest?scheduleNum="+scheduleNum;
				//url = "";
				/* $.ajax({
					url:"/flu/schedule/dhxTest?scheduleNum="+scheduleNum,
					type:"GET",
					success: function(data){
						$("#tab7").html(data);
					}
				}); */
				
			}else if(activeTab == 'tab8'){
				//alert("구글차트 연습용");
				$.ajax({
					url:"/flu/schedule/test8?scheduleNum="+scheduleNum,
					type:"GET",
					success: function(data){
						$("#tab8").html(data);
					}
				});

			}else if(activeTab == 'tab9'){
				//전체일정을 표로 보여주고 //엑셀 변환하기 기능을 제공한다 
				$.ajax({
					url:"/flu/schedule/detailView?scheduleNum="+scheduleNum,
					type:"GET",
					success:function(data){
						$("#tab9").html(data);
					}
				});
			}
					
		});//클릭햇을때
		
		
		
		
		
		
		//카드뷰 클릭이벤트 설정
		$("#cardKind ul li").click(function(){
			//alert($(this).text());
			
			$(".cardContentWrap").html("");
			
			if($(this).text() == "상태별"){
				
				getUnitList(scheduleNum,-1,'','할일',"상태별");// -1 이면 전체가 나온다 
				getUnitList(scheduleNum,-1,'','진행중',"상태별");// -1 이면 전체가 나온다 
				getUnitList(scheduleNum,-1,'','완료',"상태별");// -1 이면 전체가 나온다 
				//getUnitList(scheduleNum,-1,'','마감일지남',"상태별");// -1 이면 전체가 나온다
			
			}else if($(this).text() == "파트별"){
					
				//뿌려논만큼 반복해야지요
				$(".partNum").each(function(){
					var partNum = $(this).text();
					getUnitList(scheduleNum,partNum,'','',"파트별"); //파트갯수만큼 반복문
				});
				
					
			}else if($(this).text() == "사용자별"){
				//alert("안나오노1");
				
				//뿌려진만큼 반복
				$(".userEmail").each(function(){
					var userEmail = $(this).text();
					//alert("안나오노2"+userEmail);
					userEmail = userEmail.trim();
					getUnitList(scheduleNum,-1,userEmail,'',"사용자별"); //파트갯수만큼 반복문
				});
				
			}
			
			
			//데이터 없을 경우
			if($(".card").length == 0){
				var makeCard = "";
				makeCard = makeCard + '<div class="card">';
				makeCard = makeCard + '<div class="cardTitle_wrap">';
				makeCard = makeCard + '<span class="cardTitle">'+$(this).text()+'</span></div>';
				makeCard = makeCard + '<div class="cardContent_wrap"><div class="cardContent">';
				makeCard = makeCard + '<div class="unit" data-unitNum=-1>'+'해당업무가 없습니다'+'</div>';	
				makeCard = makeCard + '</div></div></div>';
				
				$(".cardContentWrap").append(makeCard);
			}
			
			
			
			
			getUnitList(scheduleNum,-1,'','',''); //전체뷰 볼거
			
		}); //card view nav 클릭이벤트 끝

		
		
		
		
		
		$(document).on("click", ".unit", function(index){
			//alert("unit클릭"+$(this).attr("data-unitnum"));
			//alert("unit 클릭 스케줄 넘"+$("#scheduleNum").val());
			
			var unitNum = $(this).attr("data-unitnum");
			
			if(unitNum == -1){
				//alert("추가해야징");
			}else{
				var scheduleNum = $("#scheduleNum").val();
				 $.ajax({
					url: "/flu/schedule/unitOne",
					type: "POST",
					data: {
						unitNum : unitNum,
						scheduleNum : scheduleNum	
					},
					success: function(data){
						//모달 내용 채워주기
						//alert(JSON.stringify(data));
						var finishdate = new Date( data.unitFinishDate );
						var startdate  = new Date( data.unitStartDate );
	
					    var year1  = startdate.getFullYear();
					    var month1 = startdate.getMonth() + 1;
					    var day1   = startdate.getDate();
					    var year2  = finishdate.getFullYear();
					    var month2 = finishdate.getMonth() + 1;
					    var day2   = finishdate.getDate();
	
					      
					    $("#unitName").html(data.unitName);
						$("#unitDuration").html(year1+"-"+month1+"-"+day1+" ~ "+year2+"-"+month2+"-"+day2);
						$("#unitDescribe").html(data.unitDescribe);
						$("#unitPart").html(data.partName);
						$("#unitEmail").html(data.email);
						//unitModal.show(); 
						$("#unitViewModal").modal();
						
					}
			
				});
			}
			
		}); //unit 클릭이벤트
		
		
		
		
		


	}); //function
	
	
	function loadCheckList(scheduleNum,email,partNum){
		$.ajax({
		url:"/flu/schedule/checkListForFreelancer",
		type:"POST",
		data:{
			scheduleNum:scheduleNum,
			email:email,
			partNum:partNum,
			unitState:''
		},
		success:function(data){
			$("#tab4").html(data);
		}
	}); 
	}
	
	
	
	
	//jsp 임포트해서 피료 노노
	function loadTabContent(url,activeTab){
		if(url != ""){
			
			$.ajax({
				url:url,
				type:"GET",
				async:false,
				success:function(data){
					//alert(data);
					$("#"+activeTab).html(data);
				}
			});
			
		}
	}

	
	/**
	 * DB에 저장된 part들의 list를 json 형태로 받고 partsJSONArray 에 저장해준다
	 */
	function getPartList(scheduleNum){
		
		var partsJSONArray = new Array();
		//var colors = ['red','yellow','orange','green','blue','lime','purple'];
		var colors = ['#ccccff','#b3b3ff','#9999ff','#8080ff','#6666ff','#4d4dff','#3333ff'];
		
		$.ajax({
			url: "/flu/schedule/partList?scheduleNum="+scheduleNum,
			type: "GET",
			async:false,
			success:function(data){ //json 넘어옴 
				//alert("파트가져우기");
				partsJSONArray = data;
				for(var i=0;i<partsJSONArray.length;i++){
					partsJSONArray[i].color = colors[((i+1)%7)-1]; //7개설정해놔서그렇습니다
					partsJSONArray[i].textColor = 'white';
				}
				
				
				//아래 뿌려주는애
				var result="<table>";
				$(data).each(function(){
					
					result = result + '<tr class="onePartClick">';
					result = result + '<td class="schNum">'+ this.scheduleNum + "</td>";
					result = result + "<td> "+ this.partName + " </td>";
					result = result + "<td> "+ this.partStartDate + " </td>";
					result = result + "<td> "+ this.partFinishDate + " </td>";
					result = result + "<td class='partNum'> "+ this.partNum + " </td>";
					result = result + "<td> "+ this.partDescFileO + " </td>";
					result = result + "</tr>";
					
				});
				result = result + "</table>";
				$("#partsDiv").html(result); //아래화면에 뿌려주기
				
				
				
				
				
				//클라이언트가 unit 등록할때 
				var unitInsertParts = '';
				$(data).each(function(){
					unitInsertParts = unitInsertParts + '<input type="radio" class="partName" name="partName" value="'+this.partName+'" data-num="'+this.partNum+'">'+this.partName;
				});
				$("#parts").html(unitInsertParts);

				
		
				
			
				//return partsJSONArray; 
				//이렇게하면 비동기화 방식이 무의미 해지기 때문에 //데이터를 담은 후 그 데이터를 사용하기 위한것이기 때문에
				//동기화 방식 // 즉 데이터가 다 가져와져서 담길때까지 기다려야하기 때문이라는 말이다 
				//그냥 여기서 함수를 호출해버리는게 좋을수도 있겠다 
				
			}
		}); //success끝
		
		//alert("ajax아래 함수안에 data "+JSON.stringify(partsJSONArray)); // 오류남
		return partsJSONArray;
		
		
	} // getPartList() 끝


	function getUserList(scheduleNum){
		
		$.ajax({
			url: "/flu/schedule/userList?scheduleNum="+scheduleNum,
			type: "GET",
			async:false,
			success: function(data){
				//alert(JSON.stringify(data));
				//alert("유저유닛가져우기");
				var result="<table>";
				$(data).each(function(){
					result = result + "<tr>";
					result = result + "<td  class='userEmail'>"+ this.email + "</td>";
					result = result + "<td> "+ this.kind + " </td>";
					result = result + "<td> "+ this.name+"("+this.nickName+")" + " </td>";
					result = result + "</tr>";				
				});
				result = result + "</table>";

				$("#usersDiv").html(result); //화면에 뿌려주기
				
				
				/* 
				var unitInsertUsers = '';
				$(data).each(function(){
					unitInsertUsers = unitInsertUsers + '<input type="radio" class="email" name="email" value="'+this.email+'">' + this.name + '(' + this.nickName + ')';			
				});
			//alert(unitInsertUsers);
				$("#users").html(unitInsertUsers);
				
				 */
				
			}
			
		});
		
	}


	//part별 보기로 클릭했을때 partnum을 주면된다
	function getUnitList(scheduleNum,partNum,email,unitState,kind){
	//alert("unit가져오기"+scheduleNum+partNum+email);
		
		$.ajax({
			url: "/flu/schedule/unitList",
			type: "POST",
			async:false,
			data: {
				scheduleNum:scheduleNum,
				partNum:partNum,
				email:email,
				unitState:unitState
			},
			success: function(data){
				
				
			//alert("unit들"+JSON.stringify(data));
	
						var result="<table>";
						$(data).each(function(){
							result = result + "<tr>";
							result = result + "<td> "+ this.unitNum + " </td>";
							result = result + "<td> "+ this.unitName + " </td>";
							result = result + "<td> "+ this.unitDescribe + " </td>";
							result = result + "<td> "+ this.unitFinishDate + " </td>";
							result = result + "<td> "+ this.partNum + " </td>";
							result = result + "<td class='getPartName'> "+ this.partName + " </td>";
							result = result + "<td> "+ this.email + " </td>";
							result = result + "</tr>";				
						});
						result = result + "</table>";
			
						$("#unitsDiv").html(result); //화면에 뿌려주기
						
						
						
					//secondView 를 위한것 
						var unitsResult="";//"<table>";
						$(data).each(function(){
							unitsResult = unitsResult + "<tr>";
							//unitsResult = unitsResult + "<td> "+ this.unitNum + " </td>";
							unitsResult = unitsResult + "<td> <span class='listModalUnit'>"+ this.unitName + "</span></td>";
							unitsResult = unitsResult + "<td> "+ this.unitFinishDate + " </td>";
							unitsResult = unitsResult + "<td> "+ this.email + " </td>";
							unitsResult = unitsResult + "<td> "+ this.unitState + " </td>";
							unitsResult = unitsResult + "</tr>";				
						});
						//unitsResult = unitsResult + "</table>";
						$("#listModalContents").html(unitsResult); //달력 모달
					
						
					//thirdView 를 위한 것
					//뿌려논애를 사용해서 그려주는것..
					//값 들어왓을때만이니까 괜찮을거 같은데
					if(kind == "상태별"){
						makeUnitList(data,unitState); //카드뷰에 집어넣을겨
					}else if(kind == "파트별"){
						makeUnitList(data,'part'); //카드뷰에 집어넣을겨
					}else if(kind == "사용자별"){
						makeUnitList(data,email); //카드뷰에 집어넣을겨
					}else{
						
						//alert("지금은 전체 내용이 아래에 있지");
						
					}
	
						

				
				}
		
			
		});
		
	} //getUnitList끝
	
	function makeUnitList(data,state){ //state에는 카드뷰의 제목이옵니다 //상태,파트,사용자 등
		
		var makeCard = "";
		makeCard = makeCard + '<div class="card">';
		makeCard = makeCard + '<div class="cardTitle_wrap">';
		if(state == 'part'){
			makeCard = makeCard + '<span class="cardTitle">'+data[0].partName+'</span></div>';
		}else{
			makeCard = makeCard + '<span class="cardTitle">'+state+'</span></div>';
		}
		
		makeCard = makeCard + '<div class="cardContent_wrap"><div class="cardContent">';
		$(data).each(function(){							
			makeCard = makeCard + '<div class="unit" data-unitNum='+this.unitNum+'>'+this.unitName+'</div>';						
		});
		makeCard = makeCard + '</div></div></div>';
		
		
		
		$(".cardContentWrap").append(makeCard);
		
		
		//카드 뷰 높이조정
		if($(".card").length <= 3){
			$(".cardContentWrap").css("height","320px");
		}else if($(".card").length > 3){
			$(".cardContentWrap").css("height","640px");
		}else if($(".card").length > 6){
			$(".cardContentWrap").css("height","960px");
		}else if($(".card").length > 9){
			$(".cardContentWrap").css("height","1280px");
		}
		//안먹음..
		
	} //makeUnitList 함수 끝
	
	
	
	
	
	
	//2뷰//////////////////////
	
	
	
	/**
	 * 받아온 json을 사용해서 fullcal의 일정에 추가해준다 //파트만..
	 */
	 /* 
	function addEvents(jsonObj){
		
		for(var i=0; i<Object.keys(jsonObj).length; i++){
			//alert('일정추가되고있는가'+i);
	        $('#schcalendar').fullCalendar('addEventSource', [{
	            id:          jsonObj[i].scheduleNum+jsonObj[i].partName+jsonObj[i].partNum,
	            title:       jsonObj[i].partName,
	            start:       jsonObj[i].partStartDate,
	            end:         jsonObj[i].partFinishDate,
	            description: jsonObj[i].partNum, 
	            color:       jsonObj[i].color,
	            textColor:   jsonObj[i].textColor,
	            //url: 'https://www.github.com'
	        }]);
	        console.log('달력이벤트 추가 ok');
	    } 
	}
 	*/
	///////////////2뷰끝/////////////////////


	
	
	
</script>

</head>
<body>

<c:import url="../temp/header.jsp"></c:import>

<section class="main_section">


	<div id= "main_wrap">
	
	
	<!-- 프로젝트 이름, 시작,마감일 참여프리랜서 뿌려줌 -->
	<div class="schedule_header">
         <div class="header_text">
            <p id="header_ttt" style="margin-bottom: 20px;">
            <span>[스케줄] ${projectDTO.name} </span>
            <span class="DateMius"><span class="startDate">${pStartDate}</span> - <span class="finishDate">${pFinishDate}</span></span>
            </p>
            <p id="header_t">
            <span>${projectDTO.category}&gt; ${projectDTO.detailCategory}</span>
            <span>
            <img src="/flu/resources/img/project/proposal.png">
          		<strong class="appCount">${applicantCount}명</strong>의 프리랜서참여</span><span class="label" id="chat">채팅방입장</span>
            </p>
         </div>
     </div>
	
	<!-- 왼쪽 네비게이션 메뉴 -->
	<!-- class current인 친구의 css가 변경되고 화면에 나타난다 -->
	<div class="sidebar">
		<div class="sidebar-nav">
			<ul class="tab">
				<li class="current"  data-tab="tab1"><span class="taba">개요</span></li>
				<li class="" data-tab="tab2"><span class="taba">달력보기</span></li>
				<li class=""  data-tab="tab3"><span class="taba">카드보기</span></li>
				<li class=""  data-tab="tab7"><span class="taba seeGantt">간트차트보기</span></li>
				<c:if test="${member.kind eq 'freelancer'}">
					<li class=""  data-tab="tab9"><span class="taba">상세보기</span></li>
					<li class=""  data-tab="tab4"><span class="taba">업무체크리스트</span></li>
				</c:if>
				<c:if test="${member.kind eq 'client'}">
					<li class=""  data-tab="tab5"><span class="taba">일정/업무 수정</span></li>
				</c:if>
				<!-- <li class=""  data-tab="tab6"><span class="taba">간트차트</span></li> -->
				
				<!-- <li class=""  data-tab="tab8"><span class="taba">구글차트</span></li> -->
				
			</ul>
		</div>
	</div>
			
	<!-- 실제적인 뷰 화면이다  -->		
	<div class="tabContentWrap">
		<div id="tab1" class="tabcontent current">
			<!-- 개요 -->
		</div>
		
		<div id="tab2" class="tabcontent">
			<!-- tab2내용 은 달력이야 -->
			<%-- <c:import url="/WEB-INF/views/schedule/secondView.jsp" /> --%>
		</div>
		
		<div id="tab3" class="tabcontent">
			<!-- tab3내용 은 표야  -->
			<c:import url="/WEB-INF/views/schedule/thirdView.jsp" />
		</div>
		
		<div id="tab4" class="tabcontent">
			<!-- 프리랜서가 업무 체크 -->
			<%-- <c:import url="/WEB-INF/views/schedule/checkListForFreelancer.jsp" /> --%>
		</div>
		
		<div id="tab5" class="tabcontent">
			
			<!-- tab5내용 은 수정이야 //클라이언트만 가능  -->
			<%-- <c:import url="/WEB-INF/views/schedule/mainInsertForm.jsp" /> --%>
			
		
		</div>
		
		<div id="tab6" class="tabcontent">
			
		</div>
		
		<div id="tab7" class="tabcontent">
			<%-- <c:import url="/WEB-INF/views/schedule/dhx_gantTest.jsp" /> --%>
		</div>
		
		<div id="tab8" class="tabcontent">
			<%-- <c:import url="/WEB-INF/views/schedule/firstViewTestGoogleChart.jsp" /> 
		 --%></div>
		<div id="tab9" class="tabcontent">
			<!-- tab5내용 은 수정이야 //클라이언트만 가능  -->
			<%-- <c:import url="/WEB-INF/views/schedule/detailViewforExcel.jsp" /> --%>
		</div>
	</div>
		
		
		
		
		
		
		
		
		
		<!--  -----------MODAL 만들기----------------  -->
		<!-- part 추가 Modal -->
		<div id="myModal" class="modal fade" role="dialog">
		  <div class="modal-dialog   modal-lg">
		
		    <!-- Modal content-->
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal">&times;</button>
		        <h4 class="modal-title">PART 추가</h4>
		      </div>
		      <div class="modal-body">
		        <div id="client_section">
					<form id="partAddForm" action="${pageContext.request.contextPath}/schedule/addPart" method="POST"  enctype="multipart/form-data">
						<input type="hidden" id="scheduleNum" name="scheduleNum" value="${scheduleNum}">
						<input type="hidden" id="currentTab" name="currentTab" value="tab5">
						<input type="hidden" id="projectNum" name="projectNum" value="${projectNum}">
						<!-- <div>
							프로젝트 시작일:<input type="date" name="startDate" value=""> 
							프로젝트 마감일:<input type="date" name="finishDate"> 
						</div>
						<div>
							<h3>시작일은 설정하지 않을경우 당일로 등록되고 마감일은 파트 마감일중 가장 마지막날로 등록된다</h3>
							<h3>파트의 시작일을 설정하지 않은경우는 프로젝트 시작일로 등록되고 마감일을 등록하지 않은경우는 마감일로 등록된다</h3>
						</div> -->
						<div id="partSection"  style="width:100%;">
							
								<table>
									<thead>
										<tr>
											<th>part명</th>
											<th>시작일</th>
											<th>마감일</th>
											<th>첨부파일</th>
											<th></th>
										</tr>
									</thead>
									<tbody class="partRowSection">
										<tr class="partOne">
											<td><input type="text" class="partName" name="partName"></td>
											<td><input type="date" class="partStartDate" name="partStartDate"> </td>
											<td><input type="date" class="partFinishDate" name="partFinishDate"></td>
											<td><input type="file" class="partDescFileO" name="partDescFile"></td>
											<td><span class="partDel">X</span></td>
										</tr>
									</tbody>
								</table>
							</div>
						
						<input type="button" class="btn btn-default" id="addPartBtn" value="+" style="margin:0 auto;">

					</form>
					
				</div>
		      </div>
		      

		      <div class="modal-footer">
		      	<button type="button" class="btn btn-default partFrmBtn">등록</button>
		        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
		      </div>
		    </div>
		
		  </div>
		</div>
		<!-- 파트추가MODAL 끝 -->
		
		
		
		<!-- 업무 추가 Modal -->
		<div id="myModal2" class="modal fade" role="dialog">
		  <div class="modal-dialog   modal-lg">
		
		    <!-- Modal content-->
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal">&times;</button>
		        <h4 class="modal-title">업무 추가</h4>
		      </div>
		      <div class="modal-body">
		        <div id="client_section">
						<input type="hidden" id="scheduleNum" name="scheduleNum" value="${scheduleNum}">
						<input type="hidden" id="currentTab" name="currentTab" value="tab5">

						<div id="unitSection"  style="width:100%;">
							
								<table>
									<thead>
										<tr>
											<th></th>
											<th></th>
										</tr>
									</thead>
									<tbody class="unitRowSection">
										<tr>
											<th>업무명</th>
											<td><input type="text" id="unitNameS" name="unitNameS" placeholder="업무제목" style="width:300px;"></td>
										</tr>
										<tr>
											<th>시작일</th>
											<td><input type="date" id="unitStartDate" name="unitStartDate" style="width:300px;"> </td>
										</tr>
										<tr>
											<th>마감일</th>
											<td><input type="date" id="unitFinishDate" name="unitFinishDate" style="width:300px;"></td>
										</tr>
										<tr>
											<th>파트</th>
											<td>
												<select id="partNumS" name="partNumS" style="width:300px;">
													<option value="">파트선택</option>
													<c:forEach items="${partList2}" var="part">
														<option value="${part.partNum}">${part.partName}</option>
													</c:forEach>
												</select>
											<!-- <input type="number" id="partNumS" name="partNumS" style="width:300px;"> -->
											
											</td>
										</tr>
										<tr>
											<th>담당자</th>
											<td>
												<select id="unitEmailS" name="unitEmailS" placeholder="담당자" style="width:300px;">
													<option value="">담당자선택</option>
													<c:forEach items="${userList2}" var="user">
														<option value="${user.email}">${user.nickName}</option>
													</c:forEach>
												</select> 
												<!-- <input type="text" id="unitEmailS" name="unitEmailS" placeholder="담당자" style="width:300px;"> --></td>			
										</tr>
										<tr>
											<th>상세설명</th>	
											<td><textarea rows="" cols="100" id="unitDescribeS" name="unitDescribeS"></textarea></td>		
										</tr>

									</tbody>
								</table>
								<input type="hidden" id="unitState" name="unitState" value="할일" readonly="readonly">
							</div>

				</div>
		      </div>
		      

		      <div class="modal-footer">
		      	<button type="button" class="btn btn-default " id="unitFrmBtn">등록</button>
		        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
		      </div>
		    </div>
		
		  </div>
		</div>
		<!-- 업무추가MODAL 끝 -->
		
		
		
		
		
		<script type="text/javascript">
			$(document).on("click","#addPartModalBtn",function(){
				$("#myModal").modal({backdrop:'static'});
			});
			
			$(document).on("click","#addUnitModalBtn",function(){
				$("#myModal2").modal({backdrop:'static'});
			});
			
			$(document).on("click","#addPartBtn",function(){
				//alert('part 추가'+partCount);
				var partDOM3 = '';
				partDOM3 = partDOM3 + '<tr class="partOne">';
				partDOM3 = partDOM3 + '<td><input type="text" class="partName" name="partName"></td>';
				partDOM3 = partDOM3 + '<td><input type="date" class="partStartDate" name="partStartDate"> </td>';
				partDOM3 = partDOM3 + '<td><input type="date" class="partFinishDate" name="partFinishDate"></td>';
				partDOM3 = partDOM3 + '<td><input type="file" class="partDescFileO" name="partDescFile"></td>';
				partDOM3 = partDOM3 + '<td><span class="partDel">X</span></td>';
				partDOM3 = partDOM3 + '</tr>';
				$(".partRowSection").append(partDOM3);
			});
			
			
			
			$(document).on("click",".partDel",(function(){
				//alert("삭제하고싶어"+partCount);
				$(this).parents(".partOne").remove(); //눌린 본인의 부모 P를 삭제하다
			}));
			
			$(document).on("click",".partFrmBtn",function(){
				$("#partAddForm").submit();
			});
			
			
			$(document).on("click","#unitFrmBtn",function(){
				
				var partNumS = $("#partNumS").val();
				var unitNameS = $("#unitNameS").val();
				
				var unitStartDate = String($("#unitStartDate").val());
				
				var unitFinishDate = String($("#unitFinishDate").val());

				var unitEmailS = $("#unitEmailS").val();
				var unitDescribeS = $("#unitDescribeS").val();
				//alert(scheduleNum+"확인용 이름 "+unitNameS + " 시작 "+unitStartDate + " 마감"+ unitFinishDate+ " 메일  "+ unitEmailS + " 설명  " +unitDescribeS);
				$.ajax({
					url: "${pageContext.request.contextPath}/schedule/addUnit",
					type: "POST",
					data : {
						scheduleNum : scheduleNum,
						partNum : partNumS,
						unitName :unitNameS,
						unitStartDate : unitStartDate,
						unitFinishDate :unitFinishDate,
						email : unitEmailS,
						unitDescribe : unitDescribeS
					},
					success:function(data){
						if(data == 1){
							
						}else{
							//alert("업무등록오류");
						}
						$("#myModal2").modal('hide');
						setDetailView(scheduleNum);
					}
					
				});
			});
			

		</script>


      <!--  -----------MODAL 만들기 면----------------  -->
		<!-- 메인추가 Modal -->
		<div id="insertMainschedule" class="modal fade" role="dialog">
		  <div class="modal-dialog ">
		
		    <!-- Modal content-->
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal">&times;</button>
		        <h4 class="modal-title">스케줄 생성</h4>
		      </div>
		      <div class="modal-body">
		        <div id="client_section">
					
					<input type="hidden" id="scheduleNumSC" name="scheduleNumSC" value="${scheduleNum}">
					<input type="hidden" id="projectNumSC" name="projectNumSC" value="${projectNum}">
						<div id="mainSection"  style="width:100%;">
						
							<table>
								<thead>
									<tr>
										<th>시작일</th>
										<th>마감일</th>
								
									</tr>
								</thead>
								<tbody class="mainRowSection">
									<tr>
										<td><input type="date" id="startDateSC" name="startDateSC" value=""> </td>
										<td><input type="date" id="finishDateSC" name="finishDateSC">  </td>	
									</tr>
								</tbody>
							</table>
						</div>
				</div>
		      </div>

		      <div class="modal-footer">
		      	<button type="button" class="btn btn-default mainInsertBtn">등록</button>
		        <button type="button" class="btn btn-default" data-dismiss="modal">취소</button>
		      </div>
		    </div>
		
		  </div>
		</div>
		<!-- 메인추가MODAL 끝 -->
		
		
		<!-- thirdView MODAL  -->
		
		
		<div id="unitViewModal" class="modal fade" role="dialog">
		  <div class="modal-dialog ">
		
		    <!-- Modal content-->
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal">&times;</button>
		        <h4 class="modal-title" id="unitName">이것은 내가 할일이겟죠 unitname</h4>
		      </div>
		      <div class="modal-body">
		        <div id="client_section">
						<!-- 
						<div id="unitDuration" class="detail">2017-07-18 ~ 2017-09-17</div>
						<div id="unitDescribe" class="detail">
							할일은 이런일이고 그리고 저런일이예요 그런다음 그런일이 겠지요 ? 그리고 그래서요 그랬어요 크흠
							할일은 이런일이고 그리고 저런일이예요 그런다음 그런일이 겠지요 ? 그리고 그래서요 그랬어요 크흠
							할일은 이런일이고 그리고 저런일이예요 그런다음 그런일이 겠지요 ? 그리고 그래서요 그랬어요 크흠
						</div>
						<div id="whatPart" class="detail">
							<div id="">파트</div> <div id="unitPart">partName</div>
						</div>
						<div id="whoEmail" class="detail">			
							<div id="">담당자</div> <div id="unitEmail">test@test.com</div>
						</div>
						 -->
						
						<table>
							<tr>
								<td><div id="unitDuration" class="detail">2017-07-18 ~ 2017-09-17</div></td>
								
								
							</tr>
							<tr>
								<td><div id="unitDescribe" class="detail"></div></td>
							</tr>
							<tr>
								<td>
									<div id="whatPart" class="detail">
										<div id="">파트</div><br/> <div id="unitPart">partName</div>
									</div>
								</td>
							</tr>
							<tr>
								
								<td>
									<div id="whoEmail" class="detail">			
										<div id="">담당자</div><br/> <div id="unitEmail">test@test.com</div>
									</div>
								</td>
							</tr>

						</table>
						
						
						
						
				</div>
		      </div>

		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">확인</button>
		      </div>
		    </div>
		
		  </div>
		</div>
		

		<!-- thirdView MODAL 끝 -->
		
		
		
		
		
		
		<!-- ----------MODAL SecondView (달력) tab2---------------- -->
		
		
		<div id="tab2Modal" class="modal fade" role="dialog">
		  <div class="modal-dialog ">
		
		    <!-- Modal content-->
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal">&times;</button>
		        <h4 class="modal-title">해당 파트 업무들</h4>
		      </div>
		      <div class="modal-body">
		        <div id="client_section">
					
					<input type="hidden" id="scheduleNumSC" name="scheduleNumSC" value="${scheduleNum}">
					<input type="hidden" id="projectNumSC" name="projectNumSC" value="${projectNum}">
						<div id="mainSection"  style="width:100%;">
						
							<table>
								<thead>
									<tr>
										
										<td><span class="listModalUnit">업무명</span></td>
										<td>마감일</td>
										<td>담당자</td>
										<td>상태</td>
										
												
									</tr>
								</thead>
								<tbody class="mainRowSection" id="listModalContents">
									<c:forEach items='${calUnitsforPart}'>
										<tr>									
											<td><span class="listModalUnit">상세할일 제목쓰</span></td>
											<td>2017-08-14</td>
											<td>담당자</td>
											<td>상태</td>
										</tr>
										
									</c:forEach>
									<tr>									
										<td><span class="listModalUnit">상세할일 제목쓰</span></td>
										<td>2017-08-14</td>
										<td>담당자</td>
										<td>상태</td>
									</tr>
								</tbody>
							</table>
						</div>
				</div>
		      </div>

		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">확인</button>
		      </div>
		    </div>
		
		  </div>
		</div>

		

		<!-- ----------MODAL SecondView 끝---------------- -->
		
		
		
		
		
		
      


		
	<script type="text/javascript">
		$('.mainInsertBtn').click(function(){
			//alert("main insert 하기 "); // 사실이미 DB 에는 저장되어있음 
			var scheduleNum = $("#scheduleNumSC").val()*1;
			var projectNum = $("#projectNumSC").val()*1;
			var startDate = $("#startDateSC").val();
			var finishDate = $("#finishDateSC").val();
			//alert(scheduleNum + " " +projectNum+ " " + startDate+ " " +finishDate );
			
			$.ajax({
				url: "/flu/schedule/mainInsert",
				type: "POST",
				async: false,
				data: {
					scheduleNum:scheduleNum,
					projectNum:projectNum,
					startDate:startDate,
					finishDate:finishDate
				},
				success: function(data){
					//alert("mainINsert 결과 "+data);
					if(data==1){
						alert("성공");
						
					}else{
						alert("날짜 등록 에러");
					
					}
					$("#insertMainschedule").modal('hide');
				}
			});
			
		loadTabContent("${pageContext.request.contextPath}/schedule/firstView?scheduleNum="+scheduleNum,'tab1'); //1번탭 로드
		});
		
		</script>



		<div class="clear"></div>
	<div class="" style="display:none;">
			전체개요
			<span class="totalWill">${summary.stateCount[0]}</span>
			<span class="totalIng">${summary.stateCount[1]}</span>
			<span class="totalDone">${summary.stateCount[2]}</span>
			<span class="totalTotal">${summary.stateCount[3]}</span>
			<hr/>
			
		
		
		
		<c:forEach items="${summary.partNames}" var="partName" varStatus="i">
			<span class="partNames">${partName}</span>
			
			<span class="partNamesWill">${summary.stateCountPerPart.get(i.index*1)[0]}</span>
			<span class="partNamesIng">${summary.stateCountPerPart.get(i.index*1)[1]}</span>
			<span class="partNamesDone">${summary.stateCountPerPart.get(i.index*1)[2]}</span>
			<span class="partNamesTotal">${summary.stateCountPerPart.get(i.index*1)[3]}</span>
	
		</c:forEach>
		<hr/>
		
		<c:forEach items="${summary.userNames}" var="userName" varStatus="i">
			<span class="userNames">${userName}</span>
			
			<span class="userNamesWill">${summary.stateCountPerUser.get(i.index*1)[0]}</span>
			<span class="userNamesIng">${summary.stateCountPerUser.get(i.index*1)[1]}</span> 
			<span class="userNamesDone">${summary.stateCountPerUser.get(i.index*1)[2]}</span>
			<span class="userNamesTotal">${summary.stateCountPerUser.get(i.index*1)[3]}</span> 
			
		</c:forEach>
		<hr/>
	
	
			<!-- ------------------- 값 넘어오는거 확인용----------------- -->
			<div class="testData" style="display:block">
			
				<div id="partsDiv"></div>
				<hr>
			
				<div id="unitsDiv"></div>
				<hr>
			
				<div id="clientDiv"></div>
				<hr>
			
				<div id="usersDiv"></div>
				<hr>
	
			
	
			</div>

	</div>
		
		
		
</div> <!-- main_section 안에 가로정한칸 -->
	


</section>

<div class="clear"></div>
<c:import url="../temp/footer.jsp"></c:import>


</body>
</html>