<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.mentoring.domain.Interview"%>
<!DOCTYPE html>
<html>
  <head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://unpkg.com/d3-milestones/build/d3-milestones.css">
    <script src="https://unpkg.com/d3-milestones/build/d3-milestones.min.js"></script>
    

  </head>
  <body>
    <div class="card">
      <div class="card-header">기자회견 조회하기</div>
      <div class="card-body">
        <form action="show">
          <div class="form-group">
            <div class="row">
              <div class="col">
                <input type="text" name="from_date" id="from_date" class="form-control" value="${from_date }" placeholder="YYYY-mm-dd">
              </div>
              <div class="col">
                <input type="text" name="to_date" id="to_date" class="form-control" value="${to_date }"placeholder="YYYY-mm-dd">
              </div>
              <div class="col">
                <input type="text" name="name" id="name" class="form-control" value="${name }"placeholder="이름">
              </div>
              <div class="col">
                <input type="text" name="party" id="party" class="form-control" value="${party }"placeholder="정당명">
              </div>
              <div class="col">
                <button type="submit" class="btn btn-primary">조회</button>
              </div>
            </div>
          </div>
        </form>
      </div>
    </div>
    
    <div id="title" style="text-align: center; font-size: 16px; font-weight: bold; margin: 12px 0px;">
      <span>
    <c:choose>
      <c:when test="${not empty name }">
        <c:set var="title">${name } 기자회견 타임라인</c:set>
      </c:when>
      <c:when test="${not empty party }">
        <c:set var="title">${party } 기자회견 타임라인</c:set>
      </c:when>
      <c:when test="${not empty from_date and not empty to_date}">
        <c:set var="title">${from_date } ~ ${to_date } 타임라인</c:set>
      </c:when>
      <c:when test="${not empty from_date }">
        <c:set var="title">${from_date } 이후 타임라인</c:set>
      </c:when>
      <c:when test="${not empty to_date }">
        <c:set var="title">${to_date } 이전 타임라인</c:set>
      </c:when>
      <c:otherwise>
        <c:set var="title">전체 타임라인</c:set>
      </c:otherwise>
    </c:choose>
    ${title}
  </span>
    </div>
    
    <c:set var="height" value="${listcount * 40}"/>
    <c:if test="${height < 550}">
  		<c:set var="height" value="550"/>
	</c:if>
    
    <!-- #wrapper의 height는 600px로 고정 -->
    <div id="wrapper" style="overflow: auto; position: relative; height: 600px;">
      <!-- d3-milestones를 이용해서 타임라인을 출력하는 영역(조회된 기자회견 개수 * 40px로 height를 동적으로 설정할 것, 최소값: 550px) -->
      <div id="timeline" style="height: ${height}px;"></div>
    </div>

    
    <script>
   
   milestones('#timeline')
    .mapping({
      'timestamp': 'day',
      'text': 'title'      
    })
 	 	
   		.parseTime('%Y-%m-%d')
        .aggregateBy('day')
        .optimize(true)
        .orientation('vertical')
   		 .render([
		<c:forEach var="i" items="${interviewlist}">
		{ day: '${i.date}', title: '${i.title}' },
		</c:forEach>
		
		  ].slice(0, -1));
   
  
</script>
  </body>
</html>