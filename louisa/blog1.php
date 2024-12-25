<!doctype html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>路易莎咖啡 LOUISA COFFEE</title>
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

        <link rel="shartcut icon" href="images/logo/shortlogo.ico">

        <link rel="stylesheet" type="text/css" href="CSS/blog1.css">

        <style>
            .is{
                margin-top: 280px;
            }

            .title{
                font-size:13px;
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
                color:black;
            }

            .btn-custom:hover {
                text-decoration: none; /* 滑鼠碰到時不顯示底線 */
                color: inherit; /* 使用繼承的顏色，保持一致 */
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

        </style>

    </head>

    <body>

    <?php include_once "menu.php"; ?>

    <!--最新消息-->

    <div class="container">
            <section>
                <div class = "news">
                    <h2>咖啡職人</h2>
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
                $result = mysqli_query($conn, "SELECT title, img, writer, sort, info, day1, day2, flag FROM blog WHERE flag = '1'");
                $firstIteration = true; // 用於追蹤第一次迭代
                while ($row = mysqli_fetch_array($result)) {
                    echo '<br><br><br><br><br><br>';
                    echo '<div class="col-md-9">';
                    echo '<img class="rounded" src="images/blog/' . $row[1] . '" style="max-width:100%">';
                    echo '<br><br>';
                    echo '<div class="text-box">';
                    echo '<p>' . nl2br($row[5]) . '</p>';
                    echo '</div>';
                    echo '<h3 class="writer-title">' . nl2br($row[0]) . '</h3>';
                    echo '<p class="writer-sort">撰文者：' . nl2br($row[2]) . ' &nbsp;&nbsp;分類：' . nl2br($row[3]) . '</p>';
                    echo '<hr style="border-color: #333"/><br><br>';
                    echo '<p class="writer-index">' . nl2br($row[4]) . '</p>';
                    echo '<p>' . nl2br($row[2]) . '</p>';
                    echo '<a href="#" class="btn-custom">READ MORE</a>';
                    echo '</div>';

                     // 只在第一次迭代時顯示「最新文章」和「文章分類」
                if ($firstIteration) {
                    echo '<div class="col-md-3">';
                    echo '<div class="widget">';
                    echo '<h6 class="title">最新文章</h6>';
                    echo '<hr style="border-color: #333"/><br><br>';
                    ?>
                    <div class ="right-title">
                        <a href="#" class="h5">「台灣⇄京都」橫跨千里 尋茶之旅→<br></a>
                        <p>April 01,2020</p>
                        <a href="#" class="h5">京都宇治抹茶甜點職人來台技術交流→<br></a>
                        <p>April 01,2020</p>
                        <a href="#" class="h5">京都宇治茶職人來台技術交流→</a>
                        <p>April 01,2020</p>
                    </div>
                    <?php
                    // 在這裡加入最新文章的內容
                    echo '<h6 class="title">文章分類</h6>';
                    echo '<hr style="border-color: #333"/><br><br>';
                    ?>
                    <div class ="right-sort">
                        <a href="#" class="h5">咖啡烘焙的職人精神→<br></a>
                        <a href="#" class="h5">第三波咖啡浪潮→<br></a>
                        <a href="#" class="h5">職人精神→<br></a>
                        <a href="#" class="h5">咖啡產區履歷→<br></a>
                        <a href="#" class="h5">嚴選小農牧場嚴選小農牧場→<br></a>
                        <a href="#" class="h5">量販精品咖啡豆→</a>
                    </div>
                    <?php
                    echo '</div>';
                    echo '</div>';
                    $firstIteration = false; // 將標誌設定為 false，以便在後續迭代中略過

                    }
                }

                mysqli_close($conn);
                ?>
            </div>
        </div>
    </div>

        <?php include_once "footer.php"; ?>

                    
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    
    </body>
</html>
