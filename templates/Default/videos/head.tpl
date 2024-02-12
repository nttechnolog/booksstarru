<script type="text/javascript">
$(document).ready(function(){
	videos.scroll();
});
</script>
<div class="autowr" style="margin-bottom: 50px;">
<div style="margin-top:20px;"></div>
<div id="my_sub_menu">
 <a href="/videos/{user-id}" onClick="Page.Go(this.href); return false;">[owner]Все видеозаписи[/owner][not-owner]К видеозаписям {name}[/not-owner]</a>
 [admin-video-add][owner]<a href="/" onClick="videos.add(); return false;">Добавить видеоролик</a>[/owner][/admin-video-add]
 [not-owner]<a href="/u{user-id}" onClick="Page.Go(this.href); return false;">К странице {name}</a>[/not-owner]
</div>
<div class="clear"></div>
<input type="hidden" value="{user-id}" id="user_id" />
<input type="hidden" id="set_last_id" />
<input type="hidden" id="videos_num" value="{videos_num}" />