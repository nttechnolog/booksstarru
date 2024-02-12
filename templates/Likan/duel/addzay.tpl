<div id="is_reqest" style="margin:auto;text-align:center;">
  
   <h2>Форма добавления расказа для дуэли</h2>
  
   <div style="width: 955px;  margin: auto;    padding: 50px;">
    <form method="POST" action="" name="entryform">
<div class="note_add_bg">

<div style="display: none" class="videos_text">Выберете автора</div>
<input style="display: none" type="text" class="videos_input" style="width:858px" maxlength="65" id="title_n">
<div class="input_hr"></div>
<div class="videos_text">Выберете жанр</div>

 <select id="chanrStory" name="chanr" class="videos_input" style="width:858px" maxlength="65"><option>Жанр</option>
  <option value="0">Проза</option><option value="1">Поэзия</option><option value="2">Лирика</option><option value="3">Мемуары</option><option value="4">История</option><option value="5">Детская</option><option value="6">Детектив</option><option value="7">Приключения</option><option value="8">Фантастика</option><option value="9">Фэнтези</option><option value="10">Киберпанк</option><option value="11">Фанфик</option><option value="12">Публицистика</option><option value="13">События</option><option value="14">Литобзор</option><option value="15">Критика</option><option value="16">Философия</option><option value="17">Религия</option><option value="18">Эзотерика</option><option value="19">Оккультизм</option><option value="20">Мистика</option><option value="21">Хоррор</option><option value="22">Политика</option><option value="23">Любовный роман</option><option value="24">Естествознание</option><option value="25">Изобретательство</option><option value="26">Юмор</option><option value="27">Байки</option><option value="28">Пародии</option><option value="29">Переводы</option><option value="30">Сказки</option><option value="31">Драматургия</option><option value="32">Постмодернизм</option>
 </select>
<div class="input_hr"></div>
<div class="videos_text">Название расказа</div>
<input type="text" class="videos_input" style="width:858px" maxlength="65" id="nameStory">
<div class="input_hr"></div>
<div class="videos_text">Ваш расказ</div>
<div class="wysiwyg_bbpanel">
 <div onclick="bbcodes.tag('[b]', '[/b]')" class="wysiwyg_icbold cursor_pointer border_radius_3" onmouseover="myhtml.title('1', 'Жирный', 'bb_bold_', '0')" id="bb_bold_1"></div>
 <div onclick="bbcodes.tag('[i]', '[/i]')" class="wysiwyg_ici cursor_pointer border_radius_3" onmouseover="myhtml.title('1', 'Курсивный', 'bb_i_', '0')" id="bb_i_1"></div>
 <div onclick="bbcodes.tag('[u]', '[/u]')" class="wysiwyg_icunderline cursor_pointer border_radius_3" onmouseover="myhtml.title('1', 'Подчеркнутый', 'bb_underline_', '0')" id="bb_underline_1"></div>
 <div onclick="bbcodes.tag('[left]', '[/left]')" class="wysiwyg_icpleft cursor_pointer border_radius_3" onmouseover="myhtml.title('1', 'Выровнять по левому краю', 'bb_pleft_', '0')" id="bb_pleft_1"></div>
 <div onclick="bbcodes.tag('[center]', '[/center]')" class="wysiwyg_icpcenter cursor_pointer border_radius_3" onmouseover="myhtml.title('1', 'Выровнять по центру', 'bb_pcenter_', '0')" id="bb_pcenter_1"></div>
 <div onclick="bbcodes.tag('[right]', '[/right]')" class="wysiwyg_icpright cursor_pointer border_radius_3" onmouseover="myhtml.title('1', 'Выровнять по правому краю', 'bb_pright_', '0')" id="bb_pright_1"></div>
 <div onclick="bbcodes.tag('[quote]', '[/quote]')" class="wysiwyg_icquote cursor_pointer border_radius_3" onmouseover="myhtml.title('1', 'Добавить цитату', 'bb_quote_', '0')" id="bb_quote_1"></div>
 <div class="wysiwyg_icphoto cursor_pointer border_radius_3" onclick="wall.attach_addphoto(false, false, 1)" onmouseover="myhtml.title('1', 'Добавить фотографию', 'bb_photo_', '0')" id="bb_photo_1"></div>
 <div class="wysiwyg_icvideo cursor_pointer border_radius_3" onclick="wall.attach_addvideo(false, false, 1)" onmouseover="myhtml.title('1', 'Добавить видеозапись', 'bb_video_', '0')" id="bb_video_1"></div>
 <div class="wysiwyg_iclink cursor_pointer border_radius_3" onclick="wysiwyg.linkBox()" onmouseover="myhtml.title('1', 'Добавить ссылку', 'bb_link_', '0')" id="bb_link_1"></div>
 <div class="clear"></div>
</div>
<textarea class="videos_input wysiwyg_inpt" id="story" name="text"></textarea>
<div class="clear"></div>
<div class="videos_text">Ссылка на полную публикацию</div>
<input type="text" class="videos_input" style="width:858px" maxlength="65" id="hrefFullVersion">
<div class="input_hr"></div>
<div class="videos_text">Пару слов о себе</div>

<textarea class="videos_input" style="width:858px" maxlength="65" id="aboutAutor" name="text"></textarea>
<div class="clear"></div>
<div class="button_div_gray fl_l margin_left"><button onclick="notes.previewDuel(); return false">Принять участие</button></div>
<div class="clear"></div>
</div>
</form>
   </div>
</div>