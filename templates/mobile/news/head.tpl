[news]<script type="text/javascript">
var page_cnt = 1;
$(document).ready(function(){
	music.jPlayerInc();
	$('#wall_text, .fast_form_width').autoResize();
	$(window).scroll(function(){
		if($(document).height() - $(window).height() <= $(window).scrollTop()+($(document).height()/2-250)){
			news.page();
		}
	});
});
$(document).click(function(event){
	wall.event(event);
});
</script>
<div id="jquery_jplayer"></div>
<input type="hidden" id="teck_id" value="" />
<input type="hidden" id="teck_prefix" value="" />
<input type="hidden" id="typePlay" value="standart" />
<input type="hidden" id="type" value="{type}" />

<div class="autowr" style="margin-bottom: 50px;">
<div style="margin-top:20px;"></div>
<div id="my_sub_menu">
<a href="/news" onClick="Page.Go(this.href); return false;" title="Новости" class="s">Новости</a>
<a href="/news/notifications" onClick="Page.Go(this.href); return false;" title="Ответы">Ответы</a>
<a href="/news/photos" onClick="Page.Go(this.href); return false;" title="Фотографии">Фотографии</a>
<a href="/news/videos" onClick="Page.Go(this.href); return false;" title="Видеозаписи">Видеозаписи</a>
<a href="/news/updates" onClick="Page.Go(this.href); return false;" title="Обновления">Обновления</a>
</div>

<div class="clear"></div><div style="margin-top:10px;"></div>[/news]
[bottom]<span id="news"></span>
[bottom]<span id="news"></span>
<div onClick="news.page()" id="wall_l_href_news" class="cursor_pointer"><div class="photo_all_comm_bg wall_upgwi" id="loading_news" style="width:750px">Показать предыдущие новости</div></div>[/bottom]
