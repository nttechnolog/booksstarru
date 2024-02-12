<div class="autowr" style="margin-bottom: 50px;">
[all-friends]
<div style="margin-top:20px;"></div>
<div id="my_sub_menu">
 <a href="/friends/{user-id}" onClick="Page.Go(this.href); return false;">Все друзья</a>
 <a href="/friends/online/{user-id}" onClick="Page.Go(this.href); return false;">Друзья на сайте</a>
 [owner]<a href="/friends/requests" onClick="Page.Go(this.href); return false;">Заявки в друзья {demands}</a>[/owner]
 [not-owner]<a href="/friends/common/{user-id}" onClick="Page.Go(this.href); return false;">Общие друзья</a>
 <a href="/u{user-id}" onClick="Page.Go(this.href); return false;">К странице {name}</a>[/not-owner]
</div>
<div class="clear"></div>
[/all-friends]

[request-friends]
<div style="margin-top:20px;"></div>
<div id="my_sub_menu">
 <a href="/friends/{user-id}" onClick="Page.Go(this.href); return false;">Все друзья</a>
 <a href="/friends/online/{user-id}" onClick="Page.Go(this.href); return false;">Друзья на сайте</a>
 <a href="/friends/requests" onClick="Page.Go(this.href); return false;">Заявки в друзья {demands}</a>
</div>
<div class="clear"></div>
[/request-friends]

[online-friends]
<div style="margin-top:20px;"></div>
<div id="my_sub_menu">
 <a href="/friends/{user-id}" onClick="Page.Go(this.href); return false;">Все друзья</a>
 <a href="/friends/online/{user-id}" onClick="Page.Go(this.href); return false;">Друзья на сайте</a>
 [owner]<a href="/friends/requests" onClick="Page.Go(this.href); return false;">Заявки в друзья {demands}</a>[/owner]
 [not-owner]<a href="/friends/common/{user-id}" onClick="Page.Go(this.href); return false;">Общие друзья</a>
 <a href="/u{user-id}" onClick="Page.Go(this.href); return false;">К странице {name}</a>[/not-owner]
</div>
<div class="clear"></div>
[/online-friends]
