<?php if ($kh['vai_tro'] == 1 || $kh['vai_tro'] == 2) { ?>
    <div class="ch-dd">
        <h3 style="font-weight: bold; margin-bottom: 20px; margin-top: 50px;">Căn hộ đã cho thuê</h3>
        <a href="?ctrl=home&act=themhopdong1"><button>Thêm hợp dồng mới</button></a>
        <table class="table table-bordered">
            <thead>
            <tr>
                <th scope="col">STT</th>
                <th scope="col">Thông tin căn hộ</th>
                <th scope="col">Vị trí</th>
                <th scope="col">Khách thuê</th>
                <!-- <th scope="col">Hình</th> -->
                <!-- <th scope="col">Giá thuê</th> -->
                <th scope="col">Ngày thuê</th>
                <th scope="col">Ngày hết hạn </th>
                <th scope="col">Giá</th>
                <th scope="col">Gia hạn</th>
                <th scope="col">Sửa</th>
                <th scope="col">Xóa</th>
            </tr>
            </thead>
            <tbody>
            <?php foreach ($hd as $stt => $c) {
                $can_ho = macan($c['ma_can']);
                $maloai = isset($can_ho["ma_loai"]) ? maloaican($can_ho["ma_loai"]) : '';
                $stt += 1;
                ?>

                <tr>
                    <th scope="row"><?= $stt ?></th>
                    <td>
                        <p style="font-weight: bold;"><?= $c["ten_can_ho"] ?></p>
                        <p>Loại căn: <?php echo isset($maloai["ten_can"]) ? $maloai["ten_can"] : '' ?></p>
                        <p>Diện tích: <?= $c["dien_tich"] ?> </p>
                        <p><strong>Đồ dùng:</strong></p>
                        <p><?= $c["do_dung"] ?></p>
                    </td>
                    <td>
                        <p>Địa chỉ: <?= $c["vi_tri"] ?></p>
                    </td>
                    <td><p style="font-weight: bold;"><?= $c["nguoi_thue"] ?></p></td>
                    <td><p><?= $c["ngay_thue"] ?></p></td>
                    <td><p><?= $c["ngay_het_han"] ?></p></td>
                    <td>
                        <p><strong>Giá thuê:</strong></p>
                        <p> <?=number_format($c["gia_thue"],0,'','.') ?> VND</p>
                        <p><strong>Chi phí khác:</strong></p>
                        <p><?= $c["chi_phi_khac"] ?></p>
                    </td>
                    <td>
                        <div class="divmota3">
                            <span style="display: none;"><?=$can_ho["ma_can"]?></span>
                            <input type="button" value="Gia hạn" class="giahan" data-toggle="modal" data-target="#datlich" data-dismiss="modal">
                        </div>
                    </td>


                    <td><a href="?act=edit_ch&ma_can=<?=$c['ma_can']?>"><i class="fas fa-edit"></i></a></td>
                    <td><a class="btn_delete_ch" href="?act=delete_ch&ma_can=<?= $c['ma_can'] ?>"><i class="fas fa-trash-alt"></i></a></td>
                </tr>
            <?php } ?>

            </tbody>
        </table>
    </div>
<?php } ?>
<script>
    $(".giahan").click(function (e) {
        var btnClick = $(this);

        var id = btnClick.prev().html();
        //   alert(id);
        $.get("?ctrl=home&act=giahan", {'canhoid': id},
            function (data) {
                $('#datlich').html(data);
            });
    });
</script>
<?php if ($kh['vai_tro'] == 0) { ?>
    <div class="ch-dd">
        <h3 style="font-weight: bold; margin-bottom: 20px; margin-top: 50px;">Căn hộ đã cho thuê</h3>
        <a href=""><button></button></a>

        <table class="table table-bordered">
            <thead>
            <tr>
                <th scope="col">STT</th>
                <th scope="col">Thông tin căn hộ</th>
                <th scope="col">Vị trí</th>
                <th scope="col">Chủ trọ</th>
                <!-- <th scope="col">Hình</th> -->
                <!-- <th scope="col">Giá thuê</th> -->
                <th scope="col">Ngày thuê</th>
                <th scope="col">Ngày hết hạn </th>
                <th scope="col">Giá</th>
                <th scope="col">Xóa</th>
            </tr>
            </thead>
            <tbody>
            <?php foreach ($hd as $c) {
                $maloai = maloaican($c["ma_loai"]);
                $stt += 1;
                ?>

                <tr>
                    <th scope="row"><?= $stt ?></th>
                    <td>
                        <p style="font-weight: bold;"><?= $c["ten_can_ho"] ?></p>
                        <p>Loại căn: <?php echo $maloai["ten_can"] ?></p>
                        <p>Diện tích: <?= $c["dien_tich"] ?> </p>
                        <p><strong>Đồ dùng:</strong></p>
                        <p><?= $c["do_dung"] ?></p>
                    </td>
                    <td>
                        <p>Địa chỉ: <?= $c["vi_tri"] ?></p>
                    </td>
                    <td><p style="font-weight: bold;"><?= $c["chu_nha"] ?></p></td>
                    <td><p><?= $c["ngay_thue"] ?></p></td>
                    <td><p><?= $c["ngay_het_han"] ?></p></td>
                    <td>
                        <p><strong>Giá thuê:</strong></p>
                        <p> <?=number_format($c["gia_thue"],0,'','.') ?> VND</p>
                        <p><strong>Chi phí khác:</strong></p>
                        <p><?= $c["chi_phi_khac"] ?></p>
                    </td>

                    <td><a class="btn_delete_ch" href="?act=delete_ch&ma_can=<?= $c['ma_can'] ?>"><i class="fas fa-trash-alt"></i></a></td>
                </tr>
            <?php } ?>

            </tbody>
        </table>

    </div>
<?php } ?>
