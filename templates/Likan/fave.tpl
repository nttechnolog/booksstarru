<a href="/u{user-id}" onClick="Page.Go(this.href); return false" id="user_{user-id}">

<div class="flip-container">
<div class="fave_del_ic" style="z-index:1000;" onMouseOver="myhtml.title('{user-id}', 'Удалить из закладок', 'fave_user_')" onClick="fave.del_box('{user-id}'); return false" id="fave_user_{user-id}"></div>
<div class="flipper">
<div class="front">
<div style="width:175px; height:135px;">
<div style="margin-left:35px;margin-top:25px;width:100px;height:100px;border-radius:50px;-webkit-border-radius:50px;-moz-border-radius:50px;float:left;background:url({ava}) no-repeat;background-size:100px 100px"></div>
{online}
</div><h3>{name}</h3>
</div>
<div class="back">
<div style="height:130px">
<h3>{name}</h3>
</div>
<div class="bar">Посмотреть профиль ></div>
</div>
</div>
</div>	
</a>