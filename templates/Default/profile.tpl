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

<div id="jquery_jplayer"></div>
<input type="hidden" id="teck_id" value="" />
<input type="hidden" id="teck_prefix" value="" />
<input type="hidden" id="typePlay" value="standart" />

<style>#profile{{ava_cover}}</style>

<DIV id="profile">
<DIV class="contect">
<DIV id="pagina">
<DIV id="page_body">
<TABLE id="wrapper" height="146">
<TBODY>
<TR>
<TD vAlign="top" width="130"><span id="ava"><A href="" onclick="Photo.Profile('{user-id}', '{user-ph}'); return false">
<DIV style="BACKGROUND: url({ava}) no-repeat; background-size: 107px 107px" class="p1" id="ava_{user-id}" alt="{name} {lastname}" title="Увеличить"></DIV></A></span>
<DIV id="p2"></DIV>
[gifts]<div class="slider" style="float: right;margin-top: -56px;margin-right: 2px;z-index: 10;position: relative;"><a href="" onclick="gifts.ajax_g({user-id}); return false" title="{gifts-text}">{gifts}</a></div>[/gifts]
</TD>
<TD vAlign="top" width="670">
<DIV id="c789456">{name} {lastname} {vip_status}</DIV>

[owner]<div class="set_status_bg no_display" id="set_status_bg" style="z-index:9999;">
  <input type="text" id="status_text" class="status_inp" value="{status-text}" style="width:500px;" maxlength="255" onKeyPress="if(event.keyCode == 13)gStatus.set()" />
  <div class="fl_l status_text"><span class="no_status_text [status]no_display[/status]">Введите здесь текст Вашего статуса.</span><a href="/" class="yes_status_text [no-status]no_display[/no-status]" onClick="gStatus.set(1); return false">Удалить статус</a></div>
  [status]<div class="button_div_gray fl_r status_but margin_left"><button>Отмена</button></div>[/status]
  <div class="button_div fl_r status_but"><button id="status_but" onClick="gStatus.set()">Сохранить</button></div>
 </div>[/owner]
 
 [owner]<div class="status">
  <div><a href="/" id="new_status" onClick="gStatus.open(); return false">[blacklist]{status-text}[/blacklist]</a></div>
  <span id="tellBlockPos"></span>
  <div class="status_tell_friends no_display">
   <div class="status_str"></div>
   <div class="html_checkbox" id="tell_friends" onClick="myhtml.checkbox(this.id); gStatus.startTell()">Рассказать друзьям</div>
  </div>
  <a href="#" onClick="gStatus.open(); return false" id="status_link" [status]class="no_display"[/status]>установить статус</a>
 </div>[/owner]
 [not-owner][status][blacklist]
 <div class="status">
 {status-text}
 </div>
 [/blacklist][/status][/not-owner]

<DIV id="locality"><IMG src="{theme}/images/pages/location.png">{city}, {country} - {online}</DIV>
<div style="margin-top:10px"></div>
[photos]<div style="float:left;"><a href="" onclick="likan.photo({user-id}); return false"><img style="background-color: #355d98;" src="{theme}/images/no_cover.png" width="92" height="66"></a>{photos_view_albums}</div>[/photos]
<BR></TD>
<TD vAlign="top" width="250">
[owner]
<div style="position: relative;margin-top: 20px;">
<a class="fm_img_border" href="/editmypage" onClick="Page.Go(this.href); $('.profileMenu').hide(); return false;"><img onmouseover="myhtml.title('104', 'Редактировать страницу', 'newBBlock1')" id="newBBlock1104" width="16" src="{theme}/images/icons/editmypages.png" /></a>
<a class="fm_img_border" onclick="Profile.LoadPhoto(); $('.profileMenu').hide(); return false;"><img width="16" onmouseover="myhtml.title('101', 'Загрузить фотографию', 'newBBlock1')" id="newBBlock1101" src="{theme}/images/icons/upload.png"></a>
<a class="fm_img_border" onclick="Profile.miniature(); return false;"><img width="16" onmouseover="myhtml.title('777', 'Изменить миниатюру', 'newBBlock1')" id="newBBlock1777" src="{theme}/images/icons/miniature.png"></a>
<a class="fm_img_border" onClick="Profile.DelPhoto(); $('.profileMenu').hide(); return false;"><img width="16" onmouseover="myhtml.title('778', 'Удалить фотографию', 'newBBlock1')" id="newBBlock1778" src="{theme}/images/icons/delete_foto.png"></a>
</div>
[/owner]
[not-owner]
<div style="position: relative;margin-top: 20px;">
[blacklist][privacy-msg]<a class="fm_img_border" href="/" onClick="messages.new_({user-id}); return false"><img onmouseover="myhtml.title('104', 'Отправить сообщение', 'newBBlock1')" id="newBBlock1104" width="16" src="{theme}/images/icons/message.png" /></a>[/privacy-msg][/blacklist]
[no-friends][blacklist]<a class="fm_img_border" href="/" onClick="friends.add({user-id}); return false"><img width="16" onmouseover="myhtml.title('101', 'Добавить в друзья', 'newBBlock1')" id="newBBlock1101" src="{theme}/images/icons/frends.png"></a>[/blacklist][/no-friends]
[yes-friends]<a class="fm_img_border" href="/" onClick="friends.delet({user-id}, 1); return false"><img width="16" onmouseover="myhtml.title('102', 'Убрать из друзей', 'newBBlock1')" id="newBBlock1102" src="{theme}/images/icons/frends_no.png"></a>[/yes-friends]
<a class="fm_img_border" href="/" onClick="gifts.box('{user-id}'); return false"><img width="16" onmouseover="myhtml.title('100', 'Отправить подарок', 'newBBlock1')" id="newBBlock1100" src="{theme}/images/icons/gift.png"></a>
[blacklist][no-subscription]<a class="fm_img_border" href="/" onClick="subscriptions.add({user-id}); return false" id="lnk_unsubscription"><span id="text_add_subscription"><img onmouseover="myhtml.title('105', 'Подписаться на обновления', 'newBBlock1')" id="newBBlock1105" width="16" src="{theme}/images/icons/reload.png" /></span><img src="{theme}/images/loading_mini.gif" alt="" id="addsubscription_load" class="loady no_display" style="margin-right:-13px" /></a>[/no-subscription][/blacklist]
[yes-subscription]<a class="fm_img_border" href="/" onClick="subscriptions.del({user-id}); return false" id="lnk_unsubscription"><span id="text_add_subscription"><img onmouseover="myhtml.title('105', 'Отписаться от обновлений', 'newBBlock1')" id="newBBlock1105" width="16" src="{theme}/images/icons/power.png" /></span><img src="{theme}/images/loading_mini.gif" alt="" id="addsubscription_load" class="loady no_display" style="margin-right:-13px" /></a>[/yes-subscription]
[no-fave]<a class="fm_img_border" href="/" onClick="fave.add({user-id}); return false" id="addfave_but"><span id="text_add_fave"><img onmouseover="myhtml.title('106', 'Добавить в закладки', 'newBBlock1')" id="newBBlock1106" width="16" src="{theme}/images/icons/fave.png" /></span><img src="{theme}/images/loading_mini.gif" alt="" id="addfave_load" class="loady no_display" /></a>[/no-fave]
[yes-fave]<a class="fm_img_border" href="/" onClick="fave.delet({user-id}); return false" id="addfave_but"><span id="text_add_fave"><img onmouseover="myhtml.title('106', 'Удалить из закладок', 'newBBlock1')" id="newBBlock1106" width="16" src="{theme}/images/icons/fave_del.png" /></span><img src="{theme}/images/loading_mini.gif" alt="" id="addfave_load" class="loady no_display" /></a>[/yes-fave]
[no-blacklist]<a class="fm_img_border" href="/" onClick="settings.addblacklist({user-id}); return false" id="addblacklist_but"><span id="text_add_blacklist"><img onmouseover="myhtml.title('103', 'Заблокировать пользователя', 'newBBlock1')" id="newBBlock1103"  width="16" src="{theme}/images/icons/power.png"></span> <img src="{theme}/images/loading_mini.gif" alt="" id="addblacklist_load" class="no_display" /></a>[/no-blacklist]
[yes-blacklist]<a class="fm_img_border" href="/" onClick="settings.delblacklist({user-id}, 1); return false" id="addblacklist_but"><span id="text_add_blacklist"><img onmouseover="myhtml.title('103', 'Разблокировать пользователя', 'newBBlock1')" id="newBBlock1103"  width="16" src="{theme}/images/icons/over_off.png"></span> <img src="{theme}/images/loading_mini.gif" alt="" id="addblacklist_load" class="no_display" /></a>[/yes-blacklist]
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

<TR>
<TD>Пол</TD>
<TD>Мужской</TD>
</TR>

[not-all-birthday]
<TR>
<TD>День рождения</TD>
<TD>{birth-day}</TD>
</TR>
[/not-all-birthday]

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
<UL class="tabs">
<LI class="active"><A href="/" title="Основное">Основное</A></LI>
<LI><A title="Друзья" onclick="Page.Go('/friends/{user-id}')">Друзья</A>&nbsp; <SPAN style="COLOR: #cccccc; FONT-SIZE: 9pt">{friends-num}</SPAN></LI>
<LI><A title="Фотографии" onClick="Page.Go('/albums/{user-id}'); return false">Фотографии</A></LI>
<LI><A title="Видеозаписи" onClick="Page.Go('/videos'); return false">Видеозаписи</A></LI>
<LI><A title="Аудиозаписи" onClick="Page.Go('/audio'); return false">Аудиозаписи</A></LI>
<LI><A title="Сообщения" onClick="Page.Go('/messages'); return false">Сообщения</A></LI>
<LI><A title="Группы" onClick="Page.Go('/groups'); return false">Группы</A></LI>
<LI><A title="Заметки" onClick="Page.Go('/notes'); return false">Заметки</A></LI>
<LI><A title="Закладки" onClick="Page.Go('/fave'); return false">Закладки</A></LI>
<LI><A title="Поиск" onClick="Page.Go('/?go=search&query=&type=1'); return false">Поиск</A></LI>
<LI><A title="Настройки" onClick="Page.Go('/settings'); return false">Настройки</A></LI>
</UL></DIV></DIV>

<div class="autowr">

<div class="ava">

[privacy-wall]
<A href="/" onClick="likan.wall_post({user-id}); return false">
<DIV style="TEXT-ALIGN: left; TOP: 0px; LEFT: 0px;background-color: #FFF;" id="posteaza" class="box2 masonry-brick">
<DIV id="new"></DIV>
<DIV class="rel">
<CENTER><IMG style="margin-top:-5px;" src="{theme}/images/perete/post.png"><div style="display:inline-block; left:5px; position:relative;top:-10px;">Написать пост</div></CENTER></DIV></DIV>
</A>
[/privacy-wall]

[blacklist]<div class="leftcbor">
 [owner][happy-friends]<div id="happyBLockSess"><div class="albtitle">Дни рожденья друзей <span>{happy-friends-num}</span><div class="profile_happy_hide"><img src="{theme}/images/hide_lef.gif" onMouseOver="myhtml.title('1', 'Скрыть', 'happy_block_')" id="happy_block_1" onClick="HappyFr.HideSess(); return false" /></div></div>
 <div class="newmesnobg profile_block_happy_friends" style="padding:0px;padding-top:10px;">{happy-friends}<div class="clear"></div></div>
 <div class="cursor_pointer no_display" onMouseDown="HappyFr.Show(); return false" id="happyAllLnk"><div class="public_wall_all_comm profile_block_happy_friends_lnk">Показать все</div></div></div>
 [/happy-friends][/owner]
 
 [common-friends]<a href="/friends/common/{user-id}" style="text-decoration:none" onClick="Page.Go(this.href); return false"><div class="albtitle">Общие друзья <span>{mutual-num}</span></div></a>
 <div class="newmesnobg" style="padding:0px;padding-top:10px;">{mutual_friends}<div class="clear"></div>
 </div>[/common-friends]
 
 [friends]<div class="albtitle">Друзья <b id="gramTextFriends">{friends-num}</b><div><a href="/friends/{user-id}" onClick="Page.Go(this.href); return false">Все</a></div></div>
 <div class="newmesnobg" style="padding:0px;padding-top:10px;">{friends}<div class="clear"></div>
 </div>[/friends]
 
 [online-friends]<div class="albtitle">Друзья на сайте <b id="gramTextFriends">{online-friends-num}</b><div><a href="/friends/online/{user-id}" onClick="Page.Go(this.href); return false">Все</a></div></div>
 <div class="newmesnobg" style="padding:0px;padding-top:10px;">{online-friends}<div class="clear"></div>
 </div>[/online-friends]
 
 [subscriptions]<div class="albtitle">Интересные люди <b id="gramTextSubscr">{subscriptions-num}</b><div><a href="/" onClick="subscriptions.all({user-id}, '', {subscriptions-num}); return false">Все</a></div></div>
 <div class="newmesnobg" style="padding-right:0px;padding-bottom:0px;">{subscriptions}<div class="clear"></div>
 </div>[/subscriptions]
 
 [groups]<div class="albtitle cursor_pointer" onClick="groups.all_groups_user('{user-id}')">Интересные страницы <b id="groups_num">{groups-num}</b></div>
 <div class="newmesnobg" style="padding-right:0px;padding-bottom:0px;">{groups}<div class="clear"></div>
 </div>[/groups]
 
 [albums]<a href="/albums/{user-id}" onClick="Page.Go(this.href); return false" style="text-decoration:none"><div class="albtitle">Альбомы <b id="gramTextAlbums">{albums-num}</b><div class="mono_ico_albums" onmouseover="myhtml.title('7', 'Показать все альбомы', 'newBBlockl')" id="newBBlockl7"></div></div></a>{albums}<div class="clear"></div>[/albums]
 
 [videos]<div class="albtitle">Видеозаписи <b>{videos-num}</b><div><a href="/videos/{user-id}" onClick="Page.Go(this.href); return false">Все</a></div></div>
 <div class="newmesnobg" style="padding-right:0px;padding-bottom:0px;">{videos}<div class="clear"></div>
 </div>[/videos]
 
 [notes]<div class="albtitle">Заметки <b id="gramTextNotes"> {notes-num}</b><div><a href="/notes/{user-id}" onClick="Page.Go(this.href); return false">Все</a></div></div>
 <div class="newmesnobg" style="padding-right:0px;padding-left:5px">{notes}<div class="clear"></div>
 </div>[/notes]
 
 [docs]<div class="albtitle">Документы <b>{docs-num}</b><div><a href="/docs" onClick="Page.Go(this.href); return false">Все</a></div></div>
 <div class="newmesnobg" style="padding-right:0px;padding-left:5px">{docs}<div class="clear"></div>
 </div>[/docs]
 
<div class="clear"></div>
</div>[/blacklist]
</div>

<div class="profiewr">

 <div id="wall_records">{records}[no-records]<div class="wall_none" [privacy-wall]style="border-top:0px"[/privacy-wall]>На стене пока нет ни одной записи.</div>[/no-records]</div>
 [wall-link]<span id="wall_all_record"></span><div onClick="wall.page('{user-id}'); return false" id="wall_l_href" class="cursor_pointer"><div class="photo_all_comm_bg wall_upgwi" id="wall_link">к предыдущим записям</div></div>[/wall-link][/blacklist]
 [not-blacklist]<div class="err_yellow" style="font-weight:normal;margin-top:5px">{name} ограничила доступ к своей странице.</div>[/not-blacklist]
</div>
<div class="clear"></div>

</div>