[all-friends]
<div class="panel">
<ul class="tabs">
<li class="cur"><a class="al_tab" href="/friends/{user-id}" onclick="Page.Go(this.href); return false;">���</a></li>
<li><a class="al_tab" href="/friends/online/{user-id}" onclick="Page.Go(this.href); return false;">������</a></li>
[owner]<li><a class="al_tab" href="/guests" onclick="Page.Go(this.href); return false;">��� �����</a><li>
<li><a href="/friends/requests">������ {demands}</a></li>[/owner]
<li><a href="/u{user-id}">� �������� {name}</a></li>
</ul>
</div>
<div class="clr"></div>
[/all-friends]

[online-friends]
<div class="panel">
<ul class="tabs">
<li><a class="al_tab" href="/friends/{user-id}" onclick="Page.Go(this.href); return false;">���</a></li>
<li class="cur"><a class="al_tab" href="/friends/online/{user-id}" onclick="Page.Go(this.href); return false;">������</a></li>
[owner]<li><a class="al_tab" href="/guests" onclick="Page.Go(this.href); return false;">��� �����</a><li>
<li><a href="/friends/requests">������ {demands}</a></li>[/owner]
<li><a href="/u{user-id}">� �������� {name}</a></li>
</ul>
</div>
<div class="clr"></div>
[/online-friends]

[request-friends]
<div class="panel">
<ul class="tabs">
<li><a class="al_tab" href="/friends/{user-id}" onclick="Page.Go(this.href); return false;">���</a></li>
<li><a class="al_tab" href="/friends/online/{user-id}" onclick="Page.Go(this.href); return false;">������</a></li>
<li><a class="al_tab" href="/guests" onclick="Page.Go(this.href); return false;">��� �����</a><li>
<li class="cur"><a href="/friends/requests">������ {demands}</a></li>
<li><a href="/u{user-id}">� ��������</a></li>
</ul>
</div>
<div class="clr"></div>

[/request-friends]