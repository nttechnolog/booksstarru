<div id="jquery_jplayer" style="position: absolute; top: 0px; left: 0px"><embed name="jqjp_flash_2" src="/templates/Default/js/Jplayer.swf" width="0" height="0" bgcolor="#ffffff" quality="high" flashvars="id=jquery_jplayer&fid=jqjp_flash_2" allowscriptaccess="always" type="application/x-shockwave-flash" pluginspage="http://www.macromedia.com/go/getflashplayer"><div id="jqjp_force_2" style="text-indent: -9999px">0.014075058763372006</div></div>
<input type="hidden" id="teck_id" value="">
<input type="hidden" id="teck_prefix" value="">
<input type="hidden" id="typePlay" value="standart">

<div id="bmsg_{mid}">
<div class="msg_div">
 <div class="msg_ava fl_l"><a href="/u{user-id}" onclick="Page.Go(this.href); return false"><img src="{ava}" alt=""></a></div>
 <div class="msg_name"><a href="/u{user-id}" onclick="Page.Go(this.href); return false">Сообщение для {name}</a>  <font></font><span>{date}</span></div>
 <div class="msg_text" style="margin-left:115px">
  <div class="delicious"></div>
  {text}<br><br><br>
  
  <div class="msg_answer_form">
   <textarea class="inpst" style="width: 765px; margin-bottom: 10px; overflow-y: hidden; position: absolute; top: 0px; left: -9999px; line-height: normal; text-decoration: none; letter-spacing: 0px; height: 0px" tabindex="-1"></textarea><textarea class="inpst" style="width: 715px; margin-bottom: 10px; overflow-y: hidden; height: 85px" id="msg_value"></textarea>
  </div>
  
  <div class="msg_answer_form">
<input id="vaLattach_files" type="hidden" />
<div class="clear"></div>
<div class="button_div fl_l"><button onClick="messages.reply({user-id}, 'new'); return false" id="msg_sending">Отправить</button></div>
<div class="wall_attach fl_r" onClick="wall.attach_menu('open', this.id, 'wall_attach_menu')" onMouseOut="wall.attach_menu('close', this.id, 'wall_attach_menu')" id="wall_attach" style="margin-top:0px">Прикрепить</div>
 <div class="wall_attach_menu no_display" onMouseOver="wall.attach_menu('open', 'wall_attach', 'wall_attach_menu')" onMouseOut="wall.attach_menu('close', 'wall_attach', 'wall_attach_menu')" id="wall_attach_menu" style="margin-left:685px;margin-top:20px">
 <div class="wall_attach_icon_smile" id="wall_attach_link" onClick="wall.attach_addsmile()">Смайлик</div>
 <div class="wall_attach_icon_photo" id="wall_attach_link" onClick="wall.attach_addphoto()">Фотографию</div>
 <div class="wall_attach_icon_video" id="wall_attach_link" onClick="wall.attach_addvideo()">Видеозапись</div>
 <div class="wall_attach_icon_audio" id="wall_attach_link" onClick="wall.attach_addaudio()">Аудиозапись</div>
 <div class="wall_attach_icon_doc" id="wall_attach_link" onClick="wall.attach_addDoc()">Документ</div>
</div>
<div class="clear" style="margin-top:10px"></div>
</div>
<div class="msg_view_histroy" id="history_lnk" onClick="messages.history({user-id}); return false">Показать историю сообщений</div>
<span class="no_display"><input type="hidden" id="theme_value" value="..." /></span>
<div class="msg_view_history_title no_display">История сообщений</div>
<div id="msg_historyies"></div></div>
 <div class="clear"></div>
</div>
 </div>
</div>
<div class="clear"></div>
</div>




