<?php

session_start();
if(!defined('MOZG'))
	die('Hacking attempt!');

if($ajax == 'yes')
    $metatags['title'] = "Добавление граффити на стену";
    if($logged){
        $act = $_GET['act'];
    switch($act){
        case "add":
        NoAjaxQuery();  
        $id = intval($_POST['id']);
        $user_id = $user_info['user_id'];
        $graffitiRand = rand(100,99999);
        $tpl->load_template('graffiti.tpl');
        $tpl->set('{id}', $id);
        $tpl->set('{user_id}', $user_id);
        $tpl->set('{graffitiRand}', $graffitiRand);
        $tpl->compile('content');
        AjaxTpl();
        die();	
    break;
	
    case "send":
    NoAjaxQuery();
    $id = intval($_GET['id']);
    $user_id = $user_info['user_id'];
    if(isset($_FILES['Filedata']))
    {
        $fHandle = fopen($_FILES['Filedata']['tmp_name'], "rb");
        if($fHandle)
        {
            $fData = bin2hex(fread($fHandle, 32));
            if($fData == "89504e470d0a1a0a0000000d494844520000024a0000012508060000001b69cd")
            {
                $fImageData	= getimagesize($_FILES['Filedata']['tmp_name']);
                if($fImageData[0] == 586 && $fImageData[1] == 293)
                {
                    $file_time	= time();
                    $file_rand	= rand(0,9);
                    $file_time	= $file_time . $file_rand;
                    $file_name	= md5($file_time) . ".png";
                    $i			= 0;
                    while(file_exists($file_name) && $i < 20)
                    {
                        // Берем увеличение 20x, но не факт, что что-то выйдет.
                        $i++;
                        // Если такой файл уже есть, то создаем новый.
                        $file_time	= time();
                        $file_rand	= rand(0,9)+$i;
                        $file_time	= $file_time . $file_rand;
                        $file_name	= md5($file_time) . ".png";
                    }
					
					//Если нет папки альбома, то создаём её
					$album_dir = ROOT_DIR."/uploads/graffiti/{$user_id}/";
					if(!is_dir($album_dir)){ 
						@mkdir($album_dir, 0777);
						@chmod($album_dir, 0777);
					}

                    $origImage = imagecreatefrompng($_FILES['Filedata']['tmp_name']);
                    $newImage	= imagecreatetruecolor(408, 186);
                    imagecopyresized($newImage, $origImage, 0, 0, 0, 0, 408, 186, $fImageData[0], $fImageData[1]);
                    imagepng($newImage, ROOT_DIR."/uploads/graffiti/{$user_id}/".$file_name);
                    $date = time();
                    $image_wall	= "<img src=\"/uploads/graffiti/{$user_id}/".$file_name."\" border=\"0\" />";
                    
                    //Вставляем саму запись в БД
				    $db->query("INSERT INTO `".PREFIX."_wall` SET author_user_id = '$user_id', for_user_id = '$id', text = '$image_wall', add_date = '$date', graffiti = 'yes'");
				    $dbid = $db->insert_id();
                    $db->query("UPDATE `".PREFIX."_users` SET user_wall_num = user_wall_num+1 WHERE user_id = '$id'");
                }
            }
        }
    }
    die();
    break;
    }		
}
?>