

<div class="msg_one [new]msg_new[/new]" id="bmsg_{mid}">
<div class="msg_div">
 <div class="msg_ava fl_l"><a href="/u{user-id}" onclick="Page.Go(this.href); return false"><img src="{ava}" alt=""></a></div>
 <div class="msg_name msg_new_date"><a href="/u{user-id}" onclick="Page.Go(this.href); return false">{name}</a>  <font>{online}</font><span class="msg_new">{date}</span></div>
 <div class="msg_text">
  <div class="delicious"></div>
  {text}{subj}
  <div class="panel_msg">
   <a href="/messages/show/{mid}" onclick="Page.Go(this.href); return false">Ответить</a>
   <a href="/" class="fl_r" onclick="messages.delet({mid}, 'outbox'); return false" id="del_text_{mid}">Удалить</a><img src="/templates/Default/images/loading_mini.gif" id="del_load_{mid}" class="no_display">
  </div>
 </div>
  <div class="clear"></div>
 </div>
</div>


