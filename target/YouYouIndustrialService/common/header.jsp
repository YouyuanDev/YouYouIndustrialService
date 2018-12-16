<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<nav class="navbar navbar-default navbar-fixed white no-background bootsnav">
    <!-- Start Top Search -->
    <div class="top-search">
        <div class="container">
            <div class="input-group">
                <span class="input-group-addon"><i class="fa fa-search"></i></span>
                <input id="search-input" type="text" class="form-control" placeholder="Search">
                <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
            </div>
        </div>
    </div>
    <!-- End Top Search -->
    <div class="container">
        <!-- Start Atribute Navigation -->
        <div class="attr-nav">
            <ul>
                <!--<li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <i class="fa fa-shopping-bag"></i>
                        <span class="badge">3</span>
                    </a>
                    <ul class="dropdown-menu cart-list">
                        <li>
                            <a href="#" class="photo"><img src="assets/images/thumb01.jpg" class="cart-thumb" alt="" /></a>
                            <h6><a href="#">Delica omtantur </a></h6>
                            <p class="m-top-10">2x - <span class="price">$99.99</span></p>
                        </li>
                        <li>
                            <a href="#" class="photo"><img src="assets/images/thumb01.jpg" class="cart-thumb" alt="" /></a>
                            <h6><a href="#">Delica omtantur </a></h6>
                            <p class="m-top-10">2x - <span class="price">$99.99</span></p>
                        </li>
                        <li>
                            <a href="#" class="photo"><img src="assets/images/thumb01.jpg" class="cart-thumb" alt="" /></a>
                            <h6><a href="#">Delica omtantur </a></h6>
                            <p class="m-top-10">2x - <span class="price">$99.99</span></p>
                        </li>
                        <li class="total">
                            <span class="pull-right"><strong>Total</strong>: $0.00</span>
                            <a href="#" class="btn btn-cart">Cart</a>
                        </li>
                    </ul>
                </li>-->
                <li class="search">
                    <a href="#"><i class="fa fa-search"></i></a>
                </li>
                <%--<li class="side-menu">--%>
                <%--<a href="#"><i class="fa fa-bars"></i></a>--%>
                <%--</li>--%>
            </ul>
        </div>
        <!-- End Atribute Navigation -->

        <!-- Start Header Navigation -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#navbar-menu">
                <i class="fa fa-bars"></i>
            </button>
            <a class="navbar-brand" href="../index.jsp">
                <img src="assets/images/logo.png" class="logo logo-display" alt="" width="400" height="80">
                <img src="assets/images/logo.jpg" class="logo logo-scrolled" alt="" width="400" height="80">
                <%--<img src="../assets/images/logo.jpg" class="logo logo-scrolled" alt="">--%>
            </a>
        </div>
        <!-- End Header Navigation -->
        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="navbar-menu">
            <ul class="nav navbar-nav navbar-right" data-in="fadeInDown" data-out="fadeOutUp">
                <li class="normal-li">
                    <a href="#hello">主页</a>
                </li>
                <li class="normal-li">
                    <a href="#production" onclick="openFunctionAndService()">功能与服务</a>
                </li>
                <%--<li class="normal-li">--%>
                    <%--<a href="#portfolio">解决方案</a>--%>
                <%--</li>--%>
                <li class="normal-li">
                    <a href="#blog" onclick="openCompanyBlog()">动态</a>
                </li>
                <li class="normal-li">
                    <a href="#about">关于我们</a>
                </li>
                <li class="normal-li">
                    <a href="#contact">联系我们</a>
                </li>
                <li class="return-index">
                    <a href="javascript:;" id="back-last-page"><i class="fa fa-reply"></i>&nbsp;返回</a>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </div>
</nav>
</body>
</html>
