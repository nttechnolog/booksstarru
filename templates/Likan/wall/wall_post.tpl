<div class="post_window" style="background: #fff;position: fixed; top: 0px; margin-top: 0px; height: 100%;opacity: 0.95;">
<div id="window2" style="margin-top: 50px;">
<h3>Что вы хотите написать?</h3>   <a onClick="viiBox.clos('wall_post', 1);"><div class="exit" style="margin-top:-25px;"></div></a>  <h5 style="margin-left:250px;"> <div id="line5555"></div> &nbsp;&nbsp;&nbsp; на вашей стене</h5>



<div class="newmes" id="wall_tab" style="border-bottom:0px;margin-bottom:-5px;width: 747px;">
  <input type="hidden" value="[owner]Что у Вас нового, {name}?[/owner][not-owner]Написать сообщение...[/not-owner]" id="wall_input_text" />
  <input type="text" class="wall_inpst" style="width: 737px;height: 50px;" value="[owner]Что у Вас нового, {name}?[/owner][not-owner]Написать сообщение...[/not-owner]" onMouseDown="wall.form_open(); return false" id="wall_input" style="margin:0px" />
  <div class="no_display" id="wall_textarea">
   <textarea id="wall_text" class="wall_inpst wall_fast_opened_texta" style="width:737px"
	onKeyUp="wall.CheckLinkText(this.value)"
	onBlur="wall.CheckLinkText(this.value, 1)"
   >
   </textarea>
   <div id="attach_files" class="margin_top_10 no_display"></div>
   <div id="attach_block_lnk" class="no_display clear">
   <div class="attach_link_bg">
    <div align="center" id="loading_att_lnk"><img src="{theme}/images/loading_mini.gif" style="margin-bottom:-2px" /></div>
    <img src="" align="left" id="attatch_link_img" class="no_display cursor_pointer" onClick="wall.UrlNextImg()" />
	<div id="attatch_link_title"></div>
	<div id="attatch_link_descr"></div>
	<div class="clear"></div>
   </div>
   <div class="attach_toolip_but"></div>
   <div class="attach_link_block_ic fl_l"></div><div class="attach_link_block_te"><div class="fl_l">Ссылка: <a href="/" id="attatch_link_url" target="_blank"></a></div><img class="fl_l cursor_pointer" style="margin-top:2px;margin-left:5px" src="{theme}/images/close_a.png" onMouseOver="myhtml.title('1', 'Не прикреплять', 'attach_lnk_')" id="attach_lnk_1" onClick="wall.RemoveAttachLnk()" /></div>
   <input type="hidden" id="attach_lnk_stared" />
   <input type="hidden" id="teck_link_attach" />
   <span id="urlParseImgs" class="no_display"></span>
   </div>
   <div class="clear"></div>
   <div id="attach_block_vote" class="no_display">
   <div class="attach_link_bg">
	<div class="texta">Тема опроса:</div><input type="text" id="vote_title" class="inpst" maxlength="80" value="" style="width:355px;margin-left:5px" 
		onKeyUp="$('#attatch_vote_title').text(this.value)"
	/><div class="mgclr"></div>
	<div class="texta">Варианты ответа:<br /><small><span id="addNewAnswer"><a class="cursor_pointer" onClick="Votes.AddInp()">добавить</a></span> | <span id="addDelAnswer">удалить</span></small></div><input type="text" id="vote_answer_1" class="inpst" maxlength="80" value="" style="width:355px;margin-left:5px" /><div class="mgclr"></div>
	<div class="texta">&nbsp;</div><input type="text" id="vote_answer_2" class="inpst" maxlength="80" value="" style="width:355px;margin-left:5px" /><div class="mgclr"></div>
	<div id="addAnswerInp"></div>
	<div class="clear"></div>
   </div>
   <div class="attach_toolip_but"></div>
   <div class="attach_link_block_ic fl_l"></div><div class="attach_link_block_te"><div class="fl_l">Опрос: <a id="attatch_vote_title" style="text-decoration:none;cursor:default"></a></div><img class="fl_l cursor_pointer" style="margin-top:2px;margin-left:5px" src="{theme}/images/close_a.png" onMouseOver="myhtml.title('1', 'Не прикреплять', 'attach_vote_')" id="attach_vote_1" onClick="Votes.RemoveForAttach()" /></div>
   <input type="hidden" id="answerNum" value="2" />
   </div>
   <div class="clear"></div>
   <input id="vaLattach_files" type="hidden" />
   <div class="clear"></div>
   <div class="button_div fl_r margin_top_10"><button onClick="wall.send();viiBox.clos('wall_post', 1); return false" id="wall_send">Отправить</button></div>
   
<div style="margin-top: 40px;">   
<div class="rectangle" onClick="wall.attach_addsmile()"><img src="{theme}/images/perete/smile.png"><p>Смайлик</p></div>

<div class="rectangle" onClick="wall.attach_addphoto()"><img src="{theme}/images/perete/2.png"><p>Фотографию</p></div>

<div class="rectangle" onClick="wall.attach_addvideo()"><img src="{theme}/images/perete/5.png"><p>Видео</p></div>

<div class="rectangle" onClick="wall.attach_addaudio()"><img src="{theme}/images/perete/6.png"><p>Аудио</p></div>

<div class="rectangle" onClick="wall.attach_addgraffiti('{user-id}')"><img src="{theme}/images/perete/graffiti.png"><p>Граффити</p></div>

[owner]<div class="rectangle" onClick="wall.attach_addnotes({user-id})"><img src="{theme}/images/perete/1.png"><p>Заметку</p></div>[/owner]

<div class="rectangle" onClick="wall.attach_addDoc()"><img src="{theme}/images/perete/4.png"><p>Документ</p></div>

<div id="wall_attach" class="rectangle" onClick="wall.attach_mapsBox({user-id})"><img src="{theme}/images/perete/maps.png"><p>Карту</p></div>

<div id="wall_attach" class="rectangle" onClick="$('#attach_block_vote').slideDown('fast');wall.attach_menu('close', 'wall_attach', 'wall_attach_menu');$('#vote_title').focus();$('#vaLattach_files').val($('#vaLattach_files').val()+'vote|start||')"><img src="{theme}/images/perete/1.png"><p>Опрос</p></div>
</div>
   
  </div>
  <div class="clear"></div>
 </div>
 


</div>
</div>