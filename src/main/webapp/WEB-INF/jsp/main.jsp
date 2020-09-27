<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<title>MOBON SHOP DATA</title>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<head>
    <style type="text/css">
        body {
            background: #E5E7E9 !important;
        }

        .card {
            border: 1px solid #28a745;
        }

        .card-login {
            margin-top: 130px;
            padding: 18px;
            max-width: 30rem;
        }

        .card-header {
            color: #fff;
            /*background: #ff0000;*/
            font-family: sans-serif;
            font-size: 20px;
            font-weight: 600 !important;
            margin-top: 10px;
            border-bottom: 0;
        }

        .input-group-prepend span {
            width: 50px;
            background-color: #BDC3C7;
            color: #fff;
            border: 0 !important;
        }

        input:focus {
            /*outline: 0 0 0 0  !important;*/
            box-shadow: 0 0 0 0 !important;
        }

        .login_btn {
            width: 130px;
        }

        .login_btn:hover {
            color: #fff;
            background-color: #ff0000;
        }

        .btn-outline-danger {
            color: #fff;
            font-size: 18px;
            background-color: #28a745;
            background-image: none;
            border-color: #28a745;
            margin-left: 15px;
        }

        .form-control {
            display: block;
            width: 100%;
            height: calc(2.25rem + 2px);
            padding: 0.375rem 0.75rem;
            font-size: 1.2rem;
            line-height: 1.6;
            color: #28a745;
            background-color: transparent;
            background-clip: padding-box;
            border: 1px solid #28a745;
            border-radius: 0;
            transition: border-color 0.15s ease-in-out, box-shadow 0.15s ease-in-out;
        }

        .input-group-text {
            display: -ms-flexbox;
            display: flex;
            -ms-flex-align: center;
            align-items: center;
            padding: 0.375rem 0.75rem;
            margin-bottom: 0;
            font-size: 1.5rem;
            font-weight: 700;
            line-height: 1.6;
            color: #495057;
            text-align: center;
            white-space: nowrap;
            background-color: #e9ecef;
            border: 1px solid #ced4da;
            border-radius: 0;
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

</head>
<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css">
<div class="container">
    <div class="card card-login mx-auto text-center bg-dark">
        <div class="card-header mx-auto bg-dark">
            <span> <img src="http://enliple.com/images/logo.png" class="w-75" alt="Logo"> </span><br/>
            <span class="logo_title mt-5"> MOBON SHOP DATA </span>
            <!--            <h1>--><?php //echo $message?><!--</h1>-->

        </div>
        <div class="card-body">
            <form method="get" action="product">

                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-list-ul"></i></span>
                    </div>
                    <select type="option" id="option" name="option" class="form-control">
                        <option value="none">=== 선택 ===</option>
                        <option value="web" selected>WEB</option>
                        <option value="mobile">MOBILE</option>
                    </select>
                </div>

                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-user"></i></span>
                    </div>
                    <input type="userid" id="userid" name="userid" class="form-control" placeholder="User ID"
                           value="${userid}">
                </div>

                <div class="input-group form-group">
                    <div class="input-group-prepend">
                        <span class="input-group-text"><i class="fas fa-key"></i></span>
                    </div>
                    <input type="pcode" id="pcode" name="pcode" class="form-control" placeholder="Product Code"
                           value="${pcode}">
                </div>
                <div class="form-group">
                    <input type="submit" name="btn" value="Search" class="btn btn-outline-danger float-right login_btn">
                </div>

                <%--                <div class="form-group">--%>
                <%--                    <input type="submit" name="btn" value="Reset" class="btn btn-outline-danger float-right login_btn">--%>
                <%--                </div>--%>
            </form>

            <%--                캐시 리셋 버튼--%>
            <div class="form-group">
                <input type="submit" id="resetBtn" name="btn" value="Reset"
                       class="btn btn-outline-danger float-right login_btn">
            </div>

        </div>
    </div>
</div>