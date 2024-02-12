<div class="div_my" id="video_{id}">
<a href="/video{user-id}_{id}" onClick="videos.show({id}, this.href); return false"><img src="{photo}" width="60" height="50"></a><div style="margin-top:-55px; margin-left:65px;">
<div><a ref="/video{user-id}_{id}" id="video_title_{id}" onClick="videos.show({id}, this.href); return false" style="font-size:11pt;color:#a1a4a6;  width:100px;  height:20px; overflow: hidden;  text-overflow: ellipsis;"><b>{title}</b></a></div> 

Добавлено {date}<br>{comm}<br><span id="video_descr_{id}">{descr}</span></div>
[owner]
<div style="float:right; margin-top:-57px;">

<div id="button_photo">
<div title="Редактировать" onClick="videos.editbox({id}); return false" style="font-size:0px;cursor:pointer;border-width:0px;width:18px;height:18px;background:url({theme}/images/albums/edit.png)"></div>
</div>

<div id="button_photo">
<div title="Удалить" onClick="videos.delet({id}); return false" style="font-size:0px;cursor:pointer;border-width:0px;width:18px;height:18px;background:url({theme}/images/albums/trash.png)"></div>
</div>

</div>
[/owner]
<input type="hidden" value="{id}" id="onevideo" />
</div>