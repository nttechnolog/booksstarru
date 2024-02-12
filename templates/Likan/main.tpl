<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="ru" lang="ru">
<head>
{header}
<link href="{theme}/style/style.css" rel="stylesheet"> 
<link media="screen" href="{theme}/style/style.css" type="text/css" rel="stylesheet" />
<link media="screen" href="{theme}/port_style/di_4199.css" type="text/css" rel="stylesheet" />
[not-logged]
<link media="screen" href="{theme}/port_style/do_91419945.css" type="text/css" rel="stylesheet" />
[/not-logged]
{js}[not-logged]<script type="text/javascript" src="{theme}/js/reg.js"></script>[/not-logged]
<script type="text/javascript" src="{theme}/js/likan-antv.js"></script>
<link rel="shortcut icon" href="{theme}/images/favico.ico" />
<script type="text/javascript" src="{theme}/js/fon.js"></script>
  <style>
   @font-face {
    font-family: Cormorant Infant; /* Гарнитура шрифта */
    src: url(https://books-star.ru/shrift/CormorantInfant-Bold.ttf); /* Путь к файлу со шрифтом */
   }
   h8 {
    font-family: 'Cormorant Infant', serif;
	
   }
  </style>
</head>
[logged]
<body onResize="onBodyResize()" class="no_display">
[/logged]

<div id="bara">
<div class="centru" style="width: 1000px">
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

<li><a href="/blog" onClick="Page.Go(this.href); return false;" id="news_link" title="новости"> новости </a></li>
<li><a href="/?go=search" onClick="Page.Go(this.href); return false" title="писатели"> поиск</a></li>



<li><a href="/index.php?go=duel" onClick="Page.Go(this.href); return false" title="дуэли"> дуэли </a></li>
<li><a href="/index.php?go=about" onClick="Page.Go(this.href); return false" title="команда проекта"> команда </a></li>
<li><a href="/docs" onClick="Page.Go(this.href); return false" title="команда"> архивы </a></li>
<li><a href="/support" onClick="Page.Go(this.href); return false" title="помощь"> помощь </a></li>
<li><a href="/balance" onClick="Page.Go(this.href); return false" title="ваш баланс"> баланс: {ubm}</a></li>
<div id="audioPlayer"></div>
</ul>[/logged]

[logged]
<ul class="meniu2">
    {editor}
<li class="i"><a style="cursor:pointer;color:white;" href="{my-page-link}" onClick="Page.Go(this.href); return false">
<div id="phm" style="margin-top:-8px;width:32px;height:32px;border-radius:16px;-webkit-border-radius:16px;-moz-border-radius:16x;background:url({ava}) no-repeat;background-size:32px 32px"></div></a>
</li>
<li>
	<Font color="#fff">{salut}</Font>&nbsp;<a class="open" title="{name} {lastname}"><a href="{my-page-link}" onClick="Page.Go(this.href); return false">{name}</a>&nbsp; <img src="{theme}/images/arrow.png"></a>
</li>
<li>
	<a class="open" title="Выход"><div onClick="likan.iesire(); return false">Выход</div></a>
</li>
</ul>
[/logged]
</div>
</div>
<div id="doLoad"></div>
<div id="audioPlayer"></div>
<div[logged] id="page"[/logged]>{info}{content}</div>

[logged]
<div id="bara_onspace">{msg}<div class="line"></div> <div class="users">
{my_im}</div> <div class="all"> </div>  	
<div name="notif" class="right_new"><div class="line2"> <div class="notificari_new"><div style="color:#fff;font-size: 10pt;cursor: pointer;" onClick="likan.notifications(); return false">Вестник</div></div>
</div></div>
</div>


<div id="footer">

<div class="left">

Copyright 2018 ©  Данный сайт защищен авторским правом. <a href="/index.php?go=settings&amp;act=deactive">Удалить
анкету</a> 
</div>


<div class="right">
<div id="google_translate_element"></div>
<script>
function googleTranslateElementInit() {
  new google.translate.TranslateElement({
    pageLanguage: 'ru',
includedLanguages: 'af,sq,ar,be,bg,ca,zh-CN,zh-TW,hr,cs,da,nl,en,et,tl,fi,fr,gl,de,el,ht,iw,hi,hu,is,id,ga,it,ja,ko,lv,lt,mk,ms,mt,no,fa,pl,pt,ro,ru,sr,sk,sl,es,sw,sv,th,tr,uk,vi,cy,yi',
  }, 'google_translate_element');
DeleteGoogleIframe();
}
</script>
<script src="//translate.google.com/translate_a/element.js?cb=googleTranslateElementInit"></script>
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

<!-- Yandex.Metrika counter -->
<script type="text/javascript">
    (function (d, w, c) {
        (w[c] = w[c] || []).push(function() {
            try {
                w.yaCounter24873695 = new Ya.Metrika({
                    id:24873695,
                    clickmap:true,
                    trackLinks:true,
                    accurateTrackBounce:true,
                    webvisor:true
                });
            } catch(e) { }
        });

        var n = d.getElementsByTagName("script")[0],
            s = d.createElement("script"),
            f = function () { n.parentNode.insertBefore(s, n); };
        s.type = "text/javascript";
        s.async = true;
        s.src = "https://mc.yandex.ru/metrika/watch.js";

        if (w.opera == "[object Opera]") {
            d.addEventListener("DOMContentLoaded", f, false);
        } else { f(); }
    })(document, window, "yandex_metrika_callbacks");
</script>
<noscript><div><img src="https://mc.yandex.ru/watch/24873695" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->

</body>
</html>