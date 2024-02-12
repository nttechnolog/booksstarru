<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ru" lang="ru">
<head>
{header}
<noscript><meta http-equiv="refresh" content="0; URL=/badbrowser.php"></noscript>
<link media="screen" href="{theme}/style/style.css" type="text/css" rel="stylesheet" />
<link media="screen" href="{theme}/port_style/di_4199.css" type="text/css" rel="stylesheet" />
[not-logged]
<link media="screen" href="{theme}/port_style/do_91419945.css" type="text/css" rel="stylesheet" />
[/not-logged]
{js}[not-logged]<script type="text/javascript" src="{theme}/js/reg.js"></script>[/not-logged]
<script type="text/javascript" src="{theme}/js/likan-antv.js"></script>
<link rel="shortcut icon" href="{theme}/images/favico.ico" />
</head>
[logged]
<body onResize="onBodyResize()" class="no_display">
[/logged]
<div class="scroll_fix_bg no_display" onMouseDown="myhtml.scrollTop()"><div class="scroll_fix_page_top">Наверх</div></div>

<div id="bara">
<div class="centru"> 
<div id="logo"> 
<a href="/"><img src="{theme}/images/top/logo.png" class="tooltip1" alt="onspace logo"></a>
</div>

[not-logged]<ul class="meniu">
<li>
</li>
<li style="color:#999999;">
<a href="/" title="Войти"> Войти  </a>  &nbsp;/&nbsp;
<a href="/register" title="Зарегистрируйся"> Зарегистрируйся</a></li>
</ul>[/not-logged]

[logged]<ul class="meniu">
<li></li>
<li><a href="/news{news-link}" onClick="Page.Go(this.href); return false;" id="news_link" title="My+"> My+ <span id="new_news">{new-news}</span></a></li>
<li><a href="/?go=search" onClick="Page.Go(this.href); return false" title="Пользователей"> Пользователей</a></li>
<li><a href="/?go=search&type=2" onClick="Page.Go(this.href); return false" title="видео"> видео </a></li>
<li><a href="/?go=search&type=4" onClick="Page.Go(this.href); return false" title="сообщества"> сообщества </a></li>
</ul>[/logged]

[logged]
<ul class="meniu2">
<li class="i"><a style="cursor:pointer;color:white;" href="{my-page-link}" onClick="Page.Go(this.href); return false">
<div id="phm" style="margin-top:-8px;width:32px;height:32px;border-radius:16px;-webkit-border-radius:16px;-moz-border-radius:16x;background:url({ava}) no-repeat;background-size:32px 32px"></div></a>
</li>
<li>
	<Font color="#fff">{salut}</Font>&nbsp; &nbsp;<a class="open" title="{name} {lastname}"><a href="{my-page-link}" onClick="Page.Go(this.href); return false">{name}</a>&nbsp; <img src="{theme}/images/arrow.png"></a>
</li>
<li>
	<a class="open" title="Выход"><div onClick="likan.iesire(); return false">Выход</div></a>
</li>
</ul>
[/logged]
</div>
</div>

<div[logged] id="page"[/logged]>{info}{content}</div>

[logged]
<div id="bara_onspace">{msg}<div class="line"></div> <div class="users">
{my_im}</div> <div class="all"> </div>  	
<div name="notif" class="right_new"><div class="line2"> <div class="notificari_new"><div style="color:#fff;font-size: 10pt;cursor: pointer;" onClick="likan.notifications(); return false">Уведомления</div></div>
</div></div>
</div>


<div id="footer">
<div class="left">
© 2014  LIKAN design 2014. Данная сборка защищена авторскими правами.
</div>


<div class="right">
<div id="c12"><a href="/?act=change_mobile" title="мобильная версия">мобильная версия</a></div>
</div>
</div>
[/logged]

[logged]
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
[/logged]

[logged]<script type="text/javascript" src="{theme}/js/push.js"></script>
<div class="no_display"><audio id="beep-three" controls preload="auto"><source src="{theme}/images/soundact.ogg"></source></audio></div>
<div id="updates"></div>[/logged]
<div id="updates"></div>
<div class="clear"></div>
</body>
</html>