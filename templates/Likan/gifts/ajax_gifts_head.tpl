<script type="text/javascript">
$(document).ready(function(){
	$('.post_window').scroll(function(){
		if($('.post_window').scrollTop() > 150){
			$('#onphotos').css('position', 'fixed').css('top', '0px').css('box-shadow','0px 0px 10px 1px #666');
		} else {
			$('#onphotos').css('position','relative').css('box-shadow','none');
		}
	});
});
</script>

<div class="post_window" style="background: #fff;position: fixed; top: 0px; margin-top: 0px; height: 100%;overflow-y: scroll !important;">
<div id="window2" style="width:771px;margin-top: 50px;margin-bottom: 50px;">

<h3>[not-owner]Подарки {name}[/not-owner][owner]Мои Подарки[/owner]</h3>   <a onClick="viiBox.clos('gifts', 1);"><div class="exit" style="padding: 0px 5px 0px;"></div></a>

<div id="onphotos" style="float: left; padding:10px 0px; width: 770px; background-color: #eff1f3;color: #45689a;z-index:999999;"">
<b style="padding: 0px 10px 0px;">[no-new][yes]У [not-owner]{name}[/not-owner][owner]Вас[/owner] {gifts-num}[/yes][no]Нет ни одного подарка[/no][/no-new][new]Непросмотренные подарки[/new]</b> [not-owner]<div class="fl_r" style="padding: 0px 10px 0px;"><a href="/" onClick="gifts.box('{uid}'); return false;">Отправить подарок для {name}</a></div>[/not-owner]
</div>

<div style="margin-top:30px;"></div>