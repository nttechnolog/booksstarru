[record]
<DIV class="box2 masonry-brick" id="wall_record_{rec-id}">
<DIV class="rel">
<TABLE border="0">
<TBODY>
<TR height="80">
<TD width="60">
<A href="/u{user-id}" onClick="Page.Go(this.href); return false"><DIV id="ava_rec_{rec-id}" style="WIDTH: 50px; BACKGROUND: url({ava}) no-repeat; HEIGHT: 50px; background-size: 50px 50px; -webkit-border-radius: 25px; border-radius: 25px; -moz-border-radius: 25x"></DIV></A></TD>
<TD id="author" width="400"><A href="/u{user-id}" onClick="Page.Go(this.href); return false">{name}</A>&nbsp;&nbsp;&nbsp;{online} <BR>{type}<BR>{date}</TD>
<TD align="left">
<DIV style="margin-right:10px;">
 [owner]<div class="wall_delete" onMouseOver="myhtml.title('{rec-id}', 'Удалить запись', 'wall_del_')" onClick="wall.delet('{rec-id}'); return false" id="wall_del_{rec-id}"></div>[/owner]
 <div class="wall_tell_all cursor_pointer" onMouseOver="myhtml.title('{rec-id}', 'Отправить в сообщество или другу', 'wall_tell_all_')" onClick="Repost.Box('{rec-id}'); return false "id="wall_tell_all_{rec-id}"></div>
 [owner-record]<div class="wall_tell cursor_pointer" onMouseOver="myhtml.title('{rec-id}', 'Рассказать друзьям', 'wall_tell_')" onClick="wall.tell('{rec-id}'); return false" id="wall_tell_{rec-id}" style="margin-top:2px;margin-left:4px"></div>
 <div class="wall_tell_ok no_display" id="wall_ok_tell_{rec-id}" style="margin-left:2px;margin-top:1px"></div>
 <div class="wall_delete" onMouseOver="myhtml.title('{rec-id}', 'Отметить как спам', 'wall_spam_')" onClick="Report.WallSend('wall', '{rec-id}'); return false"id="wall_spam_{rec-id}"></div>[/owner-record]
 </DIV></TD></TR>
<TR>
<TD colSpan="3">
<DIV id="line"></DIV>
<div style="MARGIN-LEFT: 65px">{text}</div>

<div class="clear"></div>
<div class="size10 infowalltext_f clear">
  <div class="fl_l">[privacy-comment][comments-link]<span id="fast_comm_link_{rec-id}" class="fast_comm_link"><a href="/" id="fast_link_{rec-id}" onClick="wall.open_fast_form('{rec-id}'); wall.fast_open_textarea('{rec-id}'); return false">Комментировать</a></span>[/comments-link][/privacy-comment]</div>
  <div class="public_likes_user_block no_display" id="public_likes_user_block{rec-id}" onMouseOver="groups.wall_like_users_five('{rec-id}')" onMouseOut="groups.wall_like_users_five_hide('{rec-id}')">
   <div onClick="wall.all_liked_users('{rec-id}', '', '{likes}')">Понравилось {likes-text}</div>
   <div class="public_wall_likes_hidden">
    <div class="public_wall_likes_hidden2">
     <a href="/u{viewer-id}" id="like_user{viewer-id}_{rec-id}" class="no_display" onClick="Page.Go(this.href); return false"><img src="{viewer-ava}" width="32" /></a>
     <div id="likes_users{rec-id}"></div>
    </div>
   </div>
   <div class="public_like_strelka"></div>
  </div>
  <input type="hidden" id="update_like{rec-id}" value="0" />
  <div class="fl_r public_wall_like cursor_pointer" style="margin-right:10px;" onClick="{like-js-function}" onMouseOver="groups.wall_like_users_five('{rec-id}', 'uPages')" onMouseOut="groups.wall_like_users_five_hide('{rec-id}')" id="wall_like_link{rec-id}">
   <div class="fl_l" id="wall_like_active">Мне нравится</div>
   <div class="public_wall_like_no {yes-like}" id="wall_active_ic{rec-id}"></div>
   <b id="wall_like_cnt{rec-id}" class="{yes-like-color}">{likes}</b>
  </div>
  [privacy-comment][comments-link]<div class="wall_fast_form no_display" id="fast_form_{rec-id}">
   <div class="no_display wall_fast_texatrea" id="fast_textarea_{rec-id}">
    <textarea class="wall_inpst fast_form_width wall_fast_text" style="height:33px;color:#000;margin:0px" id="fast_text_{rec-id}"
		onKeyPress="if(event.keyCode == 10 || (event.ctrlKey && event.keyCode == 13))wall.fast_send('{rec-id}', '{author-id}')"
	></textarea>
    <div class="button_div fl_l margin_top_5"><button onClick="wall.fast_send('{rec-id}', '{author-id}'); return false" id="fast_buts_{rec-id}">Отправить</button></div>
   </div>
   <div class="clear"></div>
  </div>[/comments-link][/privacy-comment]
 </div>
 <div class="clear"></div>
 
</TD></TR></TBODY></TABLE></DIV></DIV>
[/record]

[all-comm]<div class="cursor_pointer" onClick="wall.all_comments('{rec-id}', '{author-id}'); return false" id="wall_all_but_link_{rec-id}"><div class="public_wall_all_comm" id="wall_all_comm_but_{rec-id}">Показать {gram-record-all-comm}</div></div>[/all-comm]
[comment]<div class="wall_fast_block page_bg border_radius_5" id="wall_fast_comment_{comm-id}" onMouseOver="ge('fast_del_{comm-id}').style.display = 'block'" onMouseOut="ge('fast_del_{comm-id}').style.display = 'none'">
<div class="wall_fast_ava"><a href="{link}" onClick="Page.Go(this.href); return false"><img src="{ava}" alt="" /></a></div>
<div><a href="{link}" onClick="Page.Go(this.href); return false">{name}</a></div>
<div class="wall_fast_comment_text">{text}</div>
<div class="wall_fast_date fl_l">{date}</div>[owner]<a href="/" class="size10 fl_r no_display" id="fast_del_{comm-id}" onClick="wall.fast_comm_del('{comm-id}'); return false">Удалить</a>[/owner]

</div>[/comment]
[comment-form]<div class="wall_fast_opened_form" id="fast_form">
 <input type="text" class="wall_inpst fast_form_width wall_fast_input" value="Комментировать..." id="fast_inpt_{rec-id}" onMouseDown="wall.fast_open_textarea('{rec-id}', 2); return false" style="margin:0px" />
 <div class="no_display wall_fast_texatrea" id="fast_textarea_{rec-id}">
  <textarea class="wall_inpst fast_form_width wall_fast_text" style="height:33px;color:#000;margin-top:0px" id="fast_text_{rec-id}"
	onKeyPress="if(event.keyCode == 10 || (event.ctrlKey && event.keyCode == 13))wall.fast_send('{rec-id}', '{author-id}')"
  ></textarea>
  <div class="button_div fl_l margin_top_5"><button onClick="wall.fast_send('{rec-id}', '{author-id}'); return false" id="fast_buts_{rec-id}">Отправить</button></div>
 </div>
 <div class="clear"></div>
</div>[/comment-form]