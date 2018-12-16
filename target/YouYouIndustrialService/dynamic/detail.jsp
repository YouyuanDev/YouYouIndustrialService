<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="icon" type="image/png" href="favicon.ico">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Raleway:400,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
    <link rel="stylesheet" href="../assets/css/slick.css">
    <link rel="stylesheet" href="../assets/css/slick-theme.css">
    <link rel="stylesheet" href="../assets/css/animate.css">
    <link rel="stylesheet" href="../assets/css/fonticons.css">
    <link rel="stylesheet" href="../assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="../assets/css/bootstrap.css">
    <link rel="stylesheet" href="../assets/css/magnific-popup.css">
    <link rel="stylesheet" href="../assets/css/bootsnav.css">
    <link rel="stylesheet" href="../assets/css/style.css">
    <link rel="stylesheet" href="../assets/css/responsive.css" />
    <script src="../assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>

</head>
<body class="bg-color">
   <!--header-->
   <jsp:include page="../common/header.jsp"/>
   <div class="container bg-color">
       <div class="row" style="min-height:800px;">
           <div class="main_blog text-center roomy-100">
               <%--<div class="col-md-12 detail-title">--%>
                   <%--钢管涂层生产信息化控制系统APP-主页--%>
               <%--</div>--%>
               <%--<div class="col-md-12 detail-author-time">--%>
                    <%--<em class="detail-author">Top Inspector.&nbsp;</em><em class="detail-time">July 30, 2018</em>--%>
               <%--</div>--%>
               <%--<div class="col-md-12 detail-content">--%>
                  <%--<p>--%>
                      <%--钢管涂层生产信息化控制系统APP-主页--%>
                  <%--</p>--%>
               <%--</div>--%>
               <%--<div class="col-md-12 detail-imgList">--%>
                   <%--<div class="col-md-4 detail-img">--%>
                       <%--<img src="../assets/images/solution/IMG_7.PNG"/>--%>
                   <%--</div>--%>
               <%--</div>--%>

           </div>
       </div>
   </div>
   <jsp:include page="../common/footer.jsp"/>
   <!--End header-->
   <script src="../assets/js/vendor/jquery-1.11.2.min.js"></script>
   <script src="../assets/js/vendor/bootstrap.min.js"></script>
   <script src="../assets/js/jquery.magnific-popup.js"></script>
   <script src="../assets/js/jquery.easing.1.3.js"></script>
   <script src="../assets/js/slick.min.js"></script>
   <script src="../assets/js/jquery.collapse.js"></script>
   <script src="../assets/js/bootsnav.js"></script>
   <script src="../assets/js/plugins.js"></script>
   <script src="../assets/js/main.js"></script>
   <script src="../assets/js/jparticle.jquery.min.js"></script>
   <script type="text/javascript">
       $(function () {
           //setHeaderColor();
           setShowHeader();
           //根据参数显示不同的信息
           var param=GetQueryString("detailId");
           if(param!=undefined&&param!=null){
               $.getJSON("../data/dynamic.json",function(data){
                   for(var i=0;i<data.length;i++){
                       if(data[i].id==param){
                           $('.main_blog').append(makeTemplate(data[i].title,data[i].author,data[i].content,data[i].imgList,data[i].datetime));
                       }
                   }
               });
           }
       });
       function makeTemplate(title,author,content,imgList,datetime) {
           var imgArr=imgList.split(';');
           var tempalte='<div class="col-md-12 detail-title">'+
               ''+title+''+
               '</div>'+
               ' <div class="col-md-12 detail-author-time">'+
               '<em class="detail-author">'+author+'&nbsp;</em><em class="detail-time">'+datetime+'</em>'+
               '</div>'+
               '<div class="col-md-12 detail-content">'+
               '<p>'+
               ''+content+''+
               '</p>'+
               '</div>'+
               '<div class="col-md-12 detail-imgList">';
           for (var i=0;i<imgArr.length;i++) {
               if(imgArr[i]!=undefined&&imgArr[i]!=""){
                   tempalte+='<div class="col-md-4"></div><div class="col-md-4 detail-img">'+
                       '<img src="'+imgArr[i]+'"/>'+
                       '</div><div class="col-md-4"></div>';
               }
           }
           tempalte+='</div>';
           return tempalte;
       }
   </script>
</body>
</html>
