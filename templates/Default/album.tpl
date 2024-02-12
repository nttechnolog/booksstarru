<div class="div_my">
<a href="/albums/view/{aid}" onClick="Page.Go(this.href); return false"><span id="cover_{aid}"><img src="{cover}" width="60" height="50"></span></a><div style="margin-top:-55px; margin-left:65px;">
<div><a href="/albums/view/{aid}" onClick="Page.Go(this.href); return false" id="albums_name_{aid}" style=" font-size:11pt;color:#a1a4a6;  width:100px;  height:20px; overflow: hidden;  text-overflow: ellipsis;">{name}</a></div> 

Обновлён {date}<br>{photo-num}, {comm-num}<br><span id="descr_{aid}">{descr}</span></div>
[owner]
<div style="float:right; margin-top:-35px;">

<div id="button_photo">
<div title="Редактировать" onClick="Albums.EditBox({aid}); return false" style="font-size:0px;cursor:pointer;border-width:0px;width:18px;height:18px;background:url({theme}/images/albums/edit.png)"></div>
</div>

<div id="button_photo">
<div title="Изменить обложку" onClick="Albums.EditCover({aid}); return false" style="font-size:0px;cursor:pointer;border-width:0px;width:18px;height:18px;background:url({theme}/images/albums/home.png)"></div>
</div>

<div id="button_photo">
<div title="Добавить фотографии" onClick="Page.Go('/albums/add/{aid}'); return false" style="font-size:0px;cursor:pointer;border-width:0px;width:18px;height:18px;background:url({theme}/images/albums/view.png)"></div>
</div>

<div id="button_photo">
<div title="Удалить" onClick="Albums.Delete({aid}, '{hash}'); return false" style="font-size:0px;cursor:pointer;border-width:0px;width:18px;height:18px;background:url({theme}/images/albums/trash.png)"></div>
</div>

</div>
[/owner]
</div>