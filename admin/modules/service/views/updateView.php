<?php
get_header();
?>
<div id="main-content-wp" class="add-cat-page">
    <div class="wrap clearfix">
        <?php get_sidebar(); ?>
        <div id="content" class="fl-right">
            <div class="section" id="title-page">
                <div class="clearfix">
                    <h3 id="index" class="fl-left">Cập nhật dịch vụ</h3>
                </div>
                <?php
                    echo form_success('service');
                ?>
            </div>
            <div class="section" id="detail-page">
                <div class="section-detail">
                    <form method="POST" enctype="multipart/form-data">
                        <label for="title">Tên dịch vụ</label>
                        <input type="text" name="service_name" id="title" value="<?php echo $info_service['service_name'] ?>">
                        <?php echo form_error('service_name') ?>
                        <label for="title">Mô tả dịch vụ</label>
                        <input type="text" name="service_desc" id="slug" value="<?php echo $info_service['service_desc'] ?>">
                        <?php echo form_error('service_desc') ?>
                        <label>Hình ảnh dịch vụ</label>
                        <div id="uploadFile">
                            <input type="file" name="file" id="upload-thumb">
                            <!-- <input type="submit" name="btn-upload-thumb" value="Upload" id="btn-upload-thumb"> -->

                            <!-- Xử lý saus -->
                            <!-- <img src="<?php if(isset($upload_file)) echo $upload_file;
                                         else echo 'public/images/img-thumb.png'; ?>"> -->
                        </div>
                        <?php echo form_error('file_type') ?>
                        <button type="submit" name="btn_update" id="btn-submit">Cập nhật</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
<?php
get_footer();
?>