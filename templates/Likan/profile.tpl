{url_img}
  <style>
   @font-face {
    font-family: Cormorant Infant; /* Гарнитура шрифта */
    src: url(https://books-star.ru/shrift/CormorantInfant-Bold.ttf); /* Путь к файлу со шрифтом */
   }
   h8 {
    font-family: 'Cormorant Infant', serif;
	
   }
 
  </style>
<div id="jquery_jplayer"></div>
<input type="hidden" id="teck_id" value="" />
<input type="hidden" id="teck_prefix" value="" />
<input type="hidden" id="typePlay" value="standart" />

<DIV id="profile">
<DIV class="contect">
<DIV id="pagina">
<DIV id="page_body">
<TABLE id="wrapper">

<TBODY>
<TR>

<TD vAlign="top" width="130" height="155"><span id="ava"><A href="" onclick="Photo.Profile('{user-id}', '{user-ph}'); return false">
<DIV style="BACKGROUND: url({ava}) no-repeat; background-size: 167px" class="p1" id="ava_{user-id}" alt="{name} {lastname}" title="Увеличить"></DIV></A></span>
<DIV id="p2">
    {userType}
</DIV>
</TD>
<TD vAlign="top" width="670">
<DIV id="c789456" style="    display: inline-block;"> <p class="shadowtext">{name} {lastname}</p></DIV >
<DIV style="    text-shadow: 1px 1px 2px black, 0 0 1em red;    padding-bottom: 10px;    color: white;    font-size: 1em;    width: 180px;    display: inline-block;padding-left: 15px;    ">{user-form}</DIV>

[owner]<div class="set_status_bg no_display" id="set_status_bg" style="z-index:9999;">
  <input type="text" id="status_text" class="status_inp" value="{status-text}" style="width:500px;" maxlength="255" onKeyPress="if(event.keyCode == 13)gStatus.set()" />
  <div class="fl_l status_text"><span class="no_status_text [status]no_display[/status]">Введите здесь ваши мысли</span><a href="/" class="yes_status_text [no-status]no_display[/no-status]" onClick="gStatus.set(1); return false">Удалить заметку</a></div>
  [status]<div class="button_div_gray fl_r status_but margin_left"><button>Отмена</button></div>[/status]
  <div class="button_div fl_r status_but"><button id="status_but" onClick="gStatus.set()">Опубликовать</button></div>
 </div>[/owner]
 
 [owner]<div class="status">
  <div><a href="/" id="new_status" onClick="gStatus.open(); return false">[blacklist]{status-text}[/blacklist]</a></div>
  <span id="tellBlockPos"></span>
  <div class="status_tell_friends no_display">
   <div class="status_str"></div>
   <div class="html_checkbox" id="tell_friends" onClick="myhtml.checkbox(this.id); gStatus.startTell()">Рассказать другим писателям</div>
  </div>
  <a href="#" onClick="gStatus.open(); return false" id="status_link" [status]class="no_display"[/status]>установить статус</a>
 </div>[/owner]
 [not-owner][status][blacklist]
 <div class="status">
 {status-text}
 </div>
 [/blacklist][/status][/not-owner]

<DIV id="locality"><font size="2" color="gray"><IMG src="{theme}/images/pages/location.png">{city}, {country} - {online}</font></DIV>
<div style="margin-top:10px"></div>
[photos]<div style="float:left;"><a href="" onclick="likan.photo({user-id}); return false"><img style="background-color: #355d98;" src="{theme}/images/no_cover.png" width="92" height="66"></a>{photos_view_albums}</div>[/photos]
<BR></TD>
<TD vAlign="top" width="250">

[owner]

<a class="fm_img_border" onclick="doLoad.data(1); fon.addbox()"><div><img width="16" src="{theme}/images/fonn.png" />Фон страницы</div></a>
<div style="position: relative;margin-top: 20px;">

<a class="fm_img_border" href="/editmypage" onClick="Page.Go(this.href); $('.profileMenu').hide(); return false;"><img onmouseover="myhtml.title('104', 'Редактировать страницу', 'newBBlock1')" id="newBBlock1104" width="16" src="{theme}/images/icons/editmypages.png" /></a>
<a class="fm_img_border" href="/editmypage" onClick="Page.Go(this.href); $('.profileMenu').hide(); return false;"><img onmouseover="myhtml.title('104', 'Редактировать страницу',https://books-star.ru 'newBBlock1')" id="newBBlock1104" width="16" src="{theme}/images/icons/editmypages.png" /></a>

<a class="fm_img_border" onclick="Profile.LoadPhoto(); $('.profileMenu').hide(); return false;"><img width="16" onmouseover="myhtml.title('101', 'Загрузить фотографию', 'newBBlock1')" id="newBBlock1101" src="{theme}/images/icons/upload.png"></a>
<a class="fm_img_border" onclick="Profile.miniature(); return false;"><img width="16" onmouseover="myhtml.title('777', 'Изменить миниатюру', 'newBBlock1')" id="newBBlock1777" src="{theme}/images/icons/miniature.png"></a>
<a class="fm_img_border" onClick="Profile.DelPhoto(); $('.profileMenu').hide(); return false;"><img width="16" onmouseover="myhtml.title('778', 'Удалить фотографию', 'newBBlock1')" id="newBBlock1778" src="{theme}/images/icons/delete_foto.png"></a>
</div>
[/owner]


[not-owner]
<div style="position: relative;margin-top: 20px;">
[blacklist][privacy-msg]<a class="fm_img_border" href="/" onClick="messages.new_({user-id}); return false"><img onmouseover="myhtml.title('104', 'Отправить сообщение', 'newBBlock1')" id="newBBlock1104" width="16" src="{theme}/images/icons/message.png" /></a>[/privacy-msg][/blacklist]
[no-friends][blacklist]<a class="fm_img_border" href="/" onClick="friends.add({user-id}); return false"><img width="16" onmouseover="myhtml.title('101', 'Добавить в единомышленники', 'newBBlock1')" id="newBBlock1101" src="{theme}/images/icons/frends.png"></a>[/blacklist][/no-friends]
[yes-friends]<a class="fm_img_border" href="/" onClick="friends.delet({user-id}, 1); return false"><img width="16" onmouseover="myhtml.title('102', 'Убрать из друзей', 'newBBlock1')" id="newBBlock1102" src="{theme}/images/icons/frends_no.png"></a>[/yes-friends]

[blacklist][no-subscription]<a class="fm_img_border" href="/" onClick="subscriptions.add({user-id}); return false" id="lnk_unsubscription"><span id="text_add_subscription"><img onmouseover="myhtml.title('105', 'Подписаться на обновления', 'newBBlock1')" id="newBBlock1105" width="16" src="{theme}/images/icons/reload.png" /></span><img src="{theme}/images/loading_mini.gif" alt="" id="addsubscription_load" class="loady no_display" style="margin-right:-13px" /></a>[/no-subscription][/blacklist]
[yes-subscription]<a class="fm_img_border" href="/" onClick="subscriptions.del({user-id}); return false" id="lnk_unsubscription"><span id="text_add_subscription"><img onmouseover="myhtml.title('105', 'Отписаться от обновлений', 'newBBlock1')" id="newBBlock1105" width="16" src="{theme}/images/icons/power.png" /></span><img src="{theme}/images/loading_mini.gif" alt="" id="addsubscription_load" class="loady no_display" style="margin-right:-13px" /></a>[/yes-subscription]
[no-fave]<a class="fm_img_border" href="/" onClick="fave.add({user-id}); return false" id="addfave_but"><span id="text_add_fave"><img onmouseover="myhtml.title('106', 'Добавить в закладки', 'newBBlock1')" id="newBBlock1106" width="16" src="{theme}/images/icons/fave.png" /></span><img src="{theme}/images/loading_mini.gif" alt="" id="addfave_load" class="loady no_display" /></a>[/no-fave]
[yes-fave]<a class="fm_img_border" href="/" onClick="fave.delet({user-id}); return false" id="addfave_but"><span id="text_add_fave"><img onmouseover="myhtml.title('106', 'Удалить из закладок', 'newBBlock1')" id="newBBlock1106" width="16" src="{theme}/images/icons/fave_del.png" /></span><img src="{theme}/images/loading_mini.gif" alt="" id="addfave_load" class="loady no_display" /></a>[/yes-fave]
[no-blacklist]<a class="fm_img_border" href="/" onClick="settings.addblacklist({user-id}); return false" id="addblacklist_but"><span id="text_add_blacklist"><img onmouseover="myhtml.title('103', 'Заблокировать писателя', 'newBBlock1')" id="newBBlock1103"  width="16" src="{theme}/images/icons/power.png"></span> <img src="{theme}/images/loading_mini.gif" alt="" id="addblacklist_load" class="no_display" /></a>[/no-blacklist]
[yes-blacklist]<a class="fm_img_border" href="/" onClick="settings.delblacklist({user-id}, 1); return false" id="addblacklist_but"><span id="text_add_blacklist"><img onmouseover="myhtml.title('103', 'Разблокировать писателя', 'newBBlock1')" id="newBBlock1103"  width="16" src="{theme}/images/icons/over_off.png"></span> <img src="{theme}/images/loading_mini.gif" alt="" id="addblacklist_load" class="no_display" /></a>[/yes-blacklist]
</div>

[/not-owner]
[owner]
<A class="button_info" title="Информация" name="info">Информация&nbsp;&nbsp;&nbsp;<IMG src="{theme}/images/arrow.png"></A>
[/owner]

[not-owner]
<A class="button_info" style="width: 201px;" title="Информация" name="info">Информация&nbsp;&nbsp;&nbsp;<IMG src="{theme}/images/arrow.png"></A>
[/not-owner]

<DIV id="w1">
<UL>
<LI><A href="/" onClick="Profile.LoadPhoto(); $('.profileMenu').hide(); return false;">Изменить фотографию </A></LI></UL></DIV></TD></TR></TBODY></TABLE></TABLE></DIV></DIV>
<DIV id="info">
<DIV id="pagina">
<TABLE border="0">
<TBODY>
<TR>
<TD vAlign="top" rowSpan="2">
<H2><IMG src="{theme}/images/pages/a_icon.png">&nbsp; Основная информация</H2>
<DIV style="MARGIN-RIGHT: 30px" class="line_info"></DIV>
<TABLE width="462">
<TBODY>



[not-all-birthday]
<TR>
<TD>День рождения</TD>
<TD>{birth-day}</TD>
</TR>
[/not-all-birthday]

[not-all-country]<div class="flpodtext">Страна</div> <div class="flpodinfo"><a href="/?go=search&country={country-id}" onClick="Page.Go(this.href); return false">{country}</a></div>[/not-all-country]
 [not-all-city]<div class="flpodtext">Город</div> <div class="flpodinfo"><a href="/?go=search&country={country-id}&city={city-id}" onClick="Page.Go(this.href); return false">{city}</a></div>[/not-all-city]
[privacy-info][sp]
<TR>
<TD vAlign=top width=140>Семейное положение</TD>
<TD>{sp}</TD>
</TR>
[/sp][/privacy-info]

<TR>
<TD vAlign=top width=140>Знак зодиака</TD>
<TD>{zodiak}</TD>
</TR>

</TBODY></TABLE>
<TD></TD>
[privacy-info]
<TD vAlign="top">
<H2><IMG src="{theme}/images/pages/a_icon1.png">&nbsp;Личная информация</H2>
<DIV class="line_info"></DIV>
<TABLE width="462">
<TBODY>
[not-info-activity]<TR><TD vAlign="top" width="140">Деятельность</TD><TD>{activity}</TD></TR>[/not-info-activity]
[not-info-interests]<TR><TD vAlign="top" width="140">Интересы</TD><TD>{interests}</TD></TR>[/not-info-interests]
[not-info-music]<TR><TD vAlign="top" width="140">Любимая музыка</TD><TD>{music}</TD></TR>[/not-info-music]
[not-info-kino]<TR><TD vAlign="top" width="140">Любимые фильмы</TD><TD>{kino}</TD></TR>[/not-info-kino]
[not-info-books]<TR><TD vAlign="top" width="140">Любимые книги</TD><TD>{books}</TD></TR>[/not-info-books]
[not-info-games]<TR><TD vAlign="top" width="140">Любимые игры</TD><TD>{games}</TD></TR>[/not-info-games]
[not-info-quote]<TR><TD vAlign="top" width="140">Любимые цитаты</TD><TD>{quote}</TD></TR>[/not-info-quote]
[not-info-myinfo]<TR><TD vAlign="top" width="140">О себе</TD><TD>{myinfo}</TD></TR>[/not-info-myinfo]
</TBODY>
</TABLE>
</TD>

</TR>

<TR>
<TD></TD>
[not-block-contact]<TD vAlign="top">
<H2><IMG src="{theme}/images/pages/a_icon2.png">&nbsp;Контактная информация</H2>
<DIV class="line_info"></DIV>
<TABLE width="462">
<TBODY>

[not-contact-phone]<TR><TD vAlign="top" width="140">Моб. телефон</TD><TD>{phone}</TD></TR>[/not-contact-phone]
[not-contact-vk]<TR><TD vAlign="top" width="140">В контакте</TD><TD>{vk}</TD></TR>[/not-contact-vk]
[not-contact-od]<TR><TD vAlign="top" width="140">Одноклассники</TD><TD>{od}</TD></TR>[/not-contact-od]
[not-contact-fb]<TR><TD vAlign="top" width="140">FaceBook</TD><TD>{fb}</TD></TR>[/not-contact-fb]
[not-contact-skype]<TR><TD vAlign="top" width="140">Skype</TD><TD><a href="skype:{skype}">{skype}</a></TD></TR>[/not-contact-skype]
[not-contact-icq]<TR><TD vAlign="top" width="140">ICQ</TD><TD>{icq}</TD></TR>[/not-contact-icq]
[not-contact-site]<TR><TD vAlign="top" width="140">Веб-сайт</TD><TD>{site}</TD></TR>[/not-contact-site]

</TBODY></TABLE></TD>[/not-block-contact]</TR></TBODY></TABLE>[/privacy-info]</DIV></DIV></DIV></DIV>

<DIV id="meniu_profil">
<DIV class="all">
<UL class="tabs" style="width: 1100px">

<div class="profile_rate_pos">
<LI><A title="Публикации" onClick="Page.Go('/?go=search&type=3&query='); return false"><font size="3" color="gray"><h8>Произведения</h8></font></A></LI>
<LI><A title="Публикации" onClick="Page.Go('/notes/add'); return false"><font size="3" color="gray"><h8>Добавить публикацию</h8></font></A></LI>
<LI><A title="Единомышленники" onClick="Page.Go('/friends/requests'); return false"><font size="3" color="gray"><h8>Френд зона</h8></font></A></LI>

<LI><A title="Сообщения" onClick="Page.Go('/messages'); return false"><font size="3" color="gray"><h8>Сообщения</h8></font></A></LI>
<LI><A title="Настройки" onClick="Page.Go('/settings'); return false"><font size="3" color="gray"><h8>Настройки</h8></font></A></LI>
<LI><A title="Закладки" onClick="Page.Go('/fave'); return false"><font size="3" color="gray"><h8>Закладки</h8></font></A></LI>
<LI><A><font size="3" color="gray"><h8>Рейтинг: {rating} / {rating_top}</h8></font></A></LI>
<LI style="position: relative; margin-left: 50px">{vip_status}</LI>

</UL></DIV></DIV>

<div class="autowr" style="width: 1150px">

<div class="ava">

[obshenie]<div class="newmesnobg">
 <div style="margin: 20px 0; position: relative">
                <img src="https://books-star.ru/uploads/gifts/hochuob.png" style="position: absolute; bottom: -50px; left: -30px">
              
            </div>
   <h4 style="color:#6D6D6D; text-align: center; margin-top: 10px;">Автор приглашает</h4><p><div style="text-align: center"><br>{avatar_obshenie} <br><b>{name_obshenie}</b><br></br><p style="color: gray;">{avtor_country}, {avtor_city}</p><br>{text}<br><p style="margin-top: 20px;"><a href="#" onclick="Page.Go('https://books-star.ru//settings/function')">Хотите попасть сюда?</p></a><br></div></div></p>
 [/obshenie]
</br>

 [notes]<div class="newmesnobg"><div class="albtitle"><font size="3">Публикации:</font> <b id="gramTextNotes"> {notes-num}
 </b><div><a href="/notes/{user-id}" onClick="Page.Go(this.href); return false"><font size="3">Списком</font></a></div></div></div><hr>
 <div class="newmesnobg" style="padding-right:0px;padding-left:5px"><font size="2">{notes}</font><div class="clear"></div>
 </div>[/notes]
 
 </br>
 
 
    <font size="2"><div class="newmesnobg"><div class="albtitle"><font color="black" style="margin-left: 60px">Дуэлей: <font color="#256cb3">{duel_sum}</font></font> <a style="margin-left: 60px; href="#" onclick="Page.Go('/index.php?go=duel&act=table')">весь список</a></div><hr>

            <div style="margin: 20px 0; position: relative">
                <img src="https://books-star.ru/uploads/gifts/1471506729.png" style="position: absolute; bottom: -5px; left: -30px">
                <center>
                <p>Жанр: {chanr}</p>
                </center>
            </div><hr>

            <div>
                <div style="margin: 5px 20px">
                    {user_one}
                </div>
            </div><hr>

            <div>
                <div style="margin: 5px 20px">
                    {user_two}
                </div>
            </div><hr>

            <div style="margin: 10px 0">
                <center><a href="#" onclick="Page.Go('/index.php?go=duel&act=addzay')">Принять участие</a></center>
            </div>

        </div>

    <br>
        <font size="2"><div class="newmesnobg">
        {user_top}
            </div>
            
            <br>
	
	 <div style="width:900px;position:relative;height:1px;display:block;">
  <div  style="margin-bottom: 50px;width:300px;">
  <div style="background-color:#fff;width:260px;border-radius:13px;padding:10px;">



  </div>
 </div>
</div>
	
	

[privacy-wall]
<A href="/" onClick="likan.wall_post({user-id}); return false">
<DIV style="TEXT-ALIGN: left; TOP: 0px; LEFT: 0px;background-color: #FFF;" id="posteaza" class="box2 masonry-brick">
<DIV id="new"></DIV>
<DIV class="rel">
<CENTER><div style="display:inline-block; left:5px; position:relative;top:0px;">Написать пост</div></CENTER></DIV></DIV>
</A>
[/privacy-wall]


<font size="2"><div class="newmesnobg"><div class="albtitle"><font size="3">Что хотите добавить?</font> </div><hr><br> 
<center>
<font size="2"><a href="/audio" onClick="Page.Go(this.href); return false"><span class="left_label inl_bl">Добавить аудио</span></a><br> <br></font>
<font size="2"><a href="/albums/{user-id}" onClick="Page.Go(this.href); return false;" id="requests_link_new_photos"><span class="left_label inl_bl">Добавить фото</span> <br> <br> </a> </font>
<font size="2"><a href="/groups" onClick="Page.Go(this.href); return false;" id="requests_link_new_photos"><span class="left_label inl_bl">Создать сообщество</span> </a> </font></center>


 

 </div>



 
 
  <br>
 <!-- ВК -->
 <font size="2"><div class="newmesnobg"><div class="albtitle"><font size="3">Лента ВК:</font> </div><hr><br> 
<center>
<script type="text/javascript" src="//vk.com/js/api/openapi.js?127"></script>

<!-- VK Widget -->
<div id="vk_groups"></div>
<script type="text/javascript">
VK.Widgets.Group("vk_groups", {mode: 4, width: "290", height: "400", color1: 'FFFFFF', color2: '000000', color3: '5E81A8'}, 65442934);
</script>
 </center>


 </div>
 
  <br>
 <!-- Файсбук -->
 <font size="2"><div class="newmesnobg"><div class="albtitle"><font size="3">Лента Файсбук:</font> </div><hr><br> 
<center>
<div id="fb-root"></div>
<script>(function(d, s, id) {
  var js, fjs = d.getElementsByTagName(s)[0];
  if (d.getElementById(id)) return;
  js = d.createElement(s); js.id = id;
  js.src = "//connect.facebook.net/ru_RU/sdk.js#xfbml=1&version=v2.7";
  fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<div class="fb-page" data-href="https://www.facebook.com/books-star.ru" data-tabs="timeline" data-small-header="false" data-adapt-container-width="true" data-hide-cover="false" data-show-facepile="true"><blockquote cite="https://www.facebook.com/books-star.ru" class="fb-xfbml-parse-ignore"><a href="https://www.facebook.com/books-star.ru">Писатели клуб Сообщество Стихи Рассказы Проза</a></blockquote></div>
 </center>
 </div>
 <br>
  <!-- Радио -->
 <font size="2"><div class="newmesnobg"><div class="albtitle"><font size="3">Радио онлайн МДС:</font> </div><hr><br> 
<center>
 <iframe src="https://tunein.com/embed/player/s144846/" style="width:100%;height:100px;" scrolling="no" frameborder="no"></iframe>
 </center>

 </div>
 
 

 
 
 [docs]<div class="newmesnobg"><div class="albtitle">Документы <span>{docs-num}</span><a href="/docs" onClick="Page.Go(this.href); return false"><div class="mono_ico_docs" onmouseover="myhtml.title('7', 'Показать все документы', 'newBBlockl')" id="newBBlockl7"></div></div></div><hr>
 <div class="newmesnobg" style="padding-right:0px;padding-left:5px">{docs}<div class="clear"></div></a>
 </div>[/docs]
 
[blacklist]<div class="leftcbor">
 [owner][happy-friends]<div id="happyBLockSess"><div class="albtitle">Дни рожденья друзей <span>{happy-friends-num}</span><div class="profile_happy_hide"><img src="{theme}/images/hide_lef.gif" onMouseOver="myhtml.title('1', 'Скрыть', 'happy_block_')" id="happy_block_1" onClick="HappyFr.HideSess(); return false" /></div></div>
 <div class="newmesnobg profile_block_happy_friends" style="padding:0px;padding-top:10px;">{happy-friends}<div class="clear"></div></div>
 <div class="cursor_pointer no_display" onMouseDown="HappyFr.Show(); return false" id="happyAllLnk"><div class="public_wall_all_comm profile_block_happy_friends_lnk">Показать все</div></div></div>
 [/happy-friends][/owner]
<br> 
 [common-friends]<a href="/friends/common/{user-id}" style="text-decoration:none" onClick="Page.Go(this.href); return false"><div class="albtitle"><font size="3">Общие единомышленники </font><span>{mutual-num}</span></div></a>
 <div class="newmesnobg" style="padding:0px;padding-top:10px;">{mutual_friends}<div class="clear"></div>
 </div>[/common-friends]
 <br>
 [friends]<div class="newmesnobg"><div class="albtitle"><font size="3">Френд зона: </font><b id="gramTextFriends">{friends-num}</b><div><a href="/friends/{user-id}" onClick="Page.Go(this.href); return false"><font size="3">Списком</font></a><p><A title="Мои закладки" onClick="Page.Go('/fave'); return false">Мои закладки</A></div></div></div><hr>
 <div class="newmesnobg" style="padding:0px;padding-top:20px;"><font size="1">{friends}</font><div class="clear">
 <CENTER><a href="/news" onClick="Page.Go(this.href); return false;" id="news_link" title="что нового?"> что нового?</a> </CENTER><br>
 </div>


 
 </div>[/friends]
 <br>
 [online-friends]<div class="newmesnobg"><div class="albtitle"><font size="3">Кто онлайн:</font> <b id="gramTextFriends">{online-friends-num}</b><div><a href="/friends/online/{user-id}" onClick="Page.Go(this.href); return false"><font size="3">Списком</font></a></div></div></div><hr>
 <div class="newmesnobg" style="padding:0px;padding-top:10px;"><font size="1">{online-friends}</font><div class="clear"></div>
 </div>[/online-friends]
 <br>
 [subscriptions]<div class="newmesnobg"><div class="albtitle"><font size="3">Самые активные:</font> <b id="gramTextSubscr">{subscriptions-num}</b><div><a href="/" onClick="subscriptions.all({user-id}, '', {subscriptions-num}); return false"><font size="3">Списком</font></a></div></div></div><hr>
 <div class="newmesnobg" style="padding-right:0px;padding-bottom:5px;">{subscriptions}<div class="clear"></div>
 </div>[/subscriptions]
 <br>
 [groups]<div class="newmesnobg"><div class="albtitle cursor_pointer" onClick="groups.all_groups_user('{user-id}')"><font size="3">Популярные объединения </font><b id="groups_num">{groups-num}</b></div></div><hr>
 <div class="newmesnobg" style="padding-right:0px;padding-bottom:5px;">{groups}<div class="clear"></div>
 </div>[/groups]
 <br>
 [albums]<div class="newmesnobg"><a href="/albums/{user-id}" onClick="Page.Go(this.href); return false" style="text-decoration:none"><div class="albtitle"><font size="3">Мои фото альбомы</font> <b id="gramTextAlbums">{albums-num}</b><div class="mono_ico_albums" onmouseover="myhtml.title('7', 'Показать все альбомы', 'newBBlockl')" id="newBBlockl7"></div></div></a></div><hr>{albums}<div class="clear"></div>[/albums]
  <br>
 [gifts2]<div class="newmesnobg"><div class="albtitle"><font size="3">Награды </font><b>{giftsisnum}</b><div></div></div></div><hr>
 <div class="newmesnobg" style="padding-right:0px;padding-bottom:5px;">{gifts2}<div class="clear"></div>
 </div>[/gifts2]

 
 
 
 
<div class="clear"></div>
</div>[/blacklist]
</div>

<div class="profiewr" style="width: 830px">

 <div id="wall_records" style="width: 635px; float: left;">{records}[no-records]<div class="wall_none" [privacy-wall]style="border-top:0px"[/privacy-wall]>На стене пока нет ни одной записи.</div>[/no-records]</div>
 [wall-link]<span id="wall_all_record"></span><div onClick="wall.page('{user-id}'); return false" id="wall_l_href" class="cursor_pointer"><div class="photo_all_comm_bg wall_upgwi" id="wall_link">к предыдущим записям</div></div>[/wall-link][/blacklist]
 [not-blacklist]<div class="err_yellow" style="font-weight:normal;margin-top:5px">{name} ограничила доступ к своей странице.</div>[/not-blacklist]


 

 </div></div>

<script type="text/javascript">[after-reg]Profile.LoadPhoto();[/after-reg]
$(document).ready(function(){
	music.jPlayerInc();
	$('#wall_text, .fast_form_width').autoResize();
	[owner]if($('.profile_onefriend_happy').size() > 4) $('#happyAllLnk').show();[/owner]
});
$(document).click(function(event){
	wall.event(event);
});

$(document).ready(function() {
$(".slider img").hide();
slide(0);
});

function slide(i) {
if (i == $(".slider img").size())
i=0;
$(".slider img:eq("+i+")").fadeIn().delay(7000).fadeOut(function() {
i++;
slide(i);
});
}
</script>

<script type="text/javascript">
var firstTime = true;
    $(".button_info").click(function() {
    var divname = this.name;
    $(".button_info").removeClass('active');
    $(this).addClass( "active", "fast", "easeOutBounce" );
    if (!firstTime) {
        if ($("#profile #info").hasClass(divname)) {
            firstTime = true;
            $("#profile #info").removeClass("#profile #info").slideUp();
            $('a[name="info"]').removeClass('active');
        } else {

            $("#profile #info").removeClass('#profile #info').slideUp(500, function() {
                $("#" + divname).slideToggle().addClass("profile info");


            });
        }
    } else {
        $("#" + divname).slideDown().addClass("profile info");
        firstTime = false;
    }

});
</script>