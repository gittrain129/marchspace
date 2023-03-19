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
                <input type="text" name="from_date" id="from_date" class="form-control" placeholder="YYYY-mm-dd">
              </div>
              <div class="col">
                <input type="text" name="to_date" id="to_date" class="form-control" placeholder="YYYY-mm-dd">
              </div>
              <div class="col">
                <input type="text" name="name" id="name" class="form-control" placeholder="이름">
              </div>
              <div class="col">
                <input type="text" name="party" id="party" class="form-control" placeholder="정당명">
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
      <span>타임라인 제목 영역</span>
    </div>
    <!-- #wrapper의 height는 600px로 고정 -->
    <div id="wrapper" style="overflow: auto; position: relative; height: 600px;">
      <!-- d3-milestones를 이용해서 타임라인을 출력하는 영역(조회된 기자회견 개수 * 40px로 height를 동적으로 설정할 것, 최소값: 550px) -->
      <div id="timeline" style="height: 550px;"></div>
    </div>

    
    <script>
    <%List<Interview> interviewlist = (List<Interview>) request.getAttribute("interviewlist");%>
    
   milestones('#timeline')
    .mapping({
      'timestamp': 'day',
      'text': 'title'      
    })
 	 	
   		.parseTime('%Y-%m-%d')
        .aggregateBy('day')
        .optimize(true)
   		 .render([
     			
      			<%if (interviewlist != null) {%>
      			
      			<%for (Interview v : interviewlist) {%>
      			{ 'day': <%=v.getDate()%>, title: '<%=v.getTitle()%>' },
	     
    			  <%}
      		      }%>
    			]);
   
   
   
</script>
  </body>
</html>