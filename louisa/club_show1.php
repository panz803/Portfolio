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
                    <h2>私房咖啡</h2>
                </div>
                <div class="right-text">
                    <p><a href="index.php">Home</a>&nbsp;&nbsp;/&nbsp;&nbsp;商品介紹&nbsp;&nbsp;/&nbsp;&nbsp;咖啡豆專區</p>
                </div>
            </section>
        </div>

        
        <!--縮圖元件-->
        <div class = "container">
            <div class = "row">
                <div class="is">
                    <!--資料庫讀取-->
                    <?php 
                        include("mysql.inc.php");
                        $result = mysqli_query($conn, "SELECT title, img, info FROM club_show1");
                        while( $row = mysqli_fetch_array($result) ){
                            echo '<br><br><br><br><br><br>';
                            echo '<strong><p>'.nl2br($row[0]).'</p></strong>';
                            echo '<div class = "col-md-6 offset-md-3">';
                            echo '<img class="rounded" src="images/club/'.$row[1].'" style="max-width:100%">';
                            echo '<p>'.nl2br($row[2]).'</p>';
                            echo '<hr style="border-color: #333"/><br><br>';
                            echo '</div>';
                        }
                    ?>
                </div>
            </div>
        </div>


        <?php include_once "footer.php"; ?>

                    
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    
    </body>
</html>
