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

<div class="msg_speedbar margin_bottom_10" style="margin-right:297px; text-align: center">Выбирай людей, которые тебе нравятся, и узнай, нравишься ли ты им! Анкеты участников открываются друг другу только после совпадения. Чем дольше ты находишься в онлайне, тем чаще ты будешь показываться другим людям.</div>

[/main]<br><br><br><br><br>

