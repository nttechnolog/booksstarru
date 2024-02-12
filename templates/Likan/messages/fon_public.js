/* 
	Appointment: Фон_сообщества
	File: fon_public.php
	Author: Vintslen Carey
	Url: http://www.i-people.com.ua
 
*/
var public_fon = {
  addbox: function(f){
    $('.js_titleRemove').remove();
    viiBox.start();
	$.post('/index.php?go=public_fon', {for_id: f}, function(d){
	  viiBox.win('fon_mouse', d);
	});
  }
}
var fon_facemy = {
	init: function(i, hi){
		$('#fon_people_img').attr('src', i);
		({
			stop: function(){
				$('.fon_people_add').show();
			},
			drag: function(event, ui){
				var d = ui.position.top;
				$('.fon_people_add').hide();
				if(d >= 0){
					$('#fon_people_restart').html('<div style="width:400px;height:'+hi+'px;position:relative;top:0px;z-index:1"><img src="'+i+'" width="400" id="fon_people_img" /></div>');
					$('.fon_people_add').show();
					fon_facemy.init(i, hi);
				}
				h = parseInt('-'+(hi-194));
				if(d <= h){
					$('#fon_people_restart').html('<div style="width:400px;height:'+hi+'px;position:relative;top:'+h+'px;z-index:1"><img src="'+i+'" width="400" id="fon_people_img" /></div>');
					$('.fon_people_add').show();
					fon_facemy.init(i, hi);
				}
			}
		});
	},
	reload_facemy: function(){window.location.reload();},
	del: function(id){
		$('.fon_people_add').hide();
		$('#fon_people_img').attr('src', '');
		$('#fon_people_restart').html('');
		if(id) $.post('/index.php?go=public_fon&act=del_fon&id='+id);
		else $.post('/index.php?go=public_fon&act=del_public_fon'); window.location.reload();
	}
}