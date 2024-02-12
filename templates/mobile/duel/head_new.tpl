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
<br><br><br><br><br>
<center><div class="msg_speedbar margin_bottom_10" style="margin-right:297px;">Выбирай людей, которые тебе нравятся, и узнай, нравишься ли ты им! Анкеты участников открываются друг другу только после совпадения. Чем дольше ты находишься в онлайне, тем чаще твои произведения будут показаны другим людям.</div></center>

[/main]<br>

