<link href="/css/index.css" rel="stylesheet"><script type="text/javascript">$(document).ready(function(){	music.jPlayerInc();	[search-tab]$('#page').css('min-height', '444px');	$(window).scroll(function(){		if($(window).scrollTop() > 103)			$('.search_sotrt_tab').css('position', 'fixed').css('margin-top', '-80px');		else			$('.search_sotrt_tab').css('position', 'absolute').css('margin-top', '39px');	});[/search-tab]	myhtml.checked(['{checked-online}', '{checked-user-photo}']);		var query = $('#query_full').val();	if(query == 'Начните вводить любое слово или имя...')		$('#query_full').css('color', '#c1cad0');});</script><link href="https://fonts.googleapis.com/css?family=Lobster" rel="stylesheet"><div id="utilizatori"><div id="pagina"><table border="0" width="954" style="margin-top:12px;"><tbody><tr><td width="184"><div id="titlu"><a href="/?go=search"> <p class="shadowtext">Поиск:</p> </a></div></td><td width="270"><div class="search"><input type="text" placeholder="{query}" class="input" id="query_full" 	onBlur="if(this.value==''){this.value='Введите любое слово или имя...';this.style.color = '#c1cad0';}" 	onFocus="if(this.value=='Введите любое слово или имя...'){this.value='';this.style.color = '#000'}" 	onKeyPress="if(event.keyCode == 13)gSearch.go();"maxlength="65" /><input type="hidden" value="{type}" id="se_type_full" /><div onClick="gSearch.go(); return false" class="bt"></div><br><div class="html_checkbox" id="user_photo" onClick="myhtml.checkbox(this.id); gSearch.go();"><p class="shadowtext">Только с фото</p></div><br><div class="search_clear" style="margin-top:60px"></div></div></div></td>		  <td width="600"> <div class="menu"></div>	</td></tr></tbody></table> </div></div><div id="white_bar" style="margin-bottom: 5px;"><div id="pagina"><h3><a href="/?{query-people}" onClick="Page.Go(this.href); return false;"><br>Все Писатели</h3> </a> <div id="white_bar_1"></div><div id="white_bar_people">{user_new}		</div></div><div id="white_bar" style="margin-bottom: 5px;">	<div id="white_bar_people">		[search-tab]			<class=""><a href="/?go=search{query-notes}&isTop=true" onClick="Page.Go(this.href); return false;"><h8><b>Топ 50 писателей</b></h8></a><br><br><div class="html_checkbox" id="online" onClick="myhtml.checkbox(this.id); gSearch.go();"><h8>Кто онлайн?</h8></div><br><br>		 <select name="country" id="country" class="inpst search_sel" onChange="Profile.LoadCity(this.value); gSearch.go();"><option value="0">Страна</option>{country}</select><img src="{theme}/images/loading_mini.gif" alt="" class="load_mini" id="load_mini" />		 <select name="city" id="select_city" class="inpst search_sel" onChange="gSearch.go();"><option value="0">Город</option>{city}</select>		 <select name="sex" id="sex" class="inpst search_sel" onChange="gSearch.go();"><option value="0">Пол</option>{sex}</select>		 <select name="day" class="inpst search_sel" id="day" onChange="gSearch.go();"><option value="0">День рождения</option>{day}</select>		 <select name="month" class="inpst search_sel" id="month" onChange="gSearch.go();"><option value="0">Месяц рождения</option>{month}</select>		 <select name="year" class="inpst search_sel" id="year" onChange="gSearch.go();"><option value="0">Год рождения</option>{year}</select>		[/search-tab]	</div></div></div><div id="meniu_profil"><div class="all" style="width: 1200px;"><ul class="tabs" style="    width: 100px;    float: left;"> </ul><ul class="tabs" style="    width: 1154px;"> <li class=""><a href="/?go=search{query-notes}" onClick="Page.Go(this.href); return false;"><h8><b>Новые публикации</b></h8></a></li>	<li><div class="html_checkbox {html_checked_oneditor}" id="oneditor" onClick="gSearch.chEditor();"><h8>Все редакторы</h8></div></li> <li><div class="html_checkbox {html_checked_onspisok}" id="onspisok" onClick="gSearch.chSpisok();"><h8>Вывод списком</h8></div></li>  <li class=""><a href="/?go=search{query-notes}&ischanr=true" onClick="Page.Go(this.href); return false;"><h8><b>Публикации по жанрам</b></h8></a></li>    <li class=""><a href="/?go=search{query-notes}&isform=true" onClick="Page.Go(this.href); return false;"><h8><b>Публикации по формам</b></h8></a></li>  <li class=""><a href="/?go=search{query-notes}&islike=true" onClick="Page.Go(this.href); return false;"><h8><b>Публикации по лайкам</b></h8></a></li>    <li class=""><a href="/?go=search{query-notes}&rizens=true" onClick="Page.Go(this.href); return false;"><h8><b>Публикации по рецензиям</b></h8></a></li> <li class=""><a href="/?go=search{query-groups}" onClick="Page.Go(this.href); return false;"><h8><b>Объединения</b></h8></a></li> </ul></div></div><div class="autowr" style="margin-bottom: 50px;">  <div style="background-color:#fff;width:900px;border-radius:3px;">   {user_gifs}        </div></div><div class="autowr" style="margin-bottom: 50px;">