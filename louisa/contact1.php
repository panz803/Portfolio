<!doctype html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>路易莎咖啡 LOUISA COFFEE</title>
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

        <link rel="shartcut icon" href="images/logo/shortlogo.ico">

        <link rel="stylesheet" type="text/css" href="CSS/contact1.css">

        <script src="https://kit.fontawesome.com/f098d16396.js" crossorigin="anonymous"></script>

        <style>
            .square .icon {
                position: relative;
                color: #ff6600;
                top:-65px;
                font-size:60px;/*大小*/
                left:28%;
            }

            .square p {
                position: relative;
                font-size:16px;
                top:45px;
                left:-23px;
                white-space: nowrap; /* 防止文本换行 */
            }

            .square .button {
                position: relative;
                width:100px;
                height:25px;
                top:75px;
                left:-65px;
                background-color: #FF6600;
                color: white;
                padding: 2.5px 2.5px;
                border: 0.5px solid #818494; /* 設置按鈕的邊框色 */
                cursor: pointer;
                font-size: 12px;
            }

        </style>

    </head>

    <body>

    <?php include_once "menu.php"; ?>

        <!--最新消息-->

        <div class="container">
            <section>
                <div class = "news">
                    <h2>聯絡我們</h2>
                </div>
                <div class="right-text">
                    <p><a href="index.php">Home</a>&nbsp;&nbsp;/&nbsp;&nbsp;<a href="index.php">聯絡我們</a></p>
                </div>
            </section>
        </div>

        <div class="contact">
            <div class="container">
                <div class="row">
                    <div class="col-md-5">
                        <h3>GET IN TOUCH</h3>
                        <p>我們竭誠為您服務<br>
                            本公司客服人員將於上班時間<br>
                            週一至週五 AM09:00～PM17:00 為您做回覆；<br>
                            若於下班時間提出問題則需至次上班時間方能為您提供服務。
                        </p>
                        <hr style="border-color: #333"/>
                    </div>
                <div class="col-md-7">
                    <h3>選擇主旨</h3>
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="square">
                                <span class="icon"><i class="fa-regular fa-message fa-lg"></i></span>
                                <p>顧客心聲</p>
                                <a href="https://docs.google.com/forms/d/e/1FAIpQLSfcUlA-xHHK_Vi-60YrwQK1rbz-tTu29DoNiYXT5Dne3z7Mxg/closedform"></a><br><button class="button">選擇</button>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="square">
                                <span class="icon"><i class="far fa-heart fa-lg"></i></span>
                                <p>行銷公關</p>
                                <a href="http://localhost/Louisa-main/louisa/contact2.php"></a><br><button class="button">選擇</button>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="square">
                            <span class="icon"><i class="fa-solid fa-box-archive fa-lg"></i></span>
                                <p>產品供應</p>
                                <a href="http://localhost/Louisa-main/louisa/contact3.php"></a><br><button class="button">選擇</button>
                            </div>                        
                        </div>
                        <div class="col-sm-4">
                            <div class="square">
                                <span class="icon"><i class="fa-solid fa-crown"></i></span>   
                                <p>加盟詢問</p>
                                <a href="http://localhost/Louisa-main/louisa/contact4.php"></a><br><button class="button">選擇</button>
                            </div>                        
                        </div>
                        <div class="col-sm-4">
                            <div class="square">
                            <span class="icon"><i class="fa-regular fa-circle-question fa-lg"></i></span>
                                <p>其他事項</p>
                                <a href="https://mops.twse.com.tw/mops/web/t05st01"></a><br><button class="button">選擇</button>
                            </div>                        
                        </div>
                        <div class="col-sm-4">
                            <div class="square">
                                <span class="icon"><i class="fa-solid fa-gift fa-lg"></i></i></span>
                                <p>購買禮券</p>
                                <a href="https://docs.google.com/forms/d/e/1FAIpQLSeLUm5Ai9bPiYJztHe28II3aUQ5gP1LXl7OeY__FjD7ijUwLw/viewform"></a><br><button class="button">選擇</button>
                            </div>                        
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!--頁尾-->
        <?php include_once "footer.php"; ?>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    
    </body>
</html>