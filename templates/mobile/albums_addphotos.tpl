<script type="text/javascript" src="{theme}/js/albums.photos.js"></script>
<div class="autowr">
<div style="margin-top:20px;"></div>
<div id="my_sub_menu" style="width: 954px;">
 <a href="/albums/{user-id}" onClick="Page.Go(this.href); return false;">Все альбомы</a>
 <a href="/albums/view/{aid}" onClick="Page.Go(this.href); return false;">{album-name}</a>
 <a href="/albums/add/{aid}" onClick="Page.Go(this.href); return false;">Добавление фотографий</a>
</div>
<div class="clear"></div>
<div class="load_photo_quote">Поддерживаемые форматы файлов:  JPG, PNG и GIF.</div>
<div class="h1" id="l_text" style="display:none;">Загруженные фотографии</div>
<span id="photos"></span>
<div class="clear"></div>
<div class="load_photo_but" style="margin-left:245px;">
<div class="button_div fl_l"><button id="upload">Выбрать фотографию</button></div>
<div class="button_div_gray fl_l" style="margin-left:10px;"><button onClick="Page.Go('/albums/view/{aid}'); return false;">Просмотр альбома</button></div>
</div>
<input type="hidden" value="{aid}" id="aid" />