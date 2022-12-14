<?php


include("events.php");

    $event_name = $_POST["name-event"];

    session_start();
    $message = ''; 

    if (isset($_FILES['img-event']) && $_FILES['img-event']['error'] === UPLOAD_ERR_OK) {

        $fileTmpPath = $_FILES['img-event']['tmp_name'];
        $fileName = $_FILES['img-event']['name'];
        $fileSize = $_FILES['img-event']['size'];
        $fileType = $_FILES['img-event']['type'];
        $fileNameCmps = explode(".", $fileName);
        $fileExtension = strtolower(end($fileNameCmps));

        $newFileName = md5(time() . $fileName) . '.' . $fileExtension;

        $allowedfileExtensions = array('jpg', 'gif', 'png');

        if (in_array($fileExtension, $allowedfileExtensions)) {

            $uploadFileDir = './img/events_img/';
            $dest_path = $uploadFileDir . $newFileName;

            if(move_uploaded_file($fileTmpPath, $dest_path)) {
                $message ='File is successfully uploaded.';
            } else {
                $message = 'There was some error moving the file to upload directory. Please make sure the upload directory is writable by web server.';
            }
        } else {
            $message = 'Upload failed. Allowed file types: ' . implode(',', $allowedfileExtensions);
        }
    } else {
        $message = 'There is some error in the file upload. Please check the following error.<br>';
        $message .= 'Error:' . $_FILES['img-event']['error'];
    }
    $_SESSION['message'] = $message;


    $event_text = $_POST['textarea'];
    $xclick = $_POST['xclick'];
    $yclick = $_POST['yclick'];

    $event = new Event();
    $event->add_event(addslashes($event_name), $dest_path, addslashes($event_text), $xclick, $yclick);

    header("Location: index.php");
?>