<!doctype html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>路易莎咖啡 LOUISA COFFEE</title>
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

        <link rel="shartcut icon" href="images/logo/shortlogo.ico">

        <link rel="stylesheet" type="text/css" href="CSS/club.css">

    </head>

    <body>

    <?php include_once "menu.php"; ?>

    <!--最新消息-->

    <div class="container">
            <section>
                <div class = "news">
                    <h2>精品咖啡</h2>
                </div>
                <div class="right-text">
                    <p><a href="index.php">Home</a>&nbsp;&nbsp;/&nbsp;&nbsp;商品介紹&nbsp;&nbsp;/&nbsp;&nbsp;咖啡豆專區</p>
                </div>
                <br><br><br><br>
            </section>
        </div>

        
        <!--縮圖元件-->
        <div class = "container">
            <div class = "row">
                <!--資料庫讀取-->
                <?php 
                    include("mysql.inc.php");
                    $result = mysqli_query($conn, "SELECT info FROM club_show2");
                    while( $row = mysqli_fetch_array($result) ){
                        echo '<div class = "col-12 col-sm-4">';
                        echo '<br><br><br>';
                        echo '<p>'.nl2br($row[0]).'</p>';
                        echo '<br><br>';
                        echo '</div>';
                    }
                ?>
                <p>*網頁品項以台灣為主，其他國家會依當地做調整，欲了解請洽該地區路易莎門市。</p><br><br><br><br>
            </div>
        </div>


        <?php include_once "footer.php"; ?>

                    
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    
    </body>
</html>
