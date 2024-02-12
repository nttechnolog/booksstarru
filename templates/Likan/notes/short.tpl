<div id="note_{note-id}" class="page_bg border_radius_5 margin_bottom_10">

<div class="one_note">
<div class="notes_ava"><a href="/u{user-id}" onClick="Page.Go(this.href); return false"><img style="border: 0px solid ; width: 30px;" src="{ava}" alt="" /></a></div>
 <span><a href="/notes/view/{note-id}" onClick="Page.Go(this.href); return false">{title}</a></span><br />
 
 <div><a href="/u{user-id}" onClick="Page.Go(this.href); return false">{name}</a> {date}</div>
</div>
<div class="note_text clear"><div class="note_pos">{short-text}</div> <br><br><a href="/notes/view/{note-id}" onClick="Page.Go(this.href); return false"><b>Читать полностью (официальные публикаци доступные для рейтинга и читателей)</b></a></b></u></i><div class="clear"></div></div>
<div class="note_inf_panel">
 <a href="/notes/view/{note-id}" onClick="Page.Go(this.href); return false">{comm-num}</a> [owner]<a href="/" class="fl_r" onClick="notes.delet({note-id}, false, {user-id}); return false">Удалить</a><a class="fl_r" style="width:20px">&nbsp;</a><a href="/notes/edit/{note-id}" class="fl_r" onClick="Page.Go(this.href); return false">Редактировать</a>[/owner]
</div>
<div class="clear"></div>
</div>
