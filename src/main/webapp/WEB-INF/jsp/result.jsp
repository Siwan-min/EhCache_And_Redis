<!doctype html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<html lang='UTF-8'>
<title>MOBON SHOP DATA</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<head>
    <style type="text/css">
        body {
            background: #fafafa url(https://jackrugile.com/images/misc/noise-diagonal.png);
            color: #444;
            font: 100%/30px 'Helvetica Neue', helvetica, arial, sans-serif;
            text-shadow: 0 1px 0 #fff;
        }

        strong {
            font-weight: bold;
        }

        em {
            font-style: italic;
        }

        /*table {*/
        /*    background: #f5f5f5;*/
        /*    border-collapse: separate;*/
        /*    box-shadow: inset 0 1px 0 #fff;*/
        /*    font-size: 12px;*/
        /*    line-height: 24px;*/
        /*    margin: 30px auto;*/
        /*    text-align: left;*/
        /*    width: 800px;*/
        /*}*/
        th {
            background: url(https://jackrugile.com/images/misc/noise-diagonal.png), linear-gradient(#777, #444);
            border-left: 1px solid #555;
            border-right: 1px solid #777;
            border-top: 1px solid #555;
            border-bottom: 1px solid #333;
            box-shadow: inset 0 1px 0 #999;
            color: #fff;
            font-weight: bold;
            padding: 10px 15px;
            position: relative;
            text-shadow: 0 1px 0 #000;
        }

        th:after {
            background: linear-gradient(rgba(255, 255, 255, 0), rgba(255, 255, 255, .08));
            content: '';
            display: block;
            height: 25%;
            left: 0;
            margin: 1px 0 0 0;
            position: absolute;
            top: 25%;
            width: 100%;
        }

        th:first-child {
            border-left: 1px solid #777;
            box-shadow: inset 1px 1px 0 #999;
        }

        th:last-child {
            box-shadow: inset -1px 1px 0 #999;
        }

        td {
            border-right: 1px solid #fff;
            border-left: 1px solid #e8e8e8;
            border-top: 1px solid #fff;
            border-bottom: 1px solid #e8e8e8;
            padding: 10px 15px;
            position: relative;
            transition: all 300ms;
        }

        td:first-child {
            box-shadow: inset 1px 0 0 #fff;
        }

        td:last-child {
            border-right: 1px solid #e8e8e8;
            box-shadow: inset -1px 0 0 #fff;
        }

        tr {
            background: url(https://jackrugile.com/images/misc/noise-diagonal.png);
        }

        tr:nth-child(odd) td {
            background: #f1f1f1 url(https://jackrugile.com/images/misc/noise-diagonal.png);
        }

        tr:last-of-type td {
            box-shadow: inset 0 -1px 0 #fff;
        }

        tr:last-of-type td:first-child {
            box-shadow: inset 1px -1px 0 #fff;
        }

        tr:last-of-type td:last-child {
            box-shadow: inset -1px -1px 0 #fff;
        }

        tbody:hover td {
            color: transparent;
            text-shadow: 0 0 3px #aaa;
        }

        tbody:hover tr:hover td {
            color: #444;
            text-shadow: 0 1px 0 #fff;
        }
    </style>


    <script type="text/javascript">
        $(document).on('click', '#resetBtn', function (e) {
            $.ajax({
                url: '/',
                type: 'GET',
                success: function (data) {
                    alert("캐시를 삭제했습니다");
                },
                error: function () {
                    alert("실패");
                }
            });
        });
    </script>
    <%--</head>--%>

</head>

<style>
    iframe {
        overflow: hidden;
        float: left;
    }

    .art_bg0 {
        background: #E8E0CB;
    }

    .index_headline .mtype_img {
        width: 341px;
        height: 250px;
        position: relative;
    }

    .index_headline .mtype_img img {
        vertical-align: top
    }

    .index_headline .mtype_img dt .trans_border {
        width: 341px;
        _width: 341px;
        height: 250px;
        _height: 250px;
    }

    .index_headline .mtype_img {
        overflow: hidden;
        width: 341px;
        height: 250px;
    }

    .index_headline .mtype_img dd {
        position: absolute;
        bottom: -2px;
        *bottom: -1px;
        left: 0;
        width: 341px;
        *width: 341px;
        padding: 6px 7px 3px 6px;
    }

    .index_headline .mtype_img dd:after {
        content: "";
        display: block;
        clear: both;
    }

    .index_headline .mtype_img dd p {
        overflow: hidden;
        zoom: 1;
        position: relative;
        z-index: 2;
    }

    .index_headline .mtype_img dd .box_trans {
        position: absolute;
        top: 0;
        left: 0;
        width: 341px;
        height: 250px;
        background: #000;
        filter: alpha(opacity=65);
        opacity: 0.65;
        -moz-opacity: 0.65;
    }

    .index_headline .mtype_img dd a {
        display: block;
        color: #fff !important;
        text-decoration: none;
        font-family: dotum, gulim;
        font-size: 18px;
        line-height: 22px;
        font-weight: bold;
        letter-spacing: -1px;
    }

    A#a567 {
        font-family: "굴림";
        font-size: 11pt;
        font-weight: bold;
        color: #ffaf15;
        text-decoration: none;
    }

</style>

<center>


    <body leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">

    <style>
        /*body{min-height:1000px;}*/
        .centeringContainer {
            text-align: center;
            margin-top: 5px;
            margin-bottom: 5px;
            height: 90px;
            overflow: hidden;
        }

        .centered {
            display: table;
            margin: 0 auto;
            display: inline-block;
        }
    </style>

    <script type="text/javascript">
        var oldGnb = '';

        function gnbOn(obj, id) {
            if (oldGnb) oldGnb.style.display = "none";
            var p = document.getElementById(id);
            p.style.display = "";
            oldGnb = p;
        }

        function gnbOff(obj, id) {
        }
    </script>

    <div class="centeringContainer">
        <span class="centered">
            <span class="item" style="display:block;">
                <script>
                         (function () {
                                 var b = !1, c = "//www.mediacategory.com/servlet/adBanner?from="
                                     + escape(document.referrer) + "&s=13291&iwh=728_90&igb=60&cntad=3&cntsr=3"
                                     , d = function () {
                                     b = !0;
                                     document.getElementById("mobonDivBanner_13291").innerHTML
                                         = "<iframe name='ifrad' width='728' height='90' id='mobonIframe_13291' src='"
                                         + c + "' frameBorder='0' marginWidth='0' marginHeight='0' scrolling='no' ></iframe>"
                                 };
                                 try {
                                     document.write("<div id='mobonDivBanner_13291'></div>");
                                     var e = setTimeout(d, 1E3), f = document.getElementsByTagName("head").item(0),
                                         a = document.createElement("script");
                                     a.src = "//cdn.megadata.co.kr/js/media/1.1/MBSHandler.js";
                                     a.type = "text/javascript";
                                     a.async ? a.async = !0 : a.defer = !0;
                                     a.onload = function () {
                                         !0 !== b && (clearTimeout(e),
                                             enlipleMBSHandler(
                                                 enlipleMBSHandler.getProductTypeCode("banner")
                                                 , enlipleMBSHandler.getWebCode(), 13291
                                             ).createBanner(c, "728", "90"))
                                     };
                                     f.appendChild(a)
                                 } catch (g) {
                                     d()
                                 }
                             }
                         )();
                </script>
            </span>
        </span>
    </div>

    <table width="100%" border="0" cellpadding="0" cellspacing="0" align=center>

        <tr valign="top">
            <td align="center">

                <style>
                    .top_area {
                        width: 1001px;
                        position: relative;
                        padding: 0;
                        margin: 0 auto;
                        background: url(//photo.newsen.com/images/2017/top_menu_bg.gif) no-repeat;
                    }

                    .top_area .top_menu {
                        width: 1001px;
                        height: 38px !important;
                        position: relative;
                        padding-left: 15px;
                    }

                    .top_area .top_menu li.navitem {
                        display: inline-block;
                        width: 110px;
                        text-align: center;
                        float: left;
                        height: 38px !important;
                        overflow: hidden;
                    }

                    .top_area .top_menu .navitem .m_01_01 {
                    }

                    .top_area .top_menu li.navitem a {
                    }

                    .top_area .navcontent {
                        position: absolute;
                        z-index: 1;
                        top: 38px;
                        left: 0px;
                        width: 981px;
                        border: 5px solid #FC7700;
                        background: #F1ECD9;
                        text-align: left;
                        padding: 5px;
                        display: none;
                    }

                    .top_area .navcontent .subM_01 {
                        min-height: 12px;
                    }

                    .top_area .navcontent .subM_01 li {
                        display: inline-block;
                        padding: 0 10px;
                        padding-left: 10px;
                    }

                    .top_area .navcontent .subM_01 li a {
                        color: #161616;
                        font-weight: bold;
                        font-family: daum;
                        font-size: 14px;
                    }

                    .top_area .search_area {
                        position: absolute;
                        top: 10px;
                        right: 18px;
                        width: 171px;
                    }
                </style>

                <script
                        src="https://code.jquery.com/jquery-3.4.1.js"
                        integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
                        crossorigin="anonymous"></script>

                <script>
                    $(function () {
                        $gnb = $("#gnb");
                        $gnbList = $("#gnb > li.navitem ");

                        $gnbList.on({
                            mouseover: function () {
                                $gnbList.find(".navcontent").hide();
                                $(this).find(".navcontent").show();//.slidedown(300);
                            }
                        });

                        $gnb.on({
                            mouseleave: function () {
                                $gnbList.find(".navcontent").slideUp(300);
                            }
                        });
                    });
                </script>
            </td>
        </tr>
    </table>


    <style>
        #banner_wrap {
            width: 1001px;
            margin: 0 auto;
            text-align: left;
        }

        #banner_wrap {
            float: none;
            clear: both;
            z-index: 1;
            margin-top: 0px;
        }

        #banner_wrap {
            position: relative;
        }

        #left_banner {
            width: 160px;
            position: absolute;
            left: -210px;
            top: 7px;
            z-index: 10
        }

        #left_banner td {
        }

        #right_banner {
            width: 160px;
            position: absolute;
            right: -180px;
            top: 7px;
            z-index: 10
        }

        #right_banner td {
            text-align: left;
        }
    </style>
    <div id='banner_wrap'>
        <div id='left_banner'>
            <table border="0" width="160" cellspacing="0" cellpadding="0">
                <tr>
                    <td>
                        <script>(function () {
                            var b = !1,
                                c = "//www.mediacategory.com/servlet/adBanner?from=" + escape(document.referrer) + "&s=13295&iwh=160_600&igb=69&cntsr=3",
                                d = function () {
                                    b = !0;
                                    document.getElementById("mobonDivBanner_13295").innerHTML = "<iframe name='ifrad' width='160' height='600' id='mobonIframe_13295' src='" + c + "' frameBorder='0' marginWidth='0' marginHeight='0' scrolling='no' ></iframe>"
                                };
                            try {
                                document.write("<div id='mobonDivBanner_13295'></div>");
                                var e = setTimeout(d, 1E3), f = document.getElementsByTagName("head").item(0),
                                    a = document.createElement("script");
                                a.src = "//cdn.megadata.co.kr/js/media/1.1/MBSHandler.js";
                                a.type = "text/javascript";
                                a.async ? a.async = !0 : a.defer = !0;
                                a.onload = function () {
                                    !0 !== b && (clearTimeout(e), enlipleMBSHandler(enlipleMBSHandler.getProductTypeCode("banner"), enlipleMBSHandler.getWebCode(), 13295).createBanner(c, "160", "600"))
                                };
                                f.appendChild(a)
                            } catch (g) {
                                d()
                            }
                        })();</script>
                    </td>
                </tr>
            </table>
        </div>
    </div>
    <div id='banner_wrap'>
        <div id='right_banner'>
            <script>(function () {
                var b = !1,
                    c = "//www.mediacategory.com/servlet/adBanner?from=" + escape(document.referrer) + "&s=12808&iwh=160_600&igb=69&cntsr=3",
                    d = function () {
                        b = !0;
                        document.getElementById("mobonDivBanner_12808").innerHTML = "<iframe name='ifrad' width='160' height='600' id='mobonIframe_12808' src='" + c + "' frameBorder='0' marginWidth='0' marginHeight='0' scrolling='no' ></iframe>"
                    };
                try {
                    document.write("<div id='mobonDivBanner_12808'></div>");
                    var e = setTimeout(d, 1E3), f = document.getElementsByTagName("head").item(0),
                        a = document.createElement("script");
                    a.src = "//cdn.megadata.co.kr/js/media/1.1/MBSHandler.js";
                    a.type = "text/javascript";
                    a.async ? a.async = !0 : a.defer = !0;
                    a.onload = function () {
                        !0 !== b && (clearTimeout(e), enlipleMBSHandler(enlipleMBSHandler.getProductTypeCode("banner"), enlipleMBSHandler.getWebCode(), 12808).createBanner(c, "160", "600"))
                    };
                    f.appendChild(a)
                } catch (g) {
                    d()
                }
            })();</script>
        </div>
    </div>
    <span> <img src="http://enliple.com/images/logo.png" class="w-75" alt="Logo"> </span><br/>
    <h2>MOBON SHOP DATA</h2>
    <h4>Execution time: ${Execution_time} ms</h4> <br/>


    <table class="art_bg0" width="1001" height="138" border="0" cellpadding="0" cellspacing="0" align=center>

        <thead>
        <tr>
            <th>Method</th>
            <th>Data</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td>EhCache</td>
            <td>${EhCache}</td>
        </tr>
        <tr>
            <td>Redis</td>
            <td>${Redis} </td>
        </tr>
        <tr>
            <td>DB</td>
            <td>${DB} </td>
        </tr>
        </tbody>
    </table>
    <form method="get" action="main">
        <input type="submit" value="Back" onclick=" history.back(-1);">
    </form>
</center>

</body>
</html>
