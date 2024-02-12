<div class="videos_pad">
 

<div class="videos_text">Категория видео</div>
  <select class="videos_input" type=text id="videocats" onChange="gSearch.LoadVideoCat(this.value);">  
{cats}
</select>

<div class="videos_text">Подкатегория видео</div>
<select class="videos_input" name="podvideo" id="podvideocats" type="text"><option value="0">Подкатегория</option>
</select>

</div>
<div class="clear"></div>

<div class="button_div fl_r" style="margin-right:10px;" id="box_but"><button onclick="videos.catsave({vid}); return false" id="box_butt_create">Сохранить</button></div>