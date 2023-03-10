<div class="divdl">
    <i data-dismiss="modal" class="glyphicon glyphicon-remove"></i>
    <h1>Đổi ngày xem </h1>
    <br>
    <br>
    <?php if (isset($_SESSION["id"])) {

        ?>
        <form action="?ctrl=home&act=henlailich"  method="post" name="myfor"  onsubmit="return validatefor()">
            <input type="hidden" name="ma_can" value="<?=$idcanho["ma_can"]?>">
            <span style="margin-left: 20px;">Ngày xem:</span>
            <input  class="ipdl4" id="ngay_xem"  type="date" min="<?=date("Y-m-d")?>" name="ngay_xem" >
            <br>
            <span style="margin-left: 20px;">Giờ xem :</span>
            <input class="ipdl4" id="gio_xem" name="gio_xem" min="<?=date("H-i-s")?>" type="time" placeholder="Giờ xem">
            <br>
            <span style="margin-left: 20px;">Ghi chú :</span>
            <input class="ipdl4" id="ghi_chu" name="ghi_chu" type="text" placeholder="Lý do">
            <br>
            <input type="hidden" name="ma_tk" value="<?=$_SESSION["id"]?>">
            <input type="submit" class="guitt" id="dat1" name="dat1" style="background-color: orangered; font-size: 12pt; color: white; " value="Gửi thông tin">

        </form>
        <?php
        if (isset($message)&&($message!="")) {
            echo '<p>'.$message.'</p>';
        }
        ?>
        <?php
    }
    else{
        ?>
        <form action="">
            <input class="ipdl4" type="date" placeholder="Chọn ngày">
            <div class="guitt">
                <a href="?ctrl=home&act=dangnhap">Bạn cần đăng nhập</a>
            </div>
        </form>
        <?php
    }?>


</div>

