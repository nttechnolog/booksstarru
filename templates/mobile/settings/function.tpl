<script type="text/javascript">
$(document).click(function(event){
	settings.event(event);
});


</script>
<style>
 a.button13 {
  display: inline-block;
  width: 15em;
  font-size: 80%;
  color: rgba(255,255,255,.9);
  text-shadow: #2e7ebd 0 1px 2px;
  text-decoration: none;
  text-align: center;
  line-height: 1.1;
  white-space: pre-line;
  padding: .7em 0;
  border: 1px solid;
  border-color: #60a3d8 #2970a9 #2970a9 #60a3d8;
  border-radius: 6px;
  outline: none;
  background: #60a3d8 linear-gradient(#89bbe2, #60a3d8 50%, #378bce);
  box-shadow: inset rgba(255,255,255,.5) 1px 1px;
 }
 a.button13:first-line{
  font-size: 170%;
  font-weight: 700;
 }
 a.button13:hover {
  color: rgb(255,255,255);
  background-image: linear-gradient(#9dc7e7, #74afdd 50%, #378bce);
 }
 a.button13:active {
  color: rgb(255,255,255);
  border-color: #2970a9;
  background-image: linear-gradient(#5796c8, #6aa2ce);
  box-shadow: none;
 }
</style>

<div class="autowr" style="margin-bottom: 50px;">
 <div style="margin-top:20px;"></div>
 <div id="my_sub_menu">
  <a href="/settings" onClick="Page.Go(this.href); return false;"><b>Общее</b></a>
  <a href="/settings/privacy" onClick="Page.Go(this.href); return false;"><b>Приватность</b></a>
  <a href="/settings/blacklist" onClick="Page.Go(this.href); return false;"><b>Черный список</b></a>
  <a href="/balance" onClick="Page.Go(this.href); return false;"><b>Баланс</b></a>
  <a href="/settings/function" onClick="Page.Go(this.href); return false;"><div><b>Платные услуги</b></div></a>
 </div>
<div class="clear" style="margin-top:25px"></div>

<div id="pricing-table" class="clear" >
<div class="margin_top_10" style="margin-left: 220px">

<div class="plan" style="height: 300px"><h3>Знакомство с автором<span><img src="/templates/Likan/images/lider.png" width="100px"></span></h3><a class="signup"></a>


 <p>Укажите ссылки или ваши данне для проверки</p>
 <input id="vipData" type="text" placeholder="Введите текст или ссылку..." style="height: 30px; padding-left: 10px; padding-right: 10px;border: 1px solid black; font-size: 15px">
 <div align="center" style="margin-top: 10px"><a class="button13" onclick="settings.addobshenie(); return false" id="obshenieokd">Сделать Заказ!</a><div></div>

 <ul style="margin: 10px"><li><b>200 баллов <br><b>Срок действия: 7 Дней</b></li></ul><br><div class="button_div fl_l {obshenie_offline}" style="margin-left: 73px;" id="obshenieok"></div><br></div>
 </div>

 <div class="plan" style="height: 300px"><h3>Автор публикуется<span><img src="/templates/Likan/images/vip.png" width="100px"></span></h3>

  <div align="center" style="margin-top: 111px"><a class="button13" onclick="settings.addvip(); return false" id="vipokd">Сделать Заказ!</a><div>
  <a class="signup"></a><ul style="margin: 10px"><li><b>999 баллов<br><b>Срок действия: навсегда</b></li></ul><br><div class="button_div fl_l {vip_offline}" style="margin-left: 73px;" id="vipok"></div><br></div></div>
 </div></div></div>
<div class="mgclr"></div>