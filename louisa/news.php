<!doctype html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>路易莎咖啡 LOUISA COFFEE</title>
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

        <link rel="shartcut icon" href="images/logo/shortlogo.ico">

        <link rel="stylesheet" type="text/css" href="CSS/news.css">

    </head>

    <body>

    <?php include_once "menu.php"; ?>

        
        <!--縮圖元件-->
        <div class = "container">
            <div class = "row">
                <div class="is">
                    <!--資料庫讀取-->
                    <?php 
                        include("mysql.inc.php");
                        $result = mysqli_query($conn, "SELECT title, imgPath, info FROM img");
                        while( $row = mysqli_fetch_array($result) ){
                            echo '<div class = "col-md-6 offset-md-3">';
                            echo '<center><p>'.nl2br($row[0]).'</center></p>';
                            echo '<img class="rounded" src="images/card/'.$row[1].'" style="max-width:100%">';
                            echo '<p>'.nl2br($row[2]).'</p>';
                            echo '</div>';
                        }
                    ?>
                </div>
            </div>
        </div>

        <!--分頁-->
        <div class="container d-flex justify-content-center mt-4">
            <nav aria-label="Page navigation example">
                <ul class="pagination">
                <li class="page-item">
                    <a class="page-link" href="#" aria-label="Previous">
                    <span aria-hidden="true">&laquo;</span>
                    </a>
                </li>
                <li class="page-item"><a class="page-link" href="news.php">1</a></li>
                <li class="page-item"><a class="page-link" href="news.php">2</a></li>
                <li class="page-item">
                    <a class="page-link" href="#" aria-label="Next">
                    <span aria-hidden="true">&raquo;</span>
                    </a>
                </li>
                </ul>
            </nav>
        </div>


        <?php include_once "footer.php"; ?>

                    
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    
    </body>
</html>
