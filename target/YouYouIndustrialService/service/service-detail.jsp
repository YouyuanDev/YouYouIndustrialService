<%--
  Created by IntelliJ IDEA.
  User: Andrew Liu
  Date: 2018/12/13
  Time: 23:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="../assets/css/service/service.css">
    <style type="text/css">
    .page-container {
        margin-top: 88px;
    }
    .page-container {
        margin: 58px auto 0;
        margin-top: 58px;
        max-width: 1200px;
        width: 100%;
    }
    </style>
    <script src="../assets/js/vendor/jquery-1.11.2.min.js"></script>
    <script src="../assets/js/service-data.js"></script>
    <script type="text/javascript">
        $(function () {
            //window.location.href="b.html?valus="+getval;
            $('.service-content').html(eval(oneValues()));
        });
        function oneValues(){
            var result;
            var url=window.location.search;
            if(url.indexOf("?")!=-1){
                result = url.substr(url.indexOf("=")+1);
            }
            return result;
        }
    </script>
</head>
<body class="page">
<div class="page-container">
     <div class="service-content"></div>
     <jsp:include page="../common/connect.jsp"></jsp:include>
</div>
</body>
</html>
