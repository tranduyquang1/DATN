<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <link rel="stylesheet" href="./view/css/main.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdn.ckeditor.com/4.15.1/standard/ckeditor.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootbox.js/5.4.1/bootbox.min.js"></script>
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
     <script src = "https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.min.js" > </script> 
     <link rel = "stylesheet" href = "https://cdnjs.cloudflare.com/ajax/libs/bootstrap-sweetalert/1.0.1/sweetalert.min.css" >
</head>
<style>
    td p {
        text-align: left;
    }
</style>

<body>
    <div class="wrapper">
        <div class="container">
            <!-- Load trang -->
            <div class='loader'>
                <span class="fas fa-spinner xoay icon"></span>
            </div>
            <div class="dashboard">
                <div class="left">
                    <span class="left__icon">
                        <span></span>
                        <span></span>
                        <span></span>
                    </span>
                    <div class="left__content">
                        <div class="left__logo"><a href="index.php">saigonres.vn</a></div>
                        <div class="left__profile">
                            <?php if (isset($_SESSION['user']) == true) { ?>
                                <?php if (isset($_SESSION['hinh']) && $_SESSION['hinh'] == null) { ?>
                                    <div class="left__image"><img src="../uploaded/user.jpg" class="" alt=""></div>
                                <?php } else { ?>
                                    <div class="left__image"><img src="../uploaded/<?= $_SESSION['hinh'] ?>" class="" alt=""></div>
                                <?php } ?>
                                <p class="left__name"><?= $_SESSION['user'] ?></p>
                            <?php } else { ?>
                                <!-- <div class="left__image"><img src="../uploaded/user.jpg" class="" alt=""></div> -->
                                <div class="left__image"><img src="../uploaded/saigonres.png" class="" alt=""></div>
                                <p class="left__name">Qu???n tr???</p>
                            <?php } ?>

                        </div>
                        <ul class="left__menu">
                            <li class="left__menuItem">
                                <a class="left__title" href="index.php"><img src="./view/assets/icon-edit.svg" alt="">B???ng ??i???u khi???n</a>
                            </li>
                            <li class="left__menuItem">
                                <div class="left__title"><img src="./view/assets/icon-edit.svg" alt="">Danh s??ch lo???i c??n h???<img class="left__iconDown" src="./view/assets/arrow-down.svg" alt=""></div>
                                <div class="left__text">
                                    <a class="left__link" href="/admin/?ctrl=loai_can&act=index">Danh s??ch lo???i c??n</a>
                                    <a class="left__link" href="?ctrl=loai_can&act=addnew">Th??m lo???i c??n h???</a>
                                </div>
                            </li>
                            <li class="left__menuItem">
                                <div class="left__title"><img src="./view/assets/icon-edit.svg" alt="">Qu???n l?? c??n h???<img class="left__iconDown" src="./view/assets/arrow-down.svg" alt=""></div>
                                <div class="left__text">
                                    <a class="left__link" href="/admin/?ctrl=can_ho&act=index">Danh s??ch c??n h???</a>
                                    <a class="left__link" href="/admin/?ctrl=can_ho&act=addnew">Th??m c??n h???</a>
                                </div>
                            </li>

                            <li class="left__menuItem">
                                <div class="left__title"><img src="./view/assets/icon-edit.svg" alt="">Qu???n l?? c??c qu???n<img class="left__iconDown" src="./view/assets/arrow-down.svg" alt=""></div>
                                <div class="left__text">
                                    <a class="left__link" href="/admin/?ctrl=quan&act=index">Danh s??ch qu???n</a>
                                    <a class="left__link" href="/admin/?ctrl=quan&act=addnew">Th??m c??c qu???n</a>
                                </div>
                            </li>
                            <li class="left__menuItem">
                                <div class="left__title"><img src="./view/assets/icon-users.svg" alt="">Qu???n l?? t??i kho???n<img class="left__iconDown" src="./view/assets/arrow-down.svg" alt=""></div>
                                <div class="left__text">
                                    <a class="left__link" href="/admin/?ctrl=tai_khoan&act=index">Danh s??ch </a>
                                    <a class="left__link" href="/admin/?ctrl=tai_khoan&act=addnew">Th??m t??i kho???n</a>
                                </div>
                            </li>
                            <li class="left__menuItem">
                                <div class="left__title"><img src="./view/assets/icon-book.svg" alt="">Qu???n l?? ?????t l???ch<img class="left__iconDown" src="./view/assets/arrow-down.svg" alt=""></div>
                                <div class="left__text">
                                    <a class="left__link" href="/admin/?ctrl=dat_lich&act=index">Danh s??ch l???ch ?????t</a>
                                    <a class="left__link" href="/admin/?ctrl=dat_lich&act=addnew">Th??m l???ch ?????t</a>
                                </div>
                            </li>
                            <li class="left__menuItem">
                                <div class="left__title"><img src="./view/assets/icon-book.svg" alt="">????ng k?? t??m nh?? <img class="left__iconDown" src="./view/assets/arrow-down.svg" alt=""></div>
                                <div class="left__text">
                                    <a class="left__link" href="/admin/?ctrl=dangkytim&act=index">Danh s??ch</a>
                                </div>
                            </li>

                            <li class="left__menuItem">
                                <div class="left__title"><img src="./view/assets/icon-user.svg" alt="">
                                    <?php if (isset($_SESSION['user']) == true) echo $_SESSION['user']; ?>
                                    <img class="left__iconDown" src="./view/assets/arrow-down.svg" alt="">
                                </div>
                                <div class="left__text">

                                    <a class="left__link" href="/admin/?ctrl=tai_khoan&act=admin&sid=<?= $_SESSION['sid'] ?>">Xem Admins</a>
                                </div>
                            </li>
                            <li class="left__menuItem">
                                <a href="?ctrl=tai_khoan&act=dangxuat&quantri=1" class="left__title"><img src="./view/assets/icon-logout.svg" alt="">????ng Xu???t</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="right">
                    <div class="right__content">
                        <?php if (isset($view) == true) {
                            require_once $view;
                        } else { ?>
                            <div class="right__title">B???ng th???ng k??</div>

                            <div class="right__cards">
                                <a class="right__card bg-success" href="/admin/?ctrl=can_ho&act=index">
                                    <div class="right__cardTitle">S??? c??n h???</div>
                                    <div class="right__cardNumber"><?= $ds_ch['soluong'] ?></div>
                                    <div class="right__cardDesc">Xem Chi Ti???t <img src="./view/assets/arrow-right.svg" alt=""></div>
                                </a>
                                <a class="right__card bg-danger" href="/admin/?ctrl=tai_khoan&act=index">
                                    <div class="right__cardTitle">S??? kh??ch H??ng</div>
                                    <div class="right__cardNumber"><?= $ds_kh['soluong'] ?></div>
                                    <div class="right__cardDesc">Xem Chi Ti???t <img src="./view/assets/arrow-right.svg" alt=""></div>
                                </a>
                                <a class="right__card" href="/admin/?ctrl=dat_lich&act=index">
                                    <div class="right__cardTitle">S??? l???ch ?????t</div>
                                    <div class="right__cardNumber"><?= $ds_ld['soluong'] ?></div>
                                    <div class="right__cardDesc">Xem Chi Ti???t <img src="./view/assets/arrow-right.svg" alt=""></div>
                                </a>

                            </div>
                            <div class="right__table" style="margin-top: 50px;">
                                <div id="chart"></div>
                                <div id="chart_div"></div>
                            </div>
                        <?php } ?>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="./view/js/main.js"></script>


</body>

</html>
<script>
    $(document).ready(function() {
        // $('.sua').click(function(add) {
        //     // console.log($(this).text('???? c??'));
        //     var delet = $('#delete-loaican');
        //     delet.css('display', 'block');
        // });
        // $('.co').click(function(add) {
        //     var delet = $('#delete-loaican');
        //     delet.css('display', 'none');
        // });

        // });
        // Th??ng b??o ????ng nh???p
        // $('.left__linkblock').click(function (e) { 
        //     $('.tblogin-bg').css('display','block');
        // });
        // $(".t-dn").click(function (e) { 
        //     $('.tblogin-bg').css('display','none');
        // });
        CKEDITOR.replace('noi_dung');
    });
    $(window).on('load', function() {
        $('.loader').delay(100).fadeOut('fast');
    });

    function Delete(url) {
        if (confirm('B???n mu???n x??a')) {
            document.location = url;
        }
        return false;
    }
</script>
<script>
    google.charts.load('current', {
        packages: ['corechart']
    });
    google.charts.setOnLoadCallback(drawChart);

    function drawChart() {
        var data = new google.visualization.DataTable(); // T???o data table
        data.addColumn('string', 'T??n lo???i tin');
        data.addColumn('number', 'S??? tin');
        data.addRows([
            ['C??n h???', <?= $ds_ch['soluong'] ?>],
            ['Lo???i c??n', <?= $ds_lc['soluong'] ?>],
            ['Kh??ch h??ng', <?= $ds_kh['soluong'] ?>],
            ['Qu???n', <?= $ds_q['soluong'] ?>],
            ['L???ch ?????t', <?= $ds_ld['soluong'] ?>],
        ]);
        var options = { // Set option c???a bi???u ?????
            'title': 'Th???ng k??',
            'width': '100%',
            'height': 400,
            legend: {
                position: 'bottom'
            },
            vAxis: {
                viewWindow: {
                    min: 0
                }
            }
        }
        var chart = new google.visualization.PieChart(document.getElementById('chart'));
        chart.draw(data, options);
    }
   
</script>