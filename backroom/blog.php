<?php

session_start();

if(!isset($_SESSION['username'])){
	header("location: index.php");
}

include '../settings/konfigurasi.php';

$tblName = 'blogpost';
if(isset($_REQUEST['type']) && !empty($_REQUEST['type'])){
    $type = $_REQUEST['type'];
    switch($type){
        case "view":
            $records = $db->getRows($tblName);
            if($records){
                $data['records'] = $db->getRows($tblName);
                $data['status'] = 'OK';
            }else{
                $data['records'] = array();
                $data['status'] = 'ERR';
            }
            echo json_encode($data);
            break;
        case "add":
             if(!empty($_POST['data'])){
                $blogData = array(
                    'blog_title' => $_POST['data']['blog_title'],
                    'blog_content' => $_POST['data']['blog_content']
                );
                $insert = $db->insert($tblName,$blogData);
                if($insert){
                    $data['data'] = $insert;
                    $data['status'] = 'OK';
                    $data['msg'] = 'Blog data has been added successfully.';
                }else{
                    $data['status'] = 'ERR';
                    $data['msg'] = 'Some problem occurred, please try again.';
                }
            }else{
                $data['status'] = 'ERR';
                $data['msg'] = 'Some problem occurred, please try again.';
            }
            echo json_encode($data);
            break;
        case "edit":
            if(!empty($_POST['data'])){

                $blogData = array(
                    'blog_title' => $_POST['data']['blog_title'],
                    'blog_content' => $_POST['data']['blog_content']
                );
                $condition = array('blog_id' => $_POST['data']['blog_id']);
                $update = $db->update($tblName,$blogData,$condition);

                if($update){
                    $data['status'] = 'OK';
                    $data['msg'] = 'Blog data has been updated successfully.';
                }else{
                    $data['status'] = 'ERR';
                    $data['msg'] = 'Some problem occurred, please try again.';
                }
            }else{
                $data['status'] = 'ERR';
                $data['msg'] = 'Some problem occurred, please try again.';
            }
            echo json_encode($data);
            break;

        case "delete":
            if(!empty($_POST['id'])){
                $condition = array('blog_id' => $_POST['id']);
                $delete = $db->delete($tblName,$condition);
                if($delete){
                    $data['status'] = 'OK';
                    $data['msg'] = 'User data has been deleted successfully.';
                }else{
                    $data['status'] = 'ERR';
                    $data['msg'] = 'Some problem occurred, please try again.';
                }
            }else{
                $data['status'] = 'ERR';
                $data['msg'] = 'Some problem occurred, please try again.';
            }
            echo json_encode($data);
            break;
        default:
            echo '{"status":"INVALID"}';
    }
}