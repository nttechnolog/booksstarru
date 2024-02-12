<div class="miniature_box" style="z-index:10100;">
<div class="miniature_pos" style="width:600px;margin-top: 50px;"">
<div style="float:left; padding:20px; width:600px; background-color:#597ba5;  margin-left:-20px; margin-top:-20px; color:#fff; font-weight:bold;">
<span style="float:left;">Прикрепление карты</span>
<span style="float:right;"><a class="cursor_pointer fl_r" style="font-size:12px" onClick="viiBox.clos('maps', 1);">Закрыть</a></span></div>

<form method="get" action="https://www.google.com/maps" name="" target="mapframe">
<div>
<input name="output" type="hidden" value="embed">
<div style="float: left; padding:10px 20px; width: 600px; background-color: #eff1f3; margin-left: -20px; color: #45689a; z-index:103;">
<input name="saddr" value="{city}" placeholder="Поиск по названию города или улицы" class="videos_input" style="width:510px;margin-bottom: 0px;" maxlength="65" id="title_maps" />
<div style="margin-top:3px;margin-left:8px" class="button_div fl_r">
<button name="Submit" class="login-button">Поиск</button>
</div>
</div>
<div class="clear" style="height:15px"></div>
<iframe name="mapframe" width="600" height="400" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.com/maps?f=q&amp;source=s_q&amp;hl=ru&amp;geocode=&amp;q={city}&amp;aq=&amp;sll=0&amp;sspn=0&amp;t=m&amp;ie=UTF8&amp;hq=&amp;hnear={city}&amp;z=12&amp;ll=0&amp;output=embed"></iframe>

<div class="clear" style="height:10px"></div>
<div class="button_div fl_l"><button onClick="maps.m_box();viiBox.clos('maps', 1);location.reload();" id="mapsBox_sending">Прикрепить местоположение</button></div>
<div class="clear"></div>
</div>
</form>
</div>