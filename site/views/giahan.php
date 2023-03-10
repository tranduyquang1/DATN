<div class="divdl">
    <i data-dismiss="modal" class="glyphicon glyphicon-remove"></i>
    <h1>GIA HẠN HỢP ĐỒNG</h1>
    <br>
    <br>
    <?php if (isset($_SESSION["id"])) {

        ?>
        <form action="?ctrl=home&act=giahanhopdong"  method="post" name="myfor"  onsubmit="return validatefor()">
            <input type="hidden" name="ma_can" value="<?=$idcanho["ma_can"]?>">
            <span style="margin-left: 20px;">Ngày thuê</span>
            <input  class="ipdl4"  type="date" min="<?=date("Y-m-d")?>" name="ngay_thue" >
            <br>
            <span style="margin-left: 20px;">Đến ngày</span>
            <input class="ipdl4" id="ngay_het_han" name="ngay_het_han" min="<?=date("Y-m-d")?>" type="date" placeholder="Chọn ngày">
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

