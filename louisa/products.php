<!doctype html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>路易莎咖啡 LOUISA COFFEE</title>
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

        <link rel="shartcut icon" href="images/logo/shortlogo.ico">

        <link rel="stylesheet" type="text/css" href="CSS/products.css">

        <script src="https://kit.fontawesome.com/f098d16396.js" crossorigin="anonymous"></script>

        <style>
             .top-section,
             .bottom-section {
                position: relative;
                height: 400px;
                color: white;
                background-size: cover;
                background-repeat: no-repeat;
                background-attachment: fixed;/*視差滾動*/
            }

            .top-section {
                background-image: url('images/products/products1.jpg'); /* 修改為上半部分背景圖片的路徑 */
                margin-top:180px;
                z-index:100;
            }

            .bottom-section {
                background-image: url('images/products/products2.jpg'); /* 修改為下半部分背景圖片的路徑 */
                z-index: 50;
            }

        </style>

    </head>


    <body>

    <?php include_once "menu.php"; ?>

        <!--商品介紹-->

        <div class="container">
            <section>
                <div class = "news">
                    <h2>商品介紹</h2>
                </div>
                <div class="right-text">
                    <p><a href="index.php">Home</a>&nbsp;&nbsp;/&nbsp;&nbsp;商品介紹</p>
                </div>
            </section>
        </div>

        <!--index-->

        <div class="top-section">
            <div class="content">
                <h2>咖啡豆專區</h2>
                <p>LOUISA COFFEE BEANS</p>
                <div class="custom-dropdown">
                    <button class="dropdown-toggle" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">選擇單元
                        <span class="dropdown-icon">
                            <i class="fa-solid fa-chevron-down"></i> <!-- Font Awesome 的倒勾圖示 -->
                        </span></button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item" href="#">選擇單元</a>
                        <a class="dropdown-item" href="club_show1.php">私房咖啡</a>
                        <a class="dropdown-item" href="club_show2.php">精品咖啡</a>
                        <a class="dropdown-item" href="club_show3.php">量販精品咖啡豆</a>
                        <!-- 其他下拉選項 -->
                    </div>
                </div>
            </div>
        </div>
        <div class="bottom-section">
            <div class="content">
            <h2>商品專區</h2>
                <p>OUR PRODUCT</p>
                <div class="custom-dropdown">
                    <button class="dropdown-toggle" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">選擇單元
                        <span class="dropdown-icon">
                            <i class="fa-solid fa-chevron-down"></i> <!-- Font Awesome 的倒勾圖示 -->
                        </span></button>
                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                        <a class="dropdown-item" href="#">選擇單元</a>
                        <a class="dropdown-item" href="#">濾掛咖啡系列</a>
                        <a class="dropdown-item" href="#">精品咖啡</a>
                        <a class="dropdown-item" href="#">經典義式咖啡</a>
                        <a class="dropdown-item" href="#">嚴選在地小農牧場系列</a>
                        <a class="dropdown-item" href="#">茶與其他飲品</a>
                        <a class="dropdown-item" href="#">享瘦低醣新食感</a>
                        <a class="dropdown-item" href="#">輕食</a>
                        <a class="dropdown-item" href="#">軟歐藏心貝果</a>
                        <a class="dropdown-item" href="#">糕點</a>
                        <a class="dropdown-item" href="#">會議型糕點</a>
                        <a class="dropdown-item" href="#">LA MERENDA食光點心</a>
                        <a class="dropdown-item" href="#">商品</a>
                        <!-- 其他下拉選項 -->
                    </div>
                </div>
            </div>
        </div>

        

        <!--頁尾-->
        <?php include_once "footer.php"; ?>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    
    </body>
</html>