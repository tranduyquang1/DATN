<?php if ($kh['vai_tro'] == 1 || $kh['vai_tro'] == 2) { ?>
<div class="ch-dd">
          <h3 style="font-weight: bold; margin-bottom: 30px; margin-top: 50px;">Danh sách khách hàng đặt xem căn hộ của
                    bạn</h3>
          <table class="table table-bordered" style="padding: 0px 20px;">
                    <thead>
                              <tr>
                                        <th scope="col">STT</th>
                                        <th scope="col">Tên khách hàng</th>
                                        <th scope="col" style="width: 30%;">Căn hộ</th>
                                        <th scope="col">Ngày xem</th>
                                        <th scope="col">Ngày đặt</th>
                                        <th scope="col">Ghi chú</th>
                                        <th scope="col">Thông báo lịch</th>
                                        <th scope="col">Tình trạng</th>
                                        <th scope="col">Duyệt</th>
                                        <th scope="col">Xóa</th>

                                        
                              </tr>
                    </thead>
                    <tbody>
                              <?php foreach ($dsld as $stt => $ds) {
                                $stt+=1;
                                
                                ?>

                              <tr>
                                        <th scope="row"><?=$stt?></th>
                                        <td>
                                                  <p><?=$ds["ten_nguoi_dat"]?></p>
                                                  <p>SĐT: <?=$ds['sodt']?></p>
                                                  <p><strong>Ghi chú :</strong><?= $ds['ghi_chu'] ?></p>

                                        </td>

                                        <td><span style="width: 55%; float: left;"> <?=$ds['ten_can_ho']?></span> <?php if (date("Y-m-d") <= date_format(date_create($ds['ngay_dat']), "Y-m-d") and (date("h-i") <= $ds['gio_xem']) ) {
                                    echo "<span class='neww' style='width: 25%'>Sắp tới</span>";
                                }?></td>
                                        <td>Lúc: <?= $ds['gio_xem'] ?>
                                            <br>
                                            Ngày:<?=date_format(date_create($ds['ngay_xem']), "d/m/yy")?>

                                        </td>
                                        <td><?=date_format(date_create($ds['ngay_dat']), "d/m/yy")?></td>
                                        <td><?php if (date("Y-m-d") >= date_format(date_create($ds['ngay_xem']), "Y-m-d")) {
                                    echo "<span class='hethang'>Đã hết hạn</span>";
                                }
                                else{
                                    echo "Chưa xem nhà";
                                }?></td>
                                  <td><?php if ($ds['trang_thai_lich']==1) { echo "<p>Khách chờ xem nhà</p>"; }
                                  else { echo "<p>Khách đã hủy lịch xem</p> ";}?>    </td>
                                  <td>
                                      <?php if ($ds['trang_thai']==1 && $ds['trang_thai_lich'] !=0 &&$ds['trang_thai_lich'] !=2 ) { ?>
                                      <a href="?act=chothue&ma_dat=<?=$ds["ma_dat"]?>&ma_can=<?=$ds["ma_can"]?>">Cho thuê</a>;
                                     <?php } ?>
                                      <?php if($ds['trang_thai']==2){ ?>
                                          <span style="color: green;">Bạn đã cho thuê căn hộ</span>
                                          <br>
                                          <br>
                                          <a href="?act=thuhoi&ma_dat=<?=$ds["ma_dat"]?>">Hủy thuê</a>;
                                          <?php } ?>

                                  </td>
                                <td>
                                  <?php
                                  if ($ds["ngay_xem"] < date("Y-m-d")) {
                                    echo "";
                                  }
                                  else{
                                    ?>
                                    <?php 
                                        if($ds['trang_thai_lich'] == 1){
                                        ?>
                                        <a href="?act=updatedl&ma_dat=<?=$ds["ma_dat"]?>" style="margin-left: 10px"><i class="fas fa-check-square"></i></a>
                                        <?php
                                      }

                                  }
                                  ?>
                                </td>
                                  <td><a  href="?act=deletedatlich&ma_dat=<?=$ds["ma_dat"]?>" style="margin-left: 10px"><i class="fas fa-trash"></i></a></td>
                              </tr>
                              <?php
                            }?>

                    </tbody>
          </table>
</div>
<?php } ?>
<?php if($kh['vai_tro'] == 0){ ?>
    <div class="ch-dd">
        <h3 style="font-weight: bold; margin-bottom: 20px; margin-top: 50px;">Hãy liên hệ với chúng tôi để thành chủ trọ và đăng bài</h3>
    </div>
<?php }?>
