[all]
<div class="autowr" style="margin-bottom: 50px;">
<div style="margin-top:20px;"></div>
<div id="my_sub_menu" style="width: 954px;">
<a href="/notes/{user-id}" onClick="Page.Go(this.href); return false;">[owner]Мои заметки[/owner][not-owner]Заметки {name}[/not-owner]</a>
 [owner]<a href="/notes/add" onClick="Page.Go(this.href); return false;">Добавить запись</a>[/owner]
 [not-owner]<a href="/u{user-id}" onClick="Page.Go(this.href); return false;">К странице {name}</a>[/not-owner]
</div>
<div class="clear"></div>
[/all]
[add]
<div class="autowr" style="margin-bottom: 50px;">
<div style="margin-top:20px;"></div>
<div id="my_sub_menu" style="width: 954px;">
 <a href="/notes" onClick="Page.Go(this.href); return false;">Мои заметки</a>
 <a href="/notes/add" onClick="Page.Go(this.href); return false;">Добавить запись</a></div>
</div>
<div class="clear"></div>
[/add]
[edit]
<div class="autowr" style="margin-bottom: 50px;">
<div style="margin-top:20px;"></div>
<div id="my_sub_menu" style="width: 954px;">
 <a href="/notes" onClick="Page.Go(this.href); return false;">Мои заметки</a>
 <a href="/notes/edit/{note-id}" onClick="Page.Go(this.href); return false;">Редактирование записи</a></div>
 <a href="/notes/add" onClick="Page.Go(this.href); return false;">Добавить запись</a>
</div>
<div class="clear"></div>
[/edit]
[view]
<div class="autowr" style="margin-bottom: 50px;">
<div style="margin-top:20px;"></div>
<div id="my_sub_menu" style="width: 954px;">
 <a href="/notes/{user-id}" onClick="Page.Go(this.href); return false;">[owner]Мои заметки[/owner][not-owner]Заметки {name}[/not-owner]</a>
 <a href="/notes/view/{note-id}" onClick="Page.Go(this.href); return false;">Просмотр заметки</a>
 [not-owner]<a href="/u{user-id}" onClick="Page.Go(this.href); return false;">К странице {name}</a>[/not-owner]
 [owner]<a href="/notes/add" onClick="Page.Go(this.href); return false;">Добавить запись</a>[/owner]
</div>
<div class="clear"></div>
[/view]