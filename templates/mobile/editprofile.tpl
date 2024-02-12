<script type="text/javascript" src="{theme}/js/profile_edit.js"></script>
<div class="autowr">

[general]
<div id="page_body">

<div id="sidebar_setting">
<h1>Редактировать страницу</h1>
<ul>
<a href="/editmypage" onClick="Page.Go(this.href); return false;"><li class="select"><img src="{theme}/images/setari/e_set.png">Мой профиль</li></a>
<a href="/editmypage/contact" onClick="Page.Go(this.href); return false;"><li><img src="{theme}/images/setari/e_set1.png">Контакты</li></a>
<a href="/editmypage/interests" onClick="Page.Go(this.href); return false;"><li><img src="{theme}/images/setari/e_set.png">Интересы</li></a>
</ul>
</div>

<div id="content_setting"> <h1>Мой профиль</h1><center><div class="line"></div><br>

<div class="err_yellow" id="info_save" style="display:none;font-weight:normal;"></div>

<table class="profilul_meu_edit">
<tbody>

<tr height="50px">
<td valign="top" width="130px">Пол</td>
<td valign="top" width="300px">
<select id="sex" class="input" onChange="sp.check()">
  <option value="0">- Не выбрано -</option>
  {sex}
 </select>
</td>
</tr>

<tr height="50px" width="130px" class="[sp-all]no_display[/sp-all]" id="sp_block">
<td valign="top">Семейное положение</td>
<td valign="top" width="300px" class="[user-m]no_display[/user-m]" id="sp_sel_m">
<select id="sp" class="input" onChange="sp.openfriends()">
  <option value="0">- Не выбрано -</option>
  <option value="1" [instSelect-sp-1]>Не женат</option>
  <option value="2" [instSelect-sp-2]>Есть подруга</option>
  <option value="3" [instSelect-sp-3]>Помовлен</option>
  <option value="4" [instSelect-sp-4]>Женат</option>
  <option value="5" [instSelect-sp-5]>Влюблён</option>
  <option value="6" [instSelect-sp-6]>Всё сложно</option>
  <option value="7" [instSelect-sp-7]>В активном поиске</option>
 </select>
</td>

<td valign="top" width="300px" class="[user-w]no_display[/user-w]" id="sp_sel_w">
<select id="sp_w" class="input" onChange="sp.openfriends()">
  <option value="0">- Не выбрано -</option>
  <option value="1" [instSelect-sp-1]>Не замужем</option>
  <option value="2" [instSelect-sp-2]>Есть друг</option>
  <option value="3" [instSelect-sp-3]>Помовлена</option>
  <option value="4" [instSelect-sp-4]>Замужем</option>
  <option value="5" [instSelect-sp-5]>Влюблена</option>
  <option value="6" [instSelect-sp-6]>Всё сложно</option>
  <option value="7" [instSelect-sp-7]>В активном поиске</option>
 </select>
</td>
</tr>

<tr height="50px">
<td valign="top" width="130px">День рождения</td>
<td valign="top">

	<select class="input" style="width:60px" id="day">
	<option>- День -</option>
	{user-day}
	</select>
	
	<select class="input" style="width:201px" id="month">
	<option>- Месяц -</option>
	{user-month}
	</select>
	
	<select class="input" style="width:87px" id="year">
	<option>- Год -</option>{user-year}
	</select>
	</td>
</tr>

<tr height="50px">
<td valign="top" width="130px">Cтрана</td> 
<td valign="top">
<select id="country" class="input" onChange="Profile.LoadCity(this.value); return false;">
  <option value="0">- Не выбрано -</option>
  {country}
 </select><img src="{theme}/images/loading_mini.gif" alt="" class="load_mini" id="load_mini" />
</td>
</tr>

<tr height="50px">
<span id="city"><td valign="top" width="130px">Местоположение</td>
<td valign="top">
<select id="select_city" class="input">
  <option value="0">- Не выбрано -</option>
  {city}
 </select><img src="{theme}/images/loading_mini.gif" alt="" class="load_mini" id="load_mini" />
</td></span>
</tr>

</tbody></table>

<table style="width:535px;">

<tbody><tr height="50px">
<td align="right"><input value="Сохранить" class="button_ons" style="background-color: #6ab260;margin-bottom: 30px;margin-top: 20px;" id="saveform" type="submit"></td>
</tr>


</tbody></table></center>

</div></div>
[/general]

[contact]
<div id="page_body">

<div id="sidebar_setting">
<h1>Редактировать страницу</h1>
<ul>
<a href="/editmypage" onClick="Page.Go(this.href); return false;"><li><img src="{theme}/images/setari/e_set.png">Мой профиль</li></a>
<a href="/editmypage/contact" onClick="Page.Go(this.href); return false;"><li class="select"><img src="{theme}/images/setari/e_set1.png">Контакты</li></a>
<a href="/editmypage/interests" onClick="Page.Go(this.href); return false;"><li><img src="{theme}/images/setari/e_set.png">Интересы</li></a>
</ul>
</div>

<div id="content_setting"> <h1>Контакты</h1><center><div class="line"></div><br>

<div class="err_yellow" id="info_save" style="display:none;font-weight:normal;"></div>

<table class="profilul_meu_edit">
<tbody>

<tr height="50px">
	<td valign="top" width="130px">Мобильный телефон</td>
	<td valign="top"><input type="text" class="input" id="phone" maxlength="50" value="{phone}"><span id="validPhone"></span></td>

</tr>

<tr height="50px">
	<td valign="top" width="130px">В контакте</td>
	<td valign="top"><input type="text" class="input" id="vk" maxlength="100" value="{vk}"><span id="validVk"></span></td>

</tr>

<tr height="50px">
	<td valign="top" width="130px">Одноклассники</td>
	<td valign="top"><input type="text" class="input" id="od" maxlength="100" value="{od}"><span id="validOd"></span></td>

</tr>

<tr height="50px">
	<td valign="top" width="130px">FaceBook</td>
	<td valign="top"><input type="text" class="input" id="fb" maxlength="100" value="{fb}"><span id="validFb"></span></td>

</tr>

<tr height="50px">
	<td valign="top" width="130px">Skype</td>
	<td valign="top"><input type="text" class="input" id="skype" maxlength="100" value="{skype}"><span id="validSkype"></span></td>

</tr>

<tr height="50px">
	<td valign="top" width="130px">ICQ</td>
	<td valign="top"><input type="text" class="input" id="icq" maxlength="9" value="{icq}"><span id="validIcq"></span></td>

</tr>

<tr height="50px">
	<td valign="top" width="130px">Личный сайт</td>
	<td valign="top"><input type="text" class="input" id="site" maxlength="100" value="{site}"><span id="validSite"></span></td>

</tr>


</tbody></table>

<table style="width:535px;">

<tbody><tr height="50px">
<td align="right"><input value="Сохранить" class="button_ons" style="background-color: #6ab260;margin-bottom: 30px;margin-top: 20px;" name="save" id="saveform_contact" type="submit"></td>
</tr>


</tbody></table></center>

</div></div>
[/contact]

[interests]
<div id="page_body">

<div id="sidebar_setting">
<h1>Редактировать страницу</h1>
<ul>
<a href="/editmypage" onClick="Page.Go(this.href); return false;"><li><img src="{theme}/images/setari/e_set.png">Мой профиль</li></a>
<a href="/editmypage/contact" onClick="Page.Go(this.href); return false;"><li><img src="{theme}/images/setari/e_set1.png">Контакты</li></a>
<a href="/editmypage/interests" onClick="Page.Go(this.href); return false;"><li class="select"><img src="{theme}/images/setari/e_set.png">Интересы</li></a>
</ul>
</div>

<div id="content_setting"> <h1>Интересы</h1><center><div class="line"></div><br>

<div class="err_yellow" id="info_save" style="display:none;font-weight:normal;"></div>

<table class="profilul_meu_edit">
<tbody>

<tr height="50px">
	<td valign="top" width="130px">Деятельность</td>
	<td valign="top"><textarea id="activity">{activity}</textarea>
	</td>
</tr>

<tr height="50px">
	<td valign="top" width="130px">Интересы</td>
	<td valign="top"><textarea id="interests">{interests}</textarea>
	</td>
</tr>

<tr height="50px">
	<td valign="top" width="130px">Любимая музыка</td>
	<td valign="top"><textarea id="music">{music}</textarea>
	</td>
</tr>

<tr height="50px">
	<td valign="top" width="130px">Любимые фильмы</td>
	<td valign="top"><textarea id="kino">{kino}</textarea>
	</td>
</tr>

<tr height="50px">
	<td valign="top" width="130px">Любимые книги</td>
	<td valign="top"><textarea id="books">{books}</textarea>
	</td>
</tr>

<tr height="50px">
	<td valign="top" width="130px">Любимые игры</td>
	<td valign="top"><textarea id="games">{games}</textarea>
	</td>
</tr>

<tr height="50px">
	<td valign="top" width="130px">Любимые цитаты</td>
	<td valign="top"><textarea id="quote">{quote}</textarea>
	</td>
</tr>

<tr height="50px">
	<td valign="top" width="130px">О себе</td>
	<td valign="top"><textarea id="myinfo">{myinfo}</textarea>
	</td>
</tr>

</tbody></table>

<table style="width:535px;">

<tbody><tr height="50px">
<td align="right"><input value="Сохранить" class="button_ons" style="background-color: #6ab260;margin-bottom: 30px;margin-top: 20px;" name="save" id="saveform_interests" type="submit"></td>
</tr>


</tbody></table></center>

</div></div>
[/interests]
[xfields]
<script type="text/javascript">
$(document).ready(function(){
	//Сохранение доп.полей
	$('#saveform_xfields').click(function(){
		butloading('saveform_xfields', '55', 'disabled', '');
		$.post('/index.php?go=editprofile&act=save_xfields', {{for-js-list}}, function(d){
			$('#info_save').html(lang_infosave).show();
			butloading('saveform_xfields', '55', 'enabled', lang_box_save);
		});
	});
});
</script>

<div id="page_body">

<div id="sidebar_setting">
<h1>Редактировать страницу</h1>
<ul>
<a href="/editmypage" onClick="Page.Go(this.href); return false;"><li><img src="{theme}/images/setari/e_set.png">Мой профиль</li></a>
<a href="/editmypage/contact" onClick="Page.Go(this.href); return false;"><li><img src="{theme}/images/setari/e_set1.png">Контакты</li></a>
<a href="/editmypage/interests" onClick="Page.Go(this.href); return false;"><li><img src="{theme}/images/setari/e_set.png">Интересы</li></a>
</ul>
</div>

<div id="content_setting"> <h1>Другое</h1><center><div class="line"></div><br>

<div class="err_yellow" id="info_save" style="display:none;font-weight:normal;"></div>

<table class="profilul_meu_edit">
<tbody>

{xfields}

</tbody></table>

<table style="width:535px;">

<tbody><tr height="50px">
<td align="right"><input value="Сохранить" class="button_ons" style="background-color: #6ab260;margin-bottom: 30px;margin-top: 20px;" name="save" id="saveform_xfields" type="submit"></td>
</tr>


</tbody></table></center>

</div></div>
[/xfields]