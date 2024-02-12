<a href="/video{user-id}_{id}" onClick="videos.show({id}, this.href, '{close-link}'); return false">	
<div class="flip-container">
<div class="flipper">
<div class="front">
<div style="width:175px; height:135px;">
<div style="margin-left:1px;margin-top:1px;width:173px;height:130px;float:left;background:url({photo}) no-repeat;background-size:173px 130px"></div>
</div><h3>{title}</h3>
<h5>{comm}</h5>
</div>
<div class="back">
<div style="height:130px">
<h3>{title}</h3>
<h5>{comm}<br>Добавлено {date}</h5>
<input type="hidden" value="{id}" id="onevideo" />
</div>
<div class="bar">Посмотреть видео ></div>
</div>
</div>
</div>	
</a>