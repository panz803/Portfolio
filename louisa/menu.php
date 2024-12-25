<!doctype html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>路易莎咖啡 LOUISA COFFEE</title>
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

        <link rel="shartcut icon" href="images/logo/shortlogo.ico">

        <link rel="stylesheet" type="text/css" href="CSS/menu.css">

        <!-- 引入jQuery庫 -->
        <script src="jquery.min.js"></script>

        <style>
            .dropdown-menu {
                right: auto;
                left: 0;
                transform: translateX(0);
            }

            /* 調整第二層 dropdown-menu 位置 */
            .dropdown-submenu .dropdown-menu {
                right: 50px;
                left: 0;
                transform: translateX(0);
            }
        </style>


    </head>

    <body>

        <!--導覽列-->
        <nav class="navbar fixed-top navbar-expand-lg bg-body-tertiary">
            <div class="container-fluid">
                <a class="navbar-brand" href="index.php"><img src="images/logo/logo.png"></img></a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" aria-current="page" href="index.php">首頁</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">門市查詢</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="news.php">最新消息</a>
                        </li>

                        <!-- 投資人專區 -->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">投資人專區</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="shareHolderOrgChat.php">組織圖</a></li>
                                <li><a class="dropdown-item" href="shareHolder2.php">公司治理</a></li>
                                <li class="dropdown-submenu"><!-- 使用dropdown-submenu添加第二層選單 -->
                                    <a class="dropdown-item dropdown-toggle" href="#" role="button" id="financialSubMenu">財務資訊</a>
                                    <ul class="dropdown-menu" aria-labelledby="financialSubMenu">
                                        <li><a class="dropdown-item" href="shareHolder3.php">月營收資訊</a></li>
                                        <li><a class="dropdown-item" href="shareHolder4.php">財務報告</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown-submenu"><!-- 使用dropdown-submenu添加第二層選單 -->
                                    <a class="dropdown-item dropdown-toggle" href="#" role="button" id="shareholderSubMenu">股東資訊</a>
                                    <ul class="dropdown-menu" aria-labelledby="shareholderSubMenu">
                                        <li><a class="dropdown-item" href="shareHolder5.php">股東會</a></li>
                                        <li><a class="dropdown-item" href="shareHolder6.php">法人說明會</a></li>
                                        <li><a class="dropdown-item" href="shareHolder7.php">重大訊息</a></li>
                                        <li><a class="dropdown-item" href="shareHolder8.php">股利資訊</a></li>
                                        <li><a class="dropdown-item" href="shareHolder9.php">聯絡窗口</a></li>
                                    </ul>
                                </li>
                            </ul>
                        </li>

                        <!--商品介紹-->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">商品介紹</a>
                            <ul class="dropdown-menu">
                                <li class="dropdown-submenu"><!-- 使用dropdown-submenu添加第二層選單 -->
                                    <a class="dropdown-item dropdown-toggle" href="products.php" role="button" id="financialSubMenu">咖啡豆專區</a>
                                    <ul class="dropdown-menu" aria-labelledby="financialSubMenu">
                                        <li><a class="dropdown-item" href="club_show1.php">私房咖啡</a></li>
                                        <li><a class="dropdown-item" href="club_show2.php">精品咖啡</a></li>
                                        <li><a class="dropdown-item" href="club_show3.php">量販精品咖啡豆</a></li>
                                    </ul>
                                </li>
                                <li class="dropdown-submenu"><!-- 使用dropdown-submenu添加第二層選單 -->
                                    <a class="dropdown-item dropdown-toggle" href="#" role="button" id="shareholderSubMenu">商品專區</a>
                                    <ul class="dropdown-menu" aria-labelledby="shareholderSubMenu">
                                        <li><a class="dropdown-item" href="#">濾掛咖啡系列</a></li>
                                        <li><a class="dropdown-item" href="#">精品咖啡</a></li>
                                        <li><a class="dropdown-item" href="#">經典義式咖啡</a></li>
                                        <li><a class="dropdown-item" href="#">嚴選在地小農牧場系列</a></li>
                                        <li><a class="dropdown-item" href="#">茶與其他飲品</a></li>
                                        <li><a class="dropdown-item" href="#">享受低醣新食感</a></li>
                                        <li><a class="dropdown-item" href="#">輕食</a></li>
                                        <li><a class="dropdown-item" href="#">軟歐藏心貝果</a></li>
                                        <li><a class="dropdown-item" href="#">糕點</a></li>
                                        <li><a class="dropdown-item" href="#">會議型糕點</a></li>
                                        <li><a class="dropdown-item" href="#">LA MERENDA食光點心</a></li>
                                        <li><a class="dropdown-item" href="#">商品</a></li>
                                        <li><a class="dropdown-item" href="#">過敏原資訊</a></li>
                                        <li><a class="dropdown-item" href="#">營養標示資訊</a></li>
                                    </ul>
                                </li>
                                <li><a class="dropdown-item" href="https://docs.google.com/forms/d/e/1FAIpQLSeLUm5Ai9bPiYJztHe28II3aUQ5gP1LXl7OeY__FjD7ijUwLw/viewform">購買商品禮劵</a></li>
                            </ul>
                        </li>

                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">咖啡世界</a>
                            <ul class="dropdown-menu">
                                 <li><a class="dropdown-item" href="#">咖啡職人</a></li>
                                <li><a class="dropdown-item" href="#">咖啡生活</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">關於我們</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">聯絡我們</a>
                            <ul class="dropdown-menu">
                                <li><a class="dropdown-item" href="#">聯絡我們</a></li>
                                <li><a class="dropdown-item" href="#">人才招募</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="store-icon" href="#store"><img src = "images/nav/map.png"></a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
        <script>
            // 為每個含有子選單的 dropdown-submenu 元素添加事件處理
            $(document).ready(function () {
                $('.dropdown-submenu a.dropdown-toggle').on("click", function (e) {
                    $(this).next('ul').toggle();
                    e.stopPropagation();
                    e.preventDefault();
                });
            });
        </script>

    </body>
</html>
