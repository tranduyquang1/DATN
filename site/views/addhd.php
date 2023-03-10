<div class="dangtin">
    <h3 style="font-family: sans-serif;">Thêm hợp đồng</h3>
    <form onsubmit="return validateform()" name="myform" action="?ctrl=home&act=themhopdong&ma_tk=<?=$_SESSION["id"]?>" class="formdangtin" method="POST" enctype="multipart/form-data">
        <div class="tt-right-row">
            <label for="">Tên căn hộ</label>
            <input type="text" name="ten_can_ho" id="">
        </div>
        <div class="tt-right-row">
            <label for="">Mã căn</label>
            <input type="text" name="ma_can" id="">
        </div>
        <div class="tt-right-row">
            <label for="">Địa chỉ</label>
            <input type="text" name="vi_tri" id="">
        </div>
        <div class="tt-right-row">
            <label for="">Loại căn</label>
           <select name="loai_can">
               <option></option>
               <?php foreach ($loaican as $lc){?>
                   <option value="<?=$lc["ten_can"]?>"><?=$lc["ten_can"]?></option>
               <?php }?>
           </select>
        </div>
        <div class="tt-right-row">
            <label for="">Diện Tích</label>
            <input type="text" name="dien_tich" id="">
        </div>
        <div class="tt-right-row">
            <label for="">Đồ dùng</label>
            <input type="text" name="do_dung" id="">
        </div>
        <div class="tt-right-row">
            <label for="">Chủ nhà</label>
            <input type="text" name="chu_nha" id="">
        </div>
        <div class="tt-right-row">
            <label for="">Người thuê</label>
            <input type="text" name="nguoi_thue" id="">
        </div>
        <div class="tt-right-row">
            <label for="">Giá</label>
            <input type="text" name="gia_thue" id="">
        </div>
        <div class="tt-right-row">
            <label for="">Chi phí khác</label>
            <input type="text" name="chi_phi_khac" id="">
        </div>
        <div class="tt-right-row">
            <label for="">Ngày thuê</label>
            <input type="date" name="ngay_thue" id="">
        </div>
        <div class="tt-right-row">
            <label for="">Ngày hết hạn</label>
            <input type="date" name="ngay_het_han" id="">
        </div>


        <button class="btn-tk">Lưu</button>
    </form>
</div>