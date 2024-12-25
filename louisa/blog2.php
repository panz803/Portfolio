<!doctype html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>路易莎咖啡 LOUISA COFFEE</title>
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

        <link rel="shartcut icon" href="images/logo/shortlogo.ico">

        <link rel="stylesheet" type="text/css" href="CSS/blog2.css">

        <script src="https://kit.fontawesome.com/f098d16396.js" crossorigin="anonymous"></script>

        <style>
            .is{
                margin-top: 150px;
            }

            .title{
                font-size:13px;
            }
            .card-title{
                font-size:17px;
                font-weight:normal;
                margin-top:20px;
            }

            .card-text{
                font-size:13px;
                color:#666;
                line-height:0.6cm;
            }

            .btn-custom {
                display: inline-block;
                padding: 3px 20px; /* 調整按鈕的內邊距，使其變成長方形 */
                background-color: white; /* 按鈕的背景顏色 */
                border: 1px solid black; /* 移除按鈕的邊框 */
                text-align: center;
                text-decoration: none;
                font-size: 13px; /* 字體大小 */
                font-weight:bold;
                cursor: pointer;
                margin-bottom:50px;
                color:orange;
            }

            .btn-custom:hover {
                text-decoration: none; /* 滑鼠碰到時不顯示底線 */
                color: white;
                background-color:#FF6600;
            }

            .right-title{
                margin-top:-40px;
                margin-bottom:60px;
            }

            .right-title a {
                font-size:13px;
                font-weight:bold;
            }

            .right-title a:hover {
                color:orange;
                text-decoration:none;
            }

            .right-title p {
                font-size:13px;
                color:#666;
            }

            .right-sort{
                margin-top:-40px;
                line-height:0.8cm;
            }

            .right-sort a {
                font-size:13px;
                font-weight:bold;
            }

            .right-sort a:hover {
                color:orange;
                text-decoration:none;
            }

            .fa-newspaper,.fa-tag {
                color:#666;
                font-size:24px;
                margin-right:30px;
                margin-bottom:30px;
            }

            .offset-sm-6{
                top:-575px;
                margin-bottom:-650px;
            }


        </style>

    </head>

    <body>

    <?php include_once "menu.php"; ?>

    <!--最新消息-->

    <div class="container">
            <section>
                <div class = "news">
                    <h2>咖啡生活</h2>
                </div>
                <div class="right-text">
                    <p><a href="index.php">Home</a>&nbsp;&nbsp;/&nbsp;&nbsp;咖啡世界</p>
                </div>
            </section>
        </div>

        
    <!--縮圖元件-->
    <div class="container">
        <div class="is">
            <div class="row">
                <!-- 資料庫讀取 -->
                <?php 
                include("mysql.inc.php");
                $result = mysqli_query($conn, "SELECT title, img, writer, sort, info, day1, day2, flag FROM blog WHERE flag = '2'");
                $firstIteration = true; // 用於追蹤第一次迭代
                $counter = 0; // 用於計數

                echo '<div class="container">';
                echo '<div class="is">';
                echo '<div class="row">';

                while ($row = mysqli_fetch_array($result)) {
                    $counter++; // 增加計數

                    echo '<br><br><br><br><br><br>';
                    echo '<div class="col-md-9">';
                    echo '<div class="row">'; // 增加一個新的row

                    // 檢查計數是奇數還是偶數
                    if ($counter % 2 == 1) {
                        // 左邊的卡片
                        echo '<div class="col-sm-6">';
                    } else {
                        // 右邊的卡片
                        echo '<div class="col-sm-6 offset-sm-6">'; // 使用offset-sm-6將右側卡片向右移動以對齊右邊
                    }

                    echo '<div claas="card">';
                    echo '<img class="rounded" src="images/blog/' . $row[1] . '" style="max-width:100%">';
                    echo '<h3 class="card-title">' . nl2br($row[0]) . '</h3>';
                    echo '<p>' . nl2br($row[6]) . '</p>';
                    echo '<hr style="border-color: #333">';
                    echo '<i class="fa-regular fa-newspaper fa-lg"></i>';
                    echo '<i class="fa-solid fa-tag fa-lg"></i>';
                    echo '<div class="card-text">';
                    echo '<p>' . nl2br($row[4]) . '</p>';
                    echo '<a href="#" class="btn-custom">READ MORE</a>';
                    echo '<ul class="pull-right">';
                    echo '<li>';
                    echo '</div>';
                    echo '</div>';
                    echo '</div>';
                    echo '</div>'; // 關閉新的row
                    echo '</div>';

                    // 只在第一次迭代時顯示「最新文章」和「文章分類」
                    if ($firstIteration) {
                        echo '<div class="col-md-3">';
                        echo '<div class="widget">';
                        echo '<h6 class="title">最新文章</h6>';
                        echo '<hr style="border-color: #333"/><br><br>';
                        ?>
                        <div class ="right-title">
                            <a href="#" class="h5">《咖啡麻布隨行杯袋》升級再版新上市→<br></a>
                            <p>August 03, 2022</p>
                            <a href="#" class="h5">百杯咖啡挺醫護 齊心抗疫送暖心→<br></a>
                            <p>June 23, 2021</p>
                            <a href="#" class="h5">承襲老台北歷史地標 新舊融合點亮萬華老街區_萬華東園門市→</a>
                            <p>May 10, 2021</p>
                        </div>
                        <?php
                        // 在這裡加入最新文章的內容
                        echo '<h6 class="title">文章分類</h6>';
                        echo '<hr style="border-color: #333"/><br><br>';
                        ?>
                        <div class ="right-sort">
                            <a href="#" class="h5">咖啡、旅行、美好日常→<br></a>
                            <a href="#" class="h5">用咖啡伴奏的味覺享宴→<br></a>
                            <a href="#" class="h5">居家咖啡沖煮→<br></a>
                        </div>
                        <?php
                        echo '</div>';
                        echo '</div>';
                        $firstIteration = false; // 將標誌設定為 false，以便在後續迭代中略過
                    }
                }

                echo '</div>';
                echo '</div>';
                echo '</div>';


                    


                mysqli_close($conn);
                ?>

            </div>
        </div>
    </div>

        <?php include_once "footer.php"; ?>

                    
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    
    </body>
</html>
