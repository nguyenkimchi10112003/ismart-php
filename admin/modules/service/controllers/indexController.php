<?php

function construct(){
    load_model('index');
}

function indexAction(){
    $list_service = get_list_service();
    $data = array(
        'list_service' => $list_service
    );
    load_view('index',$data);
}

function addAction(){
    global $error,$service_name,$service_desc,$success;
    // Kiểm tra upload ảnh
    if(isset($_FILES['file'])){
        $upload_dir = "uploads/service/";
        $upload_file = $upload_dir. $_FILES['file']['name'];
        $error = array();
        $type_allow = array('png','gif','jpeg', 'jpg');
        $type = pathinfo($_FILES['file']['name'], PATHINFO_EXTENSION);
        if(!in_array(strtolower($type), $type_allow )){
            $error['file_type'] = 'Upload không đúng file ảnh';
        }else{
            $file_size = $_FILES['file']['size'];
            if($file_size > 29000000){
                $error['file_size'] = 'Kích thước upload ảnh phải dưới 20MB';
            }
    
            if(file_exists($upload_file)){
                //$error['file_exists'] = 'File đã tồn tại trong hệ thống';
                $file_name = pathinfo($_FILES['file']['name'], PATHINFO_FILENAME);
                $new_file_name = $file_name. ' - Copy.';
                $new_upload_file = $upload_dir . $new_file_name . $type;
                $k = 1;
                while(file_exists($new_upload_file)){
                    $new_file_name = $file_name. " - Copy({$k}).";
                    $k++;
                    $new_upload_file = $upload_dir . $new_file_name. $type;
                }
                $upload_file = $new_upload_file;
            }
        }
    
        if(empty($error)){
            if(move_uploaded_file($_FILES['file']['tmp_name'], $upload_file)){
                // echo "<img src='{$upload_file}'/><br>";
                // echo "<a href='{$upload_file}'>Download: {$_FILES['file']['name']}</a>";
            }
        }
    }
    
    if(isset($_POST['btn_add'])){
        $error = array();

        if(empty($_POST['service_name'])){
            $error['service_name'] = "Không được để trống trường tên dịch vụ";
        }else{
            $service_name = $_POST['service_name'];
        }

        if(empty($_POST['service_desc'])){
            $error['service_desc'] = "Không được để trống trường mô tả dịch vụ";
        }else{
            $service_desc = $_POST['service_desc'];
        }

        if(empty($error)){
            $data_service = array(
                'service_name' => $service_name,
                'service_desc' => $service_desc,
                'service_thumb' => $_FILES['file']['name'],
                'creator' => get_fullname_by_username(user_login()),
                'created_at' => time()
            );
            add_service($data_service);
            $success['service'] = "Thêm dịch vụ mới thành công";
        }
    }
    load_view('add');
}

function updateAction(){
    $id = (int)$_GET['id'];
    $info_service = get_info_service_by_id($id);
    global $error,$service_name,$service_desc,$success;
    // Kiểm tra upload ảnh
    if(isset($_FILES['file']) && $_FILES['file']['size'] > 0){
        $upload_dir = "uploads/service/";
        $upload_file = $upload_dir. $_FILES['file']['name'];
        $error = array();
        $type_allow = array('png','gif','jpeg', 'jpg');
        $type = pathinfo($_FILES['file']['name'], PATHINFO_EXTENSION);
        if(!in_array(strtolower($type), $type_allow )){
            $error['file_type'] = 'Upload không đúng file ảnh';
        }else{
            $file_size = $_FILES['file']['size'];
            if($file_size > 29000000){
                $error['file_size'] = 'Kích thước upload ảnh phải dưới 20MB';
            }
    
            if(file_exists($upload_file)){
                //$error['file_exists'] = 'File đã tồn tại trong hệ thống';
                $file_name = pathinfo($_FILES['file']['name'], PATHINFO_FILENAME);
                $new_file_name = $file_name. ' - Copy.';
                $new_upload_file = $upload_dir . $new_file_name . $type;
                $k = 1;
                while(file_exists($new_upload_file)){
                    $new_file_name = $file_name. " - Copy({$k}).";
                    $k++;
                    $new_upload_file = $upload_dir . $new_file_name. $type;
                }
                $upload_file = $new_upload_file;
            }
        }
    
        if(empty($error)){
            if(move_uploaded_file($_FILES['file']['tmp_name'], $upload_file)){
                // echo "<img src='{$upload_file}'/><br>";
                // echo "<a href='{$upload_file}'>Download: {$_FILES['file']['name']}</a>";
            }
        }
    }
    
    if(isset($_POST['btn_update'])){
        $error = array();

        if(empty($_POST['service_name'])){
            $error['service_name'] = "Không được để trống trường tên dịch vụ";
        }else{
            $service_name = $_POST['service_name'];
        }

        if(empty($_POST['service_desc'])){
            $error['service_desc'] = "Không được để trống trường mô tả dịch vụ";
        }else{
            $service_desc = $_POST['service_desc'];
        }

        if(empty($error)){
            $data_service = array(
                'service_name' => $service_name,
                'service_desc' => $service_desc,
                'service_thumb' =>  isset($upload_file) ? $_FILES['file']['name'] : $info_service['service_thumb'],
                'updated_user' => get_fullname_by_username(user_login()),
                'updated_at' => time()
            );
            update_service_by_id($id,$data_service);
            $success['service'] = "Cập nhật dịch vụ thành công";
            $info_service = $data_service;
        }
    }
    $data = array(
        'info_service' => $info_service
    );
    load_view('update',$data);
}

function deleteAction(){
    $id = (int)$_GET['id'];
    delete_service_by_id($id);
    redirect("?mod=service");
}

?>