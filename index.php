<?php
/* 
	Appointment: Главная страница
	File: index.php
	Author: vad
	Engine: vad23
*/


if(isset($_POST["PHPSESSID"])){
	session_id($_POST["PHPSESSID"]);
}
@session_start();
@ob_start();
@ob_implicit_flush(0);

@error_reporting(E_ALL ^ E_WARNING ^ E_NOTICE);

define('MOZG', true);
define('ROOT_DIR', dirname (__FILE__));
define('ENGINE_DIR', ROOT_DIR.'/system');

header('Content-type: text/html; charset=utf-8');

//AJAX
$ajax = $_POST['ajax'];

$logged = false;
$user_info = false;

include ENGINE_DIR.'/init.php';

//Если юзер перешел по реф ссылке, то добавляем ид реферала в сессию
if($_GET['reg']) $_SESSION['ref_id'] = intval($_GET['reg']);


//Загружаем кол-во новых новостей
$CacheNews = mozg_cache('user_'.$user_info['user_id'].'/new_news');
if($CacheNews){
	$new_news = "<div class=\"headm_newac\" style=\"margin-left:18px\">{$CacheNews}</div>";
	$news_link = '/notifications';
}

//Загружаем кол-во новых подарков
$CacheGift = mozg_cache("user_{$user_info['user_id']}/new_gift");
if($CacheGift){
	$new_ubm = "<div class=\"headm_newac\" style=\"margin-left:20px\">{$CacheGift}</div>";
	$gifts_link = "/gifts{$user_info['user_id']}?new=1";
} else
	$gifts_link = '/balance';

//Новые сообщения
$user_pm_num = $user_info['user_pm_num'];
if($user_pm_num)
	$user_pm_num = "<div class=\"no_mess_este\" style=\"cursor:pointer;\" title=\"Сообщения +{$user_pm_num}\" onclick=\"Page.Go('/messages'); return false\"></div>";
else
	$user_pm_num = "<div class=\"no_mess\" style=\"cursor:pointer;\" title=\"Сообщения\" onclick=\"Page.Go('/messages'); return false\"></div>";
	
//Новые друзья
$user_friends_demands = $user_info['user_friends_demands'];
if($user_friends_demands){
	$demands = "<div class=\"headm_newac\">{$user_friends_demands}</div>";
	$requests_link = '/requests';
} else
	$demands = '';
	
//ТП
$user_support = $user_info['user_support'];
if($user_support)
	$support = "<div class=\"headm_newac\" style=\"margin-left:26px\">{$user_support}</div>";
else
	$support = '';
	
//Отметки на фото
if($user_info['user_new_mark_photos']){
	$new_photos_link = 'newphotos';
	$new_photos = "<div class=\"headm_newac\" style=\"margin-left:22px\">".$user_info['user_new_mark_photos']."</div>";
} else {
	$new_photos = '';
	$new_photos_link = $user_info['user_id'];
}



//Приглашения в сообщества
if($user_info['invties_pub_num']){
	
	$new_groups = "<div class=\"headm_newac\" style=\"margin-left:26px\">".$user_info['invties_pub_num']."</div>";
	$new_groups_lnk = '/groups?act=invites';

} else {
	
	$new_groups = '';
	$new_groups_lnk = '/groups';
	
}

//Если включен AJAX то загружаем стр.
if($ajax == 'yes'){

	//Если есть POST Запрос и значение AJAX, а $ajax не равняется "yes" то не пропускаем
	if($_SERVER['REQUEST_METHOD'] == 'POST' AND $ajax != 'yes')
		die('Неизвестная ошибка');

	if($spBar)
		$ajaxSpBar = "$('#speedbar').show().html('{$speedbar}')";
	else
		$ajaxSpBar = "$('#speedbar').hide()";

	$result_ajax = <<<HTML
<script type="text/javascript">
document.title = '{$metatags['title']}';
{$ajaxSpBar};
document.getElementById('new_msg').innerHTML = '{$user_pm_num}';
document.getElementById('new_news').innerHTML = '{$new_news}';
document.getElementById('new_ubm').innerHTML = '{$new_ubm}';
document.getElementById('ubm_link').setAttribute('href', '{$gifts_link}');
document.getElementById('new_support').innerHTML = '{$support}';
document.getElementById('news_link').setAttribute('href', '/news{$news_link}');
document.getElementById('new_requests').innerHTML = '{$demands}';
document.getElementById('new_photos').innerHTML = '{$new_photos}';
document.getElementById('requests_link_new_photos').setAttribute('href', '/albums/{$new_photos_link}');
document.getElementById('requests_link').setAttribute('href', '/friends{$requests_link}');
$('#new_groups').html('{$new_groups}');
$('#new_groups_lnk').attr('href', '{$new_groups_lnk}');
</script>
{$tpl->result['info']}{$tpl->result['content']}
HTML;
	echo str_replace('{theme}', '/templates/'.$config['temp'], $result_ajax);

	$tpl->global_clear();
	$db->close();

	if($config['gzip'] == 'yes')
		GzipOut();
		
	die();
} 

//Если обращение к модулю регистрации или главной и юзер не авторизован то показываем регистрацию
if($go == 'register' OR $go == 'main' AND !$logged){
	include ENGINE_DIR.'/modules/index.php';

} else {

	$tpl->load_template('main.tpl');

}



 $tpl->set('{cnt2}', '25789');

//Если юзер залогинен
if($logged){

    //кабинет реактора
    $userStatus = $db->super_query("SELECT user_type FROM `".PREFIX."_users` WHERE user_id = '{$user_info['user_id']}'");
    $userType = $userStatus['user_type'];
    if($userType == 'editor'){
        $tpl->set('{editor}', '<li><a href="/index.php?go=editor">Кабинет редактора</a></li>');
    } elseif ($userType == 'writer') {
        $tpl->set('{editor}','<li><a href="/index.php?go=editorRequest">Мои заявки на редакцию</a></li>');
    } else {
        $tpl->set('{editor}','');
    }

    //вывод баланса

    $owner = $db->super_query("SELECT user_balance, balance_rub FROM `".PREFIX."_users` WHERE user_id = '{$user_info['user_id']}'");

    $tpl->set('{ubm}', $owner['user_balance']);

	//vip plugin start

	$obshenie = $db->super_query("SELECT user_id,text FROM `".PREFIX."_obshenie` WHERE date>'NOW()-604800' ORDER BY RAND() LIMIT 1");



	if($obshenie) {

		$avatar_obshenie = $db->super_query("SELECT user_photo, user_search_pref FROM `".PREFIX."_users` WHERE user_id = '{$obshenie['user_id']}'");

		$tpl->set('{avatar_obshenie}', '<a href="id'.$obshenie['user_id'].'"><img src="http://vseti.dp.ua/uploads/users/'.$obshenie['user_id'].'/100_'.$avatar_obshenie['user_photo'].'"/></a>');

		$tpl->set('{name_obshenie}', '<a href="id'.$obshenie['user_id'].'">'.$avatar_obshenie['user_search_pref'].'</a>');

		$tpl->set('{text}', $obshenie['text']);

		$tpl->set('[obshenie]','');

		$tpl->set('[/obshenie]','');

	} else {

		$tpl->set_block("'\\[obshenie\\](.*?)\\[/obshenie\\]'si","");

	}

	

	

	
	$tpl->set_block("'\\[not-logged\\](.*?)\\[/not-logged\\]'si","");
	$tpl->set('[logged]','');
	$tpl->set('[/logged]','');
	$tpl->set('{my-page-link}', '/u'.$user_info['user_id']);
	$tpl->set('{my-id}', $user_info['user_id']);
	
	//user_photo — Загружаем мини изображения пользователя в header.
	$row = $db->super_query("SELECT user_id, user_name, user_lastname, user_photo FROM `".PREFIX."_users` WHERE user_id = '{$user_info['user_id']}'");
	$tpl->set('{name}', $row['user_name']);
	$tpl->set('{lastname}', $row['user_lastname']);
	
	if($row['user_photo']) {
		$tpl->set('{ava}', '/uploads/users/'.$row['user_id'].'/50_'.$row['user_photo']);
	} else {
		$tpl->set('{ava}', '{theme}/images/no_ava_50.png');
	}
	
	//Salut
	if($row){
		$corr = 0;
		// Подсчет
			$hour = date('G');
			$time = $hour + $corr;

			if($time < 6){ $out = 'Доброй ночи'; }
			elseif($time < 12){ $out = 'Доброе утро'; }
			elseif($time < 18){ $out = 'Добрый день'; }
			else { $out = 'Добрый вечер'; }
					
			$tpl->set('{salut}', $out);
	} else {
		$tpl->set('{salut}', $out);
	}
	
	$tpl->set('{my_im}',"");
	//Вывод диалогов
	$my_im = $db->super_query("SELECT tb1.msg_num, im_user_id, tb2.user_search_pref, user_photo, user_last_visit, user_delet, user_ban FROM `".PREFIX."_im` tb1, `".PREFIX."_users` tb2 WHERE tb1.iuser_id = '".$user_id."' AND tb1.im_user_id = tb2.user_id ORDER by `idate` DESC LIMIT 0, 20", 1);
	if($my_im){
		foreach($my_im as $row_my_im){
	
			if($row_my_im['user_photo'] == '') {
			$my_im = "<a style=\"cursor:pointer;color:white;\" onClick=\"messages.new_({$row_my_im['im_user_id']}); return false\" title=\"{$row_my_im['user_search_pref']}\"><div class=\"tooltip1\" style=\"margin-left:10px;width:40px;height:40px;border-radius:20px;-webkit-border-radius:20px;-moz-border-radius:20px;float:left;background:url({theme}/images/no_ava_50.png) no-repeat;background-size:40px 40px\"></div></a>";
			} else {
			$my_im = "<a style=\"cursor:pointer;color:white;\" onClick=\"messages.new_({$row_my_im['im_user_id']}); return false\" title=\"{$row_my_im['user_search_pref']}\"><div class=\"tooltip1\" style=\"margin-left:10px;width:40px;height:40px;border-radius:20px;-webkit-border-radius:20px;-moz-border-radius:20px;float:left;background:url(/uploads/users/{$row_my_im['im_user_id']}/50_{$row_my_im['user_photo']}) no-repeat;background-size:40px 40px\"></div></a>";
			}
		}
		$tpl->set('{my_im}', $my_im);
	}
	
	
	//Заявки в друзья
	$user_friends_demands = $user_info['user_friends_demands'];
	if($user_friends_demands){
		$tpl->set('{demands}', $demands);
		$tpl->set('{requests-link}', $requests_link);
	} else {
		$tpl->set('{demands}', '');
		$tpl->set('{requests-link}', '');
	}
	
	//Новости
	if($CacheNews){
		$tpl->set('{new-news}', $new_news);
		$tpl->set('{news-link}', $news_link);
	} else {
		$tpl->set('{new-news}', '');
		$tpl->set('{news-link}', '');
	}
	
	//Сообщения
	if($user_pm_num)
		$tpl->set('{msg}', $user_pm_num);
	else 
		$tpl->set('{msg}', '');
	
	//Поддержка
	if($user_support)
		$tpl->set('{new-support}', $support);
	else 
		$tpl->set('{new-support}', '');
	
	//Отметки на фото
	if($user_info['user_new_mark_photos']){
		$tpl->set('{my-id}', 'newphotos');
		$tpl->set('{new_photos}', $new_photos);
	} else 
		$tpl->set('{new_photos}', '');

	//UBM
	if($CacheGift){
		$tpl->set('{new-ubm}', $new_ubm);
		$tpl->set('{ubm-link}', $gifts_link);
	} else {
		$tpl->set('{new-ubm}', '');
		$tpl->set('{ubm-link}', $gifts_link);
	}

	//Приглашения в сообщества
	if($user_info['invties_pub_num']){
		
		$tpl->set('{groups-link}', $new_groups_lnk);
		$tpl->set('{new_groups}', $new_groups);
		
	} else {
		
		$tpl->set('{groups-link}', $new_groups_lnk);
		$tpl->set('{new_groups}', '');
		
	}

} else {
	$tpl->set_block("'\\[logged\\](.*?)\\[/logged\\]'si","");
	$tpl->set('[not-logged]','');
	$tpl->set('[/not-logged]','');
	$tpl->set('{my-page-link}', '');
}

$tpl->set('{header}', $headers);
$tpl->set('{speedbar}', $speedbar);
$tpl->set('{mobile-speedbar}', $mobile_speedbar);
$tpl->set('{info}', $tpl->result['info']);

// FOR MOBILE VERSION 1.0
if($config['temp'] == 'mobile'){

	$tpl->result['content'] = str_replace('onClick="Page.Go(this.href); return false"', '', $tpl->result['content']);
	
	if($user_info['user_status'])
		$tpl->set('{status-mobile}', '<span style="font-size:11px;color:#000">'.$user_info['user_status'].'</span>');
	else
		$tpl->set('{status-mobile}', '<span style="font-size:11px;color:#999">установить статус</span>');
	
	$new_actions = $user_friends_demands+$user_support+$CacheNews+$CacheGift+$user_info['user_pm_num'];

	if($new_actions)
		$tpl->set('{new-actions}', "<div class=\"headm_newac\" style=\"margin-top:5px;margin-left:30px\">+{$new_actions}</div>");
	else
		$tpl->set('{new-actions}', "");
	
}

$tpl->set('{content}', $tpl->result['content']);
$tpl->set('{usernew}', $tpl->result['usernew']);
if($spBar)
	$tpl->set_block("'\\[speedbar\\](.*?)\\[/speedbar\\]'si","");
else {
	$tpl->set('[speedbar]','');
	$tpl->set('[/speedbar]','');
}

if($obshenie) {
    $avatar_obshenie = $db->super_query("SELECT user_photo, user_search_pref FROM `".PREFIX."_users` WHERE user_id = '{$obshenie['user_id']}'");
    if($avatar_obshenie['user_photo']){
        $tpl->set('{avatar_obshenie}', '<a href="u'.$obshenie['user_id'].'"><img src="/uploads/users/'.$obshenie['user_id'].'/50_'.$avatar_obshenie['user_photo'].'"/></a>');
    } else {
        $tpl->set('{avatar_obshenie}', '<a href="u'.$obshenie['user_id'].'"><img src="/templates/Default/images/no_ava_50.png"/></a>');
    }

    $tpl->set('{name_obshenie}', '<a href="id'.$obshenie['user_id'].'">'.$avatar_obshenie['user_search_pref'].'</a>');
    $tpl->set('{text}', $obshenie['text']);
    $tpl->set('[obshenie]','');
    $tpl->set('[/obshenie]','');
} else {
    $tpl->set_block("'\\[obshenie\\](.*?)\\[/obshenie\\]'si","");
}


//BUILD JS
if($logged)
	$tpl->set('{js}', '<script type="text/javascript" src="{theme}/js/jquery.lib.js"></script>
<script type="text/javascript" src="{theme}/js/'.$checkLang.'/lang.js"></script>
<script type="text/javascript" src="{theme}/js/main.js"></script>
<script type="text/javascript" src="{theme}/js/profile.js"></script>');
else
	$tpl->set('{js}', '<script type="text/javascript" src="{theme}/js/jquery.lib.js"></script>
<script type="text/javascript" src="{theme}/js/'.$checkLang.'/lang.js"></script>
<script type="text/javascript" src="{theme}/js/main.js"></script>');

// FOR MOBILE VERSION 1.0
if($user_info['user_photo']) $tpl->set('{my-ava}', "/uploads/users/{$user_info['user_id']}/50_{$user_info['user_photo']}");
else $tpl->set('{my-ava}', "{theme}/images/no_ava_50.png");
$tpl->set('{my-name}', $user_info['user_search_pref']);

if($check_smartphone) $tpl->set('{mobile-link}', '<a href="/index.php?act=change_mobile">мобильная версия</a>');
else $tpl->set('{mobile-link}', '');

$tpl->set('{lang}', $rMyLang);

$tpl->compile('main');

echo str_replace('{theme}', '/templates/'.$config['temp'], $tpl->result['main']);

$tpl->global_clear();
$db->close();

if($config['gzip'] == 'yes')
	GzipOut();





//vip plugin end
?>