
<script> 
var tgs = new Array( 'div','td','tr'); 
var szs = new Array( 'xx-small','x-small','small','medium','large','x-large','xx-large' ); 
var startSz = 2; 

function ts( trgt,inc ) { 
  if (!document.getElementById) return 
  var d = document,cEl = null,sz = startSz,i,j,cTags; 
   
  sz += inc; 
  if ( sz < 0 ) sz = 0; 
  if ( sz > 6 ) sz = 6; 
  startSz = sz; 
   
  if ( !( cEl = d.getElementById( trgt ) ) ) cEl = d.getElementsByTagName( trgt )[ 0 ]; 

  cEl.style.fontSize = szs[ sz ]; 

  for ( i = 0 ; i < tgs.length ; i++ ) { 
  cTags = cEl.getElementsByTagName( tgs[ i ] ); 
  for ( j = 0 ; j < cTags.length ; j++ ) cTags[ j ].style.fontSize = szs[ sz ]; 
  } 
} 
</script>
  
<form action="" name="isprint" id="isprint" method="post"><input type="hidden" name="goprint" value="true"></form>

<div class="note_full_title border_radius_5" style="word-wrap:break-word">
 <a href="javascript:document.isprint.submit();"><div style="    float: right;
    width: 250px;
    text-align: right;
    color: #e00303;
    font-size: 12px;{display-print};">Подать заявку на печать</div></a>
 <span><a href="/notes/view/{note-id}" onClick="Page.Go(this.href); return false"><h1><font size="4">Произведение: {title}</font></h1></a></span><br />
 
 <div><a href="/u{user-id}" onClick="Page.Go(this.href); return false"><h8><font size="3">Автор: {name} {date}</font></h8></a> </div>
 <a href="#" onClick="window.print()"> <font size="5">Распечатать</font>  </a>
 
 
 
 <div style="margin-top:5px;width:26px;height:25px;float:left;background:url(https://books-star.ru/templates/Likan/images/print_printer.png)"></div>
 <a href="javascript:ts('body',2)"><font size="3">+ Увеличить шрифт</a> | <a href="javascript:ts('body',-2)">+ Уменьшить шрифт</a>
<div class="fl_r"><font size="3">{comm-num} &nbsp;|&nbsp;</font> <a class="cursor_pointer" onClick="Report.Box('note', '{note-id}')"><font size="3">Оставить жалобу</font></a>

[owner]&nbsp;|&nbsp; <a href="/notes/edit/{note-id}" onClick="Page.Go(this.href); return false">Редактировать</a> &nbsp;|&nbsp; <a href="/" onClick="notes.delet({note-id}, 1); return false">Удалить</a>[/owner]</div>


</div>
<div class="page_bg border_radius_5" style="background-color: #F8F8FF">  <h8>

<font size="3">{full-text}</font>

 </h8></b></u></i><div class="clear"></div>

 
  <input type="hidden" id="update_like{rec-id}" value="0" />
  <div class="fl_r public_notes_like cursor_pointer" style="margin-right:10px;" onClick="{like-js-function}" onMouseOver="notes.notes_like_users_five('{rec-id}', 'uPages')" onMouseOut="notes.notes_like_users_five_hide('{rec-id}')" id="notes_like_link{rec-id}">
   <div class="fl_l" id="notes_like_active">Лайк для рейтинга</div>
   <div class="public_notes_like_no {yes-like}" id="wall_active_ic{rec-id}"></div>
   <b id="notes_like_cnt{rec-id}" class="{yes-like-color}">{likes}</b>
  </div>

 </div>
 
 

<div class="note_inf_panel note_text_full">


</div>
[all-comm]<a href="/" onClick="notes.allcomments({note-id}, {num}); return false" id="all_href_lnk_comm"><div class="photo_all_comm_bg note_all_com" id="all_lnk_comm">Показать {prev-text-comm}</div></a><span id="all_comments"></span>[/all-comm]
