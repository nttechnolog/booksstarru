<script>
var prevAnsweName = false;
var comFormValID = false;
var Compare = {

	choose_send: function(rid){
		butloading('fast_buts_'+rid, 56, 'disabled');
		$.post('/index.php?go=compare&act=send', {rid: rid}, function(data){
		
		$('#compareResult').html(data); //выводим сам результат
		wall.fast_form_close();
		
		//butloading('fast_buts_'+rid, 56, 'enabled', lang_box_send);
		});
		
	}
	
}
</script>
<div class="buttonsprofile albumsbuttonsprofile buttonsprofileSecond" style="margin-top:10px;height:22px">
 <div class="{activetab-1}"><a href="/?go=compare" onClick="Page.Go(this.href); return false;"><div><b>Дуэли</b></div></a></div>
 <div class="{activetab-2}"><a href="/?go=compare&act=choose" onClick="Page.Go(this.href); return false;"><div><b>Мне нравится</b></div></a></div>
 <div class="{activetab-3}"><a href="/?go=compare&act=choose&out=1" onClick="Page.Go(this.href); return false;"><div><b>Я нравлюсь</b></div></a></div>
 <div class="{activetab-4}"><a href="/?go=compare&act=choose&out=2" onClick="Page.Go(this.href); return false;"><div><b>Взаимно</b></div></a></div>
</div>


[main]<div class="clear"></div>

<div class="search_sotrt_tab border_radius_5">

   
 <b>Мне нравится (<a href="/?go=compare&act=choose" onClick="Page.Go(this.href); return false;">{cnt-1}</a>)</b>
 <div class="search_clear"></div>
	{mylikeList}
  
 <b>Я нравлюсь (<a href="/?go=compare&act=choose&out=1" onClick="Page.Go(this.href); return false;">{cnt-2}</a>)</b>
 <div class="search_clear"></div>
	{outlikeList}

 <b>Взаимно (<a href="/?go=compare&act=choose&out=2" onClick="Page.Go(this.href); return false;">{cnt-3}</a>)</b>
 <div class="search_clear"></div>
	{oklikeList}

</div>

<div class="clear"></div>


<div class="msg_speedbar margin_bottom_10" style="margin-right:297px; text-align: center">Выбирай людей, которые тебе нравятся, и узнай, нравишься ли ты им! Анкеты участников открываются друг другу только после совпадения. Чем дольше ты находишься в онлайне, тем чаще ты будешь показываться другим людям.</div>

456456[/main]<br><br><br><br><br>

[blacklist][no-subscription]<a class="fm_img_border" href="/" onClick="subscriptions.add({user-id}); return false" id="lnk_unsubscription"><span id="text_add_subscription"><img onmouseover="myhtml.title('105', 'Подписаться на обновления', 'newBBlock1')" id="newBBlock1105" width="16" src="{theme}/images/icons/reload.png" /></span><img src="{theme}/images/loading_mini.gif" alt="" id="addsubscription_load" class="loady no_display" style="margin-right:-13px" /></a>[/no-subscription][/blacklist]