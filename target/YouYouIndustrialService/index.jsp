<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!--[if lt IE 7]>
<html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>
<html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>
<html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!-->
<html class="no-js" lang="en">
<!--<![endif]-->

<head>
    <meta charset="utf-8">
    <title>佑佑工业服务</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" type="image/png" href="favicon.ico">
    <!--Google Font link-->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Raleway:400,600,700" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/slick.css">
    <link rel="stylesheet" href="assets/css/slick-theme.css">
    <link rel="stylesheet" href="assets/css/animate.css">
    <link rel="stylesheet" href="assets/css/fonticons.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    <link rel="stylesheet" href="assets/css/bootsnav.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/responsive.css"/>
    <link rel="stylesheet" href="assets/css/slider/slider.css">
    <link rel="stylesheet" href="assets/css/index/index.css">
    <script src="assets/js/vendor/modernizr-2.8.3-respond-1.4.2.min.js"></script>

    <!---->
</head>

<body data-spy="scroll" data-target=".navbar-collapse">
<!-- Preloader -->
<div id="loading">
    <div id="loading-center">
        <div id="loading-center-absolute">
            <div class="object" id="object_one"></div>
            <div class="object" id="object_two"></div>
            <div class="object" id="object_three"></div>
            <div class="object" id="object_four"></div>
        </div>
    </div>
</div>
<!--End off Preloader -->

<div class="culmn">
    <!--Home page style-->
    <jsp:include page="common/header.jsp"/>
    <!--首页 Sections-->
    <section id="hello" class="home bg-mega">
        <div class="js-silder">
            <div class="silder-scroll">
                <div class="silder-main">
                    <div class="silder-main-img">
                        <img src="assets/images/home/home1.jpg" alt="" height="800">
                    </div>
                    <div class="silder-main-img">
                        <img src="assets/images/home/home2.jpg" alt="" height="800">
                    </div>
                    <div class="silder-main-img">
                        <img src="assets/images/home/home3.jpg" alt="" height="800">
                    </div>
                    <div class="silder-main-img">
                        <img src="assets/images/home/home4.jpg" alt="" height="800">
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!--End off Home Sections-->

    <!--功能与服务Section-->
    <section id="production" class="production lightbg">
        <div class="container">
            <div class="row">
                <section class="mod mod-services">
                    <div class="mod__content">
                    </div>
                    <ul class="tabs has--active">
                        <li class="tab  is--active">
                            <a onclick="navigatorFun(this,'scfw.jsp')"><span class="tab__title">生产服务</span></a>
                        </li>
                        <li class="tab ">
                            <a onclick="navigatorFun(this,'ssfw.jsp')"><span class="tab__title">设施服务</span></a>
                        </li>
                        <li class="tab ">
                            <a onclick="navigatorFun(this,'gylfw.jsp')"><span class="tab__title">供应链服务</span></a>
                        </li>
                    </ul>
                </section>
                <div id="content_right">
                    <jsp:include page="common/service/scfw.jsp"/>
                </div>
                <jsp:include page="common/connect.jsp"/>
            </div>
        </div>
    </section>
    <!--End off row-->
</div>
<!--End off container -->

<!--解决方案Section-->


<!--动态Section-->
<section id="blog" class="blog">
    <div class="container">
        <div class="row">
                <section class="mod mod-image-box " style="min-height:330px;">
                <div class="box__image__default" style="background-image: url(assets/images/background/bg10.jpg);">
                    <img src="assets/images/background/bg10.jpg" alt="" style="display: none;"></div>
                <div class="box__content__default  va-center-lg">
                    <h2 id="-" class="hl h2">
                        <i class="lvi-copy"></i>佑佑工业服务中国 新闻中心</h2>
                    <span><p>我们将持续更新。您可以在这里找到佑佑工业服务中国的最新资讯。</p></span>
                </div>
            </section>
                <section class="mod mod-generic" id="">
                    <div class="mod__content">
                        <h2 id="">
                            <i class="lvi-copy" ></i>新闻</h2>
                        <span><p>在中国自2017年9月起，佑佑工业服务已更名为佑佑工业服务。因此，您将看到在众多新闻中仍使用佑佑这一名称。</p></span>
                    </div>
                </section>
                <section class="mod mod-generic">
                    <div class="mod__content">
                        <p class="teaser__more thin">
                            <a  data-url="news1" onclick="navigationNews(this)" target="_blank">
                                <span>2017-3-21: 佑佑工业服务荣获一汽-大众成都发动机厂优秀服务商奖</span> <i class="lvi-angle-right"></i>
                            </a>
                        </p>
                        <p class="teaser__more thin">
                            <a  data-url="news2" onclick="navigationNews(this)" target="_blank">
                                <span>2016-11-8: 佑佑工业服务中国与卡尔迈耶成功续签合同</span> <i class="lvi-angle-right"></i>
                            </a>
                        </p>
                        <p class="teaser__more thin">
                            <a data-url="news3" onclick="navigationNews(this)" target="_blank">
                                <span>2016-7-18: 佑佑工业服务（中国）在 VWPT 供应商大会上荣获杰出服务金奖 </span> <i class="lvi-angle-right"></i>
                            </a>
                        </p>
                        <p class="teaser__more thin">
                            <a data-url="news4" onclick="navigationNews(this)" target="_blank">
                                <span>2016-5-8: 佑佑工业服务荣获 2015 年度大众一汽发动机 优秀供应商奖 </span> <i class="lvi-angle-right"></i>
                            </a>
                        </p>
                        <p class="teaser__more thin">
                            <a  data-url="news5" onclick="navigationNews(this)" target="_blank">
                                <span>2015-11-26: 佑佑工业服务荣获 2014 年度北京奔驰优秀供应商奖</span> <i class="lvi-angle-right"></i>
                            </a>
                        </p>
                        <p class="teaser__more thin">
                            <a data-url="news6" onclick="navigationNews(this)" target="_blank">
                                <span>2015-9-8: 佑佑工业技术服务与采埃孚南京订立合同</span> <i class="lvi-angle-right"></i>
                            </a>
                        </p>
                        <p class="teaser__more thin">
                            <a data-url="news7" onclick="navigationNews(this)" target="_blank">
                                <span>2015-07-24: 佑佑在常熟建立服务于豪华汽车的轮毂轮胎装配新工厂</span> <i class="lvi-angle-right"></i>
                            </a>
                        </p>
                        <p class="teaser__more thin">
                            <a data-url="news8" onclick="navigationNews(this)" target="_blank">
                                <span>2015-7-13: 佑佑工业服务为沃尔沃张家口发动机基地提供服务</span> <i class="lvi-angle-right"></i>
                            </a>
                        </p>
                    </div>
                </section>
        </div>
        <!--End off row -->
    </div>
    <!--End off container -->
</section>
<!-- End off Blog section-->

<!--关于我们Sections-->
<section id="about" class="about roomy-100">
    <div class="container">
        <div class="row">
            <section class="mod mod-image-box " id="">
                <div class="box__image__default" style="background-image: url(&quot;/export/sites/佑佑cn/.galleries/Ueber-佑佑/China_Home_neu.jpg_1676247496.jpg&quot;);">
                    <img src="/export/sites/佑佑cn/.galleries/Ueber-佑佑/China_Home_neu.jpg_1676247496.jpg" alt="Mitarbeiter in China" style="display: none;"></div>
                <div class="box__content__default  va-center-lg">
                    <h2 id="" class="hl h2">
                        <i class="lvi-copy" data-anchor="/zh/佑佑-in-china/index.html#"></i>佑佑工业服务在中国</h2>
                    <span><p class=" ">自1998年进入中国以来，佑佑工业服务中国凭借其独特的定制化服务组合方案及丰富的全球资源，为客户提供全面的一体化工业服务解决方案。我们帮助客户最大程度地专注于自身的核心业务。佑佑工业服务中国拥有1,600多名经验丰富的员工，在全国20多个城市，50多个服务基地，为众多知名外资及本土企业提供高品质的工业服务。</p></span>
                </div>
            </section>
                <section class="mod mod-generic" id="">
                    <div class="mod__content">
                        <h2 id="">
                            <i class="lvi-copy" data-anchor="/zh/佑佑-in-china/index.html#"></i>我们加倍努力</h2>
                        <span><p>佑佑工业服务中国公司隶属于佑佑集团。佑佑集团在全球200多个城市及地区，拥有20,000多位员工，是全球领先的工业技术服务供应商之一。</p>
<ul>
<li>行业的发展进步需要一个未雨绸缪的服务供应商来推动，因此，我们成立了佑佑：全球制造业的服务供应商。</li>
<li>2017年1月，衍生自佑佑工业服务的佑佑虽然是一个全新的品牌，但却拥有50多年的服务经验。</li>
<li>我们将辅助性流程作为我们的核心业务，为客户分忧解难，确保客户可以全力以赴地注重他们的核心业务。</li>
<li>我们的服务致力于使客户可以保持领先地位。凭借我们对技术的热爱及汽车行业的专业知识和长期经验，我们可以支持全球各地的制造商和供应商，保证其生产更可靠、更高效和更理想。</li>
<li>因为我们为业内领先的公司提供服务，我们掌握了丰富的知识和创新的流程。</li>
<li>我们的全球网络得益于持续的专业技术知识的共享。</li>
</ul></span>
                    </div>
                </section>
                <section class="mod mod-generic" id="">
                    <div class="mod__content">
                        <h2 id="">
                            <i class="lvi-copy" data-anchor="/zh/佑佑-in-china/index.html#"></i>为客户提升竞争优势</h2>
                        <span><ul>
<li>确保流程顺畅运转</li>
<li>有效改进产品质量</li>
<li>降低故障率</li>
<li>提高工作效率</li>
<li>精简不必要的人员花费</li>
<li>降低能耗&nbsp;</li>
</ul></span>
                    </div>
                </section>
                <section class="mod mod-generic" id="">
                    <div class="mod__content">
                        <h2 id="">
                            <i class="lvi-copy" data-anchor="/zh/佑佑-in-china/index.html#"></i>不断拓宽自身知识面</h2>
                        <h3 id="">
                            <i class="lvi-copy" data-anchor="/zh/佑佑-in-china/index.html#"></i>佑佑工业服务与华东理工大学的合作</h3>
                        <span><p>拥有技术专长和丰富实践经验的高素质人才，是持续向客户提供增值服务的必备条件。因此，佑佑工业服务中国建立了全球业务网络及人才发展系统。我们定制、开发了一整套适应本土员工发展的管理模式：我们将专家讲座与实践运作相结合，将国际技术与本地运营相结合。另外，为了提高员工的技术能力，我们还在2010年与华东理工大学合作建立了工业人才培训中心。</p></span>
                        <h3 id="">
                            <i class="lvi-copy" data-anchor="/zh/佑佑-in-china/index.html#"></i>我们的培训体系</h3>
                        <span><p>通过不断的员工培训有助于实现运营团队的持续发展。定制化的培训课程由外部培训和内部培训组成。外部培训是指通过外部技术资源传授设备及生产方面的专业知识，而内部培训包括：维护流程学习、经验分享、案例讨论、技术指导、设备维修实践等。此外，佑佑工业服务中国与华东理工大学的合作——在该大学建立了工业人才培训中心。基于这个平台，我们能够通过基础的入门指导课程来培训新员工，令其具备专业资质；同时为现有员工提供各种最新工业维护及设备知识培训，以提升他们的技术和个人能力。</p></span>
                    </div>
                </section>
            <section id="portfolio" class="portfolio lightbg">
                <div class="container">
                    <div class="row">
                        <section class="mod mod-image-box " id="">
                            <div class="box__image__default" style="background-image: url(&quot;/export/sites/佑佑cn/.galleries/Ueber-佑佑/China_Home11_neu.jpg_1020881629.jpg&quot;);">
                                <img src="/export/sites/佑佑cn/.galleries/Ueber-佑佑/China_Home11_neu.jpg_1020881629.jpg" alt="Mitarbeiter 佑佑" style="display: none;"></div>
                            <div class="box__content__default  va-center-lg">
                                <h2 id="" class="hl h2">
                                    <i class="lvi-copy" data-anchor="/zh/career/index.html#"></i>成功的最佳选择</h2>
                                <span><p>您是否希望迎接新挑战？请联系佑佑工业服务。我们为有经验的从业者在一个国际化商业团队中提供各种绝佳机会。</p></span>
                            </div>
                        </section>
                        <section class="mod mod-generic" id="">
                            <div class="mod__content">
                                <h2 id="">
                                    <i class="lvi-copy" data-anchor="/zh/career/index.html#"></i>员工是我们最大的财富</h2>
                                <span><p>我们为生产相关流程提供支持，致力于流程优化。为此，我们与客户建立了密切的合作关系并成为其长期合作伙伴。这也意味着，我们与客户及其全球性需求一起发展成长。</p>
<p>团队员工的敬业精神和专业技能是我们成功的关键。我们重视和鼓励培训、独立决策和团队精神，这也是不断开发新的解决方案来满足客户需求的唯一途径。</p></span>
                                <h3 id="">
                                    <i class="lvi-copy" data-anchor="/zh/career/index.html#"></i>想要加入我们的队伍吗？</h3>
                                <span><p>请登录<a title="佑佑工业服务中国招聘网站" href="http://佑佑.51job.com" target="_blank">佑佑.51job.com</a>获取更多信息。</p>
<p>或请发送简历至<a href="mailto:job.cn@佑佑-services.com">job.cn@佑佑-services.com</a>。</p></span>
                            </div>
                        </section>
                    </div>
                    <!--End off row -->
                </div>
                <!--End off container -->
            </section>
            <!-- End off Portfolio section-->



                <section class="mod mod-generic" id="">
                    <div class="mod__content">
                        <h3 id="">
                            <i class="lvi-copy" data-anchor="/zh/佑佑-in-china/index.html#"></i>想了解更多？</h3>
                        <span><p>请发邮件至 <a href="255555@qq.com">255555@qq.com</a>。我们很高兴收到你的来信。</p></span>
                    </div>
                </section>
        </div>
        <!--End off row-->
    </div>
    <!--End off container -->
</section>
<!--End off About section -->

<!--联系我们Section-->
<section id="contact" class="contact bg-mega fix">
    <div class="container">
        <div class="row">
            <section class="mod mod-image-box " id="">
                <div class="box__image__default" style="background-image: url(&quot;/export/sites/佑佑cn/.galleries/Ueber-佑佑/China_Home4_neu.jpg_669469808.jpg&quot;);">
                    <img src="" alt="Mitarbeiter China" style="display: none;"></div>
                <div class="box__content__default  va-center-lg">
                    <h2 id="" class="hl h2">
                        <i class="lvi-copy" data-anchor="/zh/contact/index.html#"></i>想了解更多？</h2>
                    <span><p>请留言或致电。我们很高兴收到你的来信。</p></span>
                </div>
            </section>
                <section class="mod mod-generic" id="佑佑">
                    <div class="mod__content">
                        <h3 id="">
                            <i class="lvi-copy" data-anchor="/zh/contact/index.html#"></i>佑佑工业技术服务（上海）有限公司</h3>
                        <span><p>地址：上海市***1801号</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 漕河泾经济技术开发区&nbsp;&nbsp;&nbsp;&nbsp;</p>
<p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 凯科国际5楼 1001</p>
<p>电话：+ 86 21 3367 8811<br>传真：+ 86 21 3367 8072<br><a href="mailto:info-china@佑佑-services.com">info-china@佑佑-services.com</a>&nbsp;</p>
<p>&nbsp;</p>
<p>简历请发送至<a href="33333@.com">33333@.com</a>&nbsp;</p></span>
                        <h3 id="佑佑">
                            <i class="lvi-copy" data-anchor="/zh/contact/index.html#佑佑"></i>佑佑遍布全球</h3>
                        <span><p>佑佑工业服务中国公司属于佑佑集团。佑佑集团在全球200多个地点拥有20,000多位员工，是全球领先的工业技术服务供应商之一。</p></span>
                        <p class="teaser__more thin">
                            <a href="https://www.佑佑-services.com/en/our-locations/" target="_blank">
                                <span>我们分布在全球的地点...</span> <i class="lvi-angle-right"></i>
                            </a>
                        </p>
                    </div>
                </section>
        </div>
        <!--End off row -->
    </div>
    <!--End off container -->
</section>
<!--End off Contact Section-->

<!-- scroll up-->
<div class="scrollup">
    <a href="#"><i class="fa fa-chevron-up"></i></a>
</div>
<!-- End off scroll up -->

<jsp:include page="common/footer.jsp"/>
</div>

<!-- JS includes -->
<script src="assets/js/vendor/jquery-1.11.2.min.js"></script>
<script src="assets/js/vendor/bootstrap.min.js"></script>

<script src="assets/js/jquery.magnific-popup.js"></script>
<script src="assets/js/jquery.easing.1.3.js"></script>
<script src="assets/js/slick.min.js"></script>
<script src="assets/js/jquery.collapse.js"></script>
<script src="assets/js/bootsnav.js"></script>
<!-- paradise slider js -->
<script src="assets/js/plugins.js"></script>
<script src="assets/js/main.js"></script>
<script src="assets/js/jparticle.jquery.min.js"></script>
<script src="assets/js/slider/wySilder.min.js"></script>
<script type="text/javascript">
    $(function () {
        $(".js-silder").silder({
            auto: true,//自动播放，传入任何可以转化为true的值都会自动轮播
            speed: 25,//轮播图运动速度
            sideCtrl: true,//是否需要侧边控制按钮
            defaultView: 0,//默认显示的索引
            interval: 3000,//自动轮播的时间，以毫秒为单位，默认3000毫秒
            activeClass: "active",//小的控制按钮激活的样式，不包括作用两边，默认active
        });
        var height = $(window).height();
        $('.silder-main').css('height', height - 50 + 'px');
        $('.silder-main img').css('height', height - 50 + 'px');
        //
    });
    function navigatorFun(obj,name) {
        var $obj=$(obj);
        $obj.parent('li').addClass('is--active');
        $obj.parent('li').siblings('li').removeClass('is--active');
        $("#content_right").empty();
        $("#content_right").load("common/service/"+name);
    }
    //服务导航
    function navigationService(obj) {
        var param=$(obj).attr('data-url');
        window.location.href="service/service-detail.jsp?param="+param;
    }
    //新闻导航
    function navigationNews(obj) {
        var param=$(obj).attr('data-url');
        window.location.href="news/news.jsp?param="+param;
    }
</script>
</body>

</html>