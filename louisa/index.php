<!doctype html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>路易莎咖啡 LOUISA COFFEE</title>
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

        <link rel="shartcut icon" href="images/logo/shortlogo.ico">

        <link rel="stylesheet" type="text/css" href="CSS/index.css">

    </head>

    <body>

        <!--導覽列-->
        <?php include_once "menu.php"; ?>

        
        <!--輪播圖-->
        <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel" data-bs-interval="2000">
            <div class="carousel-inner">
                <?php
                    include("mysql.inc.php");

                    //查詢imginfo資料表所有資料
                    $result=mysqli_query($conn, "SELECT ImgPath FROM carousel");
                $i = 0;
                while( $row=mysqli_fetch_array($result)){
                    if($i == 0) {
                    echo '<div class="carousel-item active">';
                    $i = 2;
                }
                else
                    echo '<div class="carousel-item">';
                echo '<img src="images/Carousel/'.$row[0].'"class="d-block w-100">';
                echo '</div>';
                } 
                ?>
            </div>
        </div>

        <!--瀑布式圖片-->
        <div class="container mt-5">
            <div class="card-columns">
                <div class="card text-center">
                <a href="https://www.louisacoffee.co/index">
                    <img class="card-img-top" src="images/Index/index1.jpg" alt="Card image cap">
                    <div class="card-img-overlay">
                    <h5 class="card-title">最新消息<br>Latest News</h5>
                    </div>
                </a>
                </div>
                <div class="card text-center">
                <a href="https://www.louisacoffee.co/index">
                    <img class="card-img-top" src="images/Index/index4.jpg" alt="Card image cap">
                    <div class="card-img-overlay">
                    <h5 class="card-title">聯絡我們<br>Contact Us</h5>
                    </div>
                </a>
                </div>
                <div class="card text-center">
                <a href="https://www.louisacoffee.co/index">
                    <img class="card-img-top" src="images/Index/index2.jpg" alt="Card image cap">
                    <div class="card-img-overlay">
                    <h5 class="card-title">門市查詢<br>Store Location</h5>
                    </div>
                </a>
                </div>
                <div class="card text-center">
                <a href="https://www.louisacoffee.co/index">
                    <img class="card-img-top" src="images/Index/index5.jpg" alt="Card image cap">
                    <div class="card-img-overlay">
                    <h5 class="card-title">糕點<br>Pastry</h5>
                    </div>
                </a>
                </div>
                <div class="card text-center">
                <a href="https://www.louisacoffee.co/index">
                    <img class="card-img-top" src="images/Index/index3.jpg" alt="Card image cap">
                    <div class="card-img-overlay">
                    <h5 class="card-title">商品專區及訂單下載<br>Product & Purchase Order</h5>
                    </div>
                </a>
                </div>
                <div class="card text-center">
                <a href="https://www.louisacoffee.co/index">
                    <img class="card-img-top" src="images/Index/index6.jpg" alt="Card image cap">
                    <div class="card-img-overlay">
                    <h5 class="card-title">輕食<br>Light Meal</h5>
                    </div>
                </a>
                </div>
            </div>
        </div>

        <!--頁尾-->
        <link href="https://fonts.googleapis.com/css?family=Rubik" rel="stylesheet">
        <footer>
            <div class="container pt-5 border-bottom">
                <div class="row">

                    <!-- Logo 區塊 -->
                    <div class="col-md-4 col-sm-12 mb-3 text-center">
                        <img src="images/logo/logo2.png" alt="Logo"></img>
                    </div>

                    <!-- 熱門訊息區塊 -->
                    <div class="col-md-4 col-sm-6 col-6 p-0 mb-3">
                        <h6 class="mb-4 font-weight-bold text-uppercase" style = "color:#ffffff";>熱門訊息</h6>
                        <ul class="list-group">
                            <li class="list-group-item bg-transparent border-0 p-0 mb-2">
                                <a href="#" style = "color:#ffffff";>英國皇家泰勒伯爵茶季 ‧ 新品上市 9 折優惠　➔</a>
                                <div class="date">Jun 21,2023</div>
                            </li>
                            <li class="list-group-item bg-transparent border-0 p-0 mb-2">
                                <a href="#" style = "color:#ffffff";>歡慶17週年慶 ‧ 飲品第二杯半價！　➔</a>
                                <div class="date">Jun 21,2023</div>
                            </li>
                            <li class="list-group-item bg-transparent border-0 p-0 mb-2">
                                <a href="#" style = "color:#ffffff";>6-7月黑卡優惠　➔</a>
                                <div class="date">Jun 21,2023</div>
                            </li>
                        </ul>
                    </div>

                    <!-- 咖啡世界區塊 -->
                    <div class="col-md-4 col-sm-6 col-6 p-0 mb-3">
                        <h6 class="mb-4 font-weight-bold text-uppercase" style = "color:#ffffff";>咖啡世界</h6>
                        <ul class="list-group">
                            <li class="list-group-item bg-transparent border-0 p-0 mb-2">
                                <a href="#" style = "color:#ffffff";>「台灣⇄京都」橫跨千里 尋茶之旅　➔</a>
                                <div class="date">Jun 21,2023</div>
                            </li>
                            <li class="list-group-item bg-transparent border-0 p-0 mb-2">
                                <a href="#" style = "color:#ffffff";>京都宇治抹茶甜點職人來台技術交流　➔</a>
                                <div class="date">Jun 21,2023</div>
                            </li>
                            <li class="list-group-item bg-transparent border-0 p-0 mb-2">
                                <a href="#" style = "color:#ffffff";>京都宇治茶職人來台技術交流　➔</a>
                                <div class="date">Jun 21,2023</div>
                            </li>
                        </ul>
                    </div>

                    <div class="row">
                        <div class="col-sm-6">
                            <span class="sub" style="color: #607289;">© Copyright 2023 - LOUISA COFFEE</span><h7>　|　</h7>
                            <a href="http://flow1.louisacoffee.com.tw/louisa/Login.aspx?ReturnUrl=%2flouisa%2f" target="_blank" style = "color:#ffffff";>夥伴登入</a>
                        </div>
                        <div class="col-sm-6 text-right">
                            <ul class="list-inline social-list">
                            <li>
                                <a href="https://www.facebook.com/louisacoffeeofficial">
                                    <i class="ti-facebook"></i>
                                </a>
                            </li>
                            </ul>
                        </div>
                    </div>
                </div>

                <!-- TOP 鏈接置中 -->
                <div class="row">
                    <div class="col-md-12">
                        <div class="py-4 d-flex justify-content-center align-items-center">
                            <a class="btn btn-sm fade-half back-to-top inner-link" href="#top">Top</a>
                        </div>
                    </div>
                </div>
            </div>
        </footer>

                    
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    
    </body>
</html>