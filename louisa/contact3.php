<!doctype html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>路易莎咖啡 LOUISA COFFEE</title>
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">

        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css" integrity="sha384-zCbKRCUGaJDkqS1kPbPd7TveP5iyJE0EjAuZQTgFLD2ylzuqKfdKlfG/eSrtxUkn" crossorigin="anonymous">

        <link rel="shartcut icon" href="images/logo/shortlogo.ico">

        <link rel="stylesheet" type="text/css" href="CSS/contact2.css">

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
                    <h3>產品供應</h3>
                    <div class="form-group">
                        <input type="text" id="name" name="name" class="form-control" placeholder="聯絡姓名" required>
                    </div>

                    <div class="form-group">
                        <input type="tel" id="phone" name="phone" class="form-control" placeholder="行動電話">
                    </div>

                    <div class="form-group">
                        <input type="email" id="email" name="email" class="form-control" placeholder="電子郵件" required>
                    </div>

                    <div class="form-group">
                        <textarea id="message" name="message" rows="6" class="form-control" placeholder="問題描述" required></textarea>
                    </div>
                    <div class="form-group">
                        <button type="submit">送出訊息</button>
                    </div>
                </div>
            </div>
        </div>

        <!--頁尾-->
        <?php include_once "footer.php"; ?>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
    
    </body>
</html>