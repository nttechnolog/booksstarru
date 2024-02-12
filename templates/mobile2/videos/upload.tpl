<script type="text/javascript">
	ajaxUpload = new AjaxUpload('fmv_upload', {
		action: '/index.php?go=videos&act=upload',
		name: 'uploadfile',
		onSubmit: function (file, ext) {
			if(!(ext && /^(mp4|mpeg|avi|ogg|flv)$/.test(ext))) {
				addAllErr('Формат не поддерживается!', 3300);
				return false;
			}
				$('#fmv_loading').show();
				$('#fmv_info').hide();
				$('#fmv_input_none').hide();
		},
		onComplete: function (file, row){
			if(row == 1) addAllErr('Максимальны размер 500 МБ.', 500000000);
			else {
				$('.fmv_hidden').show();
				$('#fmv_upload').hide();
				$('#fmv_loading').hide();
				$('#fmv_info').show();
				$('#fmv_input_none').show();
				setTimeout("$('.fmvideos_input_1').css('background', '#F3EFED').focus()", 1000);
				setTimeout("$('.fmvideos_input_1').css('background', '#FFFFFF').focus()", 2000);
				setTimeout("$('.fmvideos_input_2').css('background', '#F3EFED').focus()", 3000);
				setTimeout("$('.fmvideos_input_2').css('background', '#FFFFFF').focus()", 4000);
				setTimeout("$('#fmv_info').css('background', '#F3EFED').focus()", 5000);
			}
		}
	});
</script>

<div class="miniature_box">

<div class="miniature_pos" style="width:500px">

<div class="miniature_title fl_l apps_box_text">Загрузка видео материалов Beta</div><a class="cursor_pointer fl_r" style="font-size:12px" onClick="viiBox.clos('fmv_mouse', 1)">Закрыть</a>

<div class="clear"></div>

<div class="fm_item_info"><center>При добавлении видео на FaceMy следует придерживаться конкретных требований данного видео сервиса. Желательно все характеристики загружаемого видео привести к наилучшему его просмотру в высоком разрешении 1080р («р» – прогрессивная развертка) сервиса FaceMy. <br />Поддерживаемые форматы (mp4 mpeg avi ogg).<br />Допустимый размер 500 мб. </center>

</div>

<div class="fmv_cle">

<div id="fmv_upload" class="fmv_add">Загрузить видео</div>

<div class="clear"></div>

</div>

<div id="fmv_input_none" style="display:none;">

<div class="videos_text">Название</div>

<input type="text" class="fmvideos_input_1" id="title" name="title" maxlength="65" />

<div class="videos_text">Описание</div>

<textarea class="fmvideos_input_2" id="descr" name="descr" style="height:70px"></textarea>

</div>

<div id="fmv_loading" style="display:none;"><center><img src="tempaltes/Default/images/loading_file.gif" /></center></div>

<div id="fmv_info" onClick="videos.reload_list()" style="display:none;">Видео успешно загружено! <a class="fmv_hidden">Сохранить данное видео.</a></div>

<div class="clear"></div>

</div></div>