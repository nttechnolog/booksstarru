[all-albums]
<div class="panel">
<ul class="tabs">
<li class="cur">
<a class="al_tab" href="/albums/{user-id}" onclick="Page.Go(this.href); return false;">Все</a>
</li>
<li>
<a class="al_tab" href="/albums/comments/{user-id}" onclick="Page.Go(this.href); return false;">Комментарии</a>
</li>
 [not-owner]<li>
<a class="al_tab" href="/id{user-id}" onclick="Page.Go(this.href); return false;">К странице {name}</a>
</li>[/not-owner]
[new-photos]
<li>
<a class="al_tab" href="/albums/newphotos" onclick="Page.Go(this.href); return false;">Новые фотографии со мной (<b>{num}</b>)</a>
</li>[/new-photos]
</ul>
</div>
<div class="clr"></div>
[/all-albums]
[view]
<input type="hidden" id="all_p_num" value="{all_p_num}" />
<input type="hidden" id="aid" value="{aid}" />
<div class="panel">
<ul class="tabs">
<li>
<a class="al_tab" href="/albums/{user-id}" onclick="Page.Go(this.href); return false;">Все</a>
</li>
<li class="cur">
<a class="al_tab" href="/albums/view/{aid}" onclick="Page.Go(this.href); return false;">{album-name}</a>
</li>
<li>
<a class="al_tab" href="/albums/view/{aid}/comments/" onclick="Page.Go(this.href); return false;">Комментарии</a>
</li>
[not-owner]
<li>
<a class="al_tab" href="/id{user-id}" onclick="Page.Go(this.href); return false;">К странице {name}</a>
</li>[/not-owner]
</ul>
</div>
<div class="clr"></div>
[/view]

[comments]
<div class="panel">
<ul class="tabs">
<li>
<a class="al_tab" href="/albums/{user-id}" onclick="Page.Go(this.href); return false;">Все</a>
</li>
<li class="cur">
<a class="al_tab" href="/albums/comments/{user-id}" onclick="Page.Go(this.href); return false;">Комментарии</a>
</li>
[not-owner]
<li>
<a class="al_tab" href="/id{user-id}" onclick="Page.Go(this.href); return false;">К странице {name}</a>
</li>[/not-owner]
</ul>
</div>
<div class="clr"></div>


[/comments]

[albums-comments]

<div class="panel">
<ul class="tabs">
<li>
<a class="al_tab" href="/albums/{user-id}" onclick="Page.Go(this.href); return false;">Все</a>
</li>

<li class="cur">
<a class="al_tab" href="/albums/view/{aid}" onclick="Page.Go(this.href); return false;">{album-name}</a>
</li>

<li>
<a class="al_tab" href="/albums/comments/{user-id}" onclick="Page.Go(this.href); return false;">Комментарии</a>
</li>
[not-owner]
<li>
<a class="al_tab" href="/id{user-id}" onclick="Page.Go(this.href); return false;">К странице {name}</a>
</li>[/not-owner]
</ul>
</div>
<div class="clr"></div>

[/albums-comments]
