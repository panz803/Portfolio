<!doctype html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>路易莎咖啡 LOUISA COFFEE</title>
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

        <link rel="shartcut icon" href="images/logo/shortlogo.ico">

        <link rel="stylesheet" type="text/css" href="CSS/shop5.css">

        <style>
            .news {
                margin-bottom: 300px;
            }

            .reference-block {
                margin-top: 20px; /* 設定與上方元素的距離 */
                margin-bottom: 100px;
            }

            .reference {
                font-size: 12px; /* 調整文字大小 */
                color: #999; /* 設定文字顏色 */
                margin-top: 5px; /* 調整文字之間的垂直距離 */
            }

            .container{
                margin-top:20px;
            }

            select {
                font-size: 12px;
                background-color: #f8f9fa;
                border: 1px solid #ced4da;
                color: gray;
                padding: 0.375rem 0.75rem;
                cursor: pointer;
                width: 330px;
                height: 50px;
                margin-left: -15px !important;
                text-align: left;
            }

            /* 調整下拉選單選項的樣式 */
            select option {
                display: flex;
                align-items: center;
                padding: 5px 15px;
                color:gray !important;
                font-size: 12px;
            }

            /* 調整被選中的選項的樣式,排除被選中的選項*/
            select option:checked:not([value=""]) {
                background-color: #007bff;
                color: #fff;
            }

            .product-count{
                color: #888;
                font-size: 14px;
                text-align:right;
            }

        </style>

    </head>

    <body>

    <?php include_once "menu.php"; ?>

    <!--最新消息-->

    <div class="container">
            <section>
                <div class = "news">
                    <h2>茶與其他飲品</h2>
                </div>
                <div class="right-text">
                    <p><a href="index.php">Home</a>&nbsp;&nbsp;/&nbsp;&nbsp;商品介紹&nbsp;&nbsp;/&nbsp;&nbsp;商品專區</p>
                </div>
                <br><br><br><br>
            </section>
        </div>

        
        <!--縮圖元件-->
        <div class = "container">
            <div class = "row">
            
            <div class="container">
                    <div class="row">

                        <!--下拉-->
                        <div class="col-md-6 text-left">

                            <?php
                            include("mysql.inc.php");
                            $result = mysqli_query($conn, "SELECT id, name, url FROM shopdownnav");
                            $options = '';
                            while ($row = mysqli_fetch_assoc($result)) {
                                $options .= '<option value="' . $row['url'] . '">' . $row['name'] . '</option>';
                            }
                            mysqli_close($conn);
                            ?>

                            <form>
                                <label for="shopdownnav"></label>
                                <select name="shopdownnav" id="shopdownnav" onchange="navigate()">
                                    <?php echo $options; ?>
                                </select>
                            </form>

                        </div>

                        <!--數商品-->
                        <div class="col-md-6 text-right">

                            <?php
                            include("mysql.inc.php");
                            
                            $result = mysqli_query($conn, "SELECT COUNT(*) AS total FROM shop WHERE flag = 5.1");
                            $row = mysqli_fetch_assoc($result);
                            $totalProducts = $row['total'];
                            
                            mysqli_close($conn);
                        
                            echo '<div class="container">';
                            echo '<p class="product-count">總共有 ' . 54 . ' 項商品</p>';
                            echo '</div>';
                        
                            ?>

                        </div>

                    </div>
                </div>

                <div class = "row">
                    <br><br><br><br><hr style="border-color: #333"/>
                    <div class = "col-12 col-sm-5">
                        <br><br><img class="text-left" src = "images/shop/9.jpg" width="350" height="230">
                        <h5>
                            <br><strong>英國百年茶莊系列<br>
                            BRITISH TEA</strong>
                        </h5>
                    </div>

                        <!--資料庫讀取-->
                        <?php 
                            include("mysql.inc.php");
                            $result = mysqli_query($conn, "SELECT info FROM shop WHERE flag = 5.1");
                            while( $row = mysqli_fetch_array($result) ){
                                echo '<div class = "col-12 col-sm-3">';
                                echo '<br><br><br>';
                                echo '<p>'.nl2br($row[0]).'</p>';
                                echo '<br><br>';
                                echo '</div>';
                            }
                        ?>
                </div>

                <div class = "row">
                    <br><br><br><br><hr style="border-color: #333"/>
                    <div class = "col-12 col-sm-5">
                        <br><br><img class="text-left" src = "images/shop/10.jpg" width="350" height="230">
                        <h5>
                            <br><strong>世界知名茶飲系列</strong><br>
                        </h5>
                    </div>

                        <!--資料庫讀取-->
                        <?php 
                            include("mysql.inc.php");
                            $result = mysqli_query($conn, "SELECT info FROM shop WHERE flag = 5.2");
                            while( $row = mysqli_fetch_array($result) ){
                                echo '<div class = "col-12 col-sm-3">';
                                echo '<br><br><br>';
                                echo '<p>'.nl2br($row[0]).'</p>';
                                echo '<br><br>';
                                echo '</div>';
                            }
                        ?>
                    
                </div>

                <div class = "row">
                    <br><br><br><br><hr style="border-color: #333"/>
                    <div class = "col-12 col-sm-5">
                        <br><br><img class="text-left" src = "images/shop/11.jpg" width="350" height="230">
                        <h5>
                            <br><strong>嚴選經典風味茶系列<br>
                            FLAVORED TEA COLLECTION</strong>
                        </h5>
                    </div>

                        <!--資料庫讀取-->
                        <?php 
                            include("mysql.inc.php");
                            $result = mysqli_query($conn, "SELECT info FROM shop WHERE flag = 5.3");
                            while( $row = mysqli_fetch_array($result) ){
                                echo '<div class = "col-12 col-sm-3">';
                                echo '<br><br><br>';
                                echo '<p>'.nl2br($row[0]).'</p>';
                                echo '<br><br>';
                                echo '</div>';
                            }
                        ?>
                </div>

                <div class = "row">
                    <br><br><br><br><hr style="border-color: #333"/>
                    <div class = "col-12 col-sm-5">
                        <br><br><img class="text-left" src = "images/shop/12.jpg" width="350" height="230">
                        <h5>
                            <br><strong>冰沙系列<br>
                            FRAPPE</strong>
                        </h5>
                    </div>

                        <!--資料庫讀取-->
                        <?php 
                            include("mysql.inc.php");
                            $result = mysqli_query($conn, "SELECT info FROM shop WHERE flag = 5.4");
                            while( $row = mysqli_fetch_array($result) ){
                                echo '<div class = "col-12 col-sm-3">';
                                echo '<br><br><br>';
                                echo '<p>'.nl2br($row[0]).'</p>';
                                echo '<br><br>';
                                echo '</div>';
                            }
                        ?>
                </div>

                <div class = "row">
                    <br><br><br><br><hr style="border-color: #333"/>
                    <div class = "col-12 col-sm-5">
                        <br><br><img class="text-left" src = "images/shop/13.jpg" width="350" height="230">
                        <h5>
                            <br><strong>其他風味飲品<br>
                            OTHERS</strong>
                        </h5>
                    </div>

                        <!--資料庫讀取-->
                        <?php 
                            include("mysql.inc.php");
                            $result = mysqli_query($conn, "SELECT info FROM shop WHERE flag = 5.5");
                            while( $row = mysqli_fetch_array($result) ){
                                echo '<div class = "col-12 col-sm-3">';
                                echo '<br><br><br>';
                                echo '<p>'.nl2br($row[0]).'</p>';
                                echo '<br><br>';
                                echo '</div>';
                            }
                        ?>
                </div>
                <p><br>．刊載之商品僅供參考，商品以實品為準。<br>
                        ．網頁品項以台灣為主，其他國家會依當地做調整，欲了解請洽該地區路易莎門市。
                </p><br><br><br><br>
            </div>
        </div>


        <?php include_once "footer.php"; ?>

        <script>
            function navigate() {
                var select = document.getElementById("shopdownnav");
                var selectedOption = select.options[select.selectedIndex];
                var selectedUrl = selectedOption.value;
                if (selectedUrl) {
                    window.location.href = selectedUrl;
                }
            }
        </script>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    
    </body>
</html>
