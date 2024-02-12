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
<td width="184"><div id="titlu"><a href="/?go=search">Люди</a></div></td><td width="270">
<div class="search">


<input type="text" value="{query}" class="input" id="query_full" 
	onBlur="if(this.value==''){this.value='Начните вводить любое слово или имя...';this.style.color = '#c1cad0';}" 
	onFocus="if(this.value=='Начните вводить любое слово или имя...'){this.value='';this.style.color = '#000'}" 
	onKeyPress="if(event.keyCode == 13)gSearch.go();"
maxlength="65" />
<input type="hidden" value="{type}" id="se_type_full" />

<div onClick="gSearch.go(); return false" class="bt"></div>

</div>

</div></td>		  
<td width="600"> 
<div class="menu">
<div class="html_checkbox" id="online" onClick="myhtml.checkbox(this.id); gSearch.go();">сейчас на сайте</div>
<br>
<div class="html_checkbox" id="user_photo" onClick="myhtml.checkbox(this.id); gSearch.go();">с фотографией</div>
</div>	
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
<li class="active"><a href="/?{query-people}" onClick="Page.Go(this.href); return false;"><b>Люди</b></a></li>
 <li class=""><a href="/?go=search{query-groups}" onClick="Page.Go(this.href); return false;"><b>Сообщества</b></a></li>
 <li class=""><a href="/?go=search{query-audios}" onClick="Page.Go(this.href); return false;"><b>Аудиозаписи</b></a></li>
 <li class=""><a href="/?go=search{query-videos}" onClick="Page.Go(this.href); return false;"><b>Видеозаписи</b></a></li>
 <li class=""><a href="/?go=search{query-notes}" onClick="Page.Go(this.href); return false;"><b>Заметки</b></a></li>
</ul>
</div></div>

<div class="autowr" style="margin-bottom: 50px;">

<div id="random_sq">Пользователей онлайн</div>