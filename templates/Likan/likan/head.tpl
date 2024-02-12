<script type="text/javascript">
$(document).ready(function(){
	music.jPlayerInc();
	[search-tab]$('#page').css('min-height', '444px');
	$(window).scroll(function(){
		if($(window).scrollTop() > 103)
			$('.search_sotrt_tab').css('position', 'fixed').css('margin-top', '-80px');
		else
			$('.search_sotrt_tab').css('position', 'absolute').css('margin-top', '39px');
	});[/search-tab]
	myhtml.checked(['{checked-online}', '{checked-user-photo}']);	
	var query = $('#query_full').val();
	if(query == 'Начните вводить любое слово или имя...')
		$('#query_full').css('color', '#c1cad0');
});
</script>

<div id="utilizatori">
<div id="pagina">
<table border="0" width="954" style="margin-top:12px;">
<tbody>
<tr>
<td width="184"><div id="titlu"><a href="/?go=search">Писатели</a></div></td><td width="270">
<div class="search">


<input type="text" value="{query}" class="input" id="query_full" 
	onBlur="if(this.value==''){this.value='Введите любое слово или имя...';this.style.color = '#c1cad0';}" 
	onFocus="if(this.value=='Введите любое слово или имя...'){this.value='';this.style.color = '#000'}" 
	onKeyPress="if(event.keyCode == 13)gSearch.go();"
maxlength="65" />
<input type="hidden" value="{type}" id="se_type_full" />

<div onClick="gSearch.go(); return false" class="bt"></div>

</div>

</div></td>		  
<td width="600"> 
<div class="menu">



</div>	

[search-tab]<div class="search_sotrt_tab" style="margin-left:460px;margin-top:300px;min-height:390px">
   
 <b>Основное</b>
 <div class="search_clear"></div>
   
 <div class="padstylej"><select name="country" id="country" class="inpst search_sel" onChange="Profile.LoadCity(this.value); gSearch.go();"><option value="0">Любая страна</option>{country}</select><img src="{theme}/images/loading_mini.gif" alt="" class="load_mini" id="load_mini" /></div>
 <div class="search_clear"></div>

 <div class="padstylej"><select name="city" id="select_city" class="inpst search_sel" onChange="gSearch.go();"><option value="0">Любой город</option>{city}</select></div>
 <div class="search_clear"></div>
 

 <div class="html_checkbox" id="online" onClick="myhtml.checkbox(this.id); gSearch.go();">Кто в сети?</div><br>
<br>
<br><div class="html_checkbox" id="user_photo" onClick="myhtml.checkbox(this.id); gSearch.go();">Только с фото</div><br><div class="search_clear" style="margin-top:60px"></div>
 
 <b>Пол</b>
 <div class="search_clear"></div>
  
 <div class="padstylej"><select name="sex" id="sex" class="inpst search_sel" onChange="gSearch.go();"><option value="0">Любой</option>{sex}</select></div>
 <div class="search_clear"></div>
 
  

 <b>День рождения</b>
 <div class="search_clear"></div>
 
 <div class="padstylej"><select name="day" class="inpst search_sel" id="day" onChange="gSearch.go();"><option value="0">Любой день</option>{day}</select>
 <div class="search_clear"></div>
  
 <select name="month" class="inpst search_sel" id="month" onChange="gSearch.go();"><option value="0">Любой месяц</option>{month}</select>
 <div class="search_clear"></div>
  
 <select name="year" class="inpst search_sel" id="year" onChange="gSearch.go();"><option value="0">Любой год</option>{year}</select></div>

</div>[/search-tab]
</td>
</tr>
</tbody>
</table> 
</div>
</div>

<div id="white_bar" style="margin-bottom: 5px;">
<div id="pagina">
<h3>Вы можете <br>узнать их</h3>  <div id="white_bar_1"></div>

<div id="white_bar_people">

{user_new}	
	
</div>



</div>
</div>

<div id="meniu_profil">
<div class="all">
<ul class="tabs">
<li class="active"><a href="/?{query-people}" onClick="Page.Go(this.href); return false;"><b>Писатели</b></a></li>
 <li class=""><a href="/?go=search{query-groups}" onClick="Page.Go(this.href); return false;"><b>Объединения</b></a></li>
 <li class=""><a href="/?go=search{query-audios}" onClick="Page.Go(this.href); return false;"><b>Аудиокниги</b></a></li>
 <li class=""><a href="/?go=search{query-videos}" onClick="Page.Go(this.href); return false;"><b>Видеообзоры</b></a></li>
 <li class=""><a href="/?go=search{query-notes}" onClick="Page.Go(this.href); return false;"><b>Официальные публикации</b></a></li>
</ul>
</div></div>

<div class="autowr" style="margin-bottom: 50px;">

<div id="random_sq">Писателей онлайн</div>