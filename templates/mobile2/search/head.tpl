<script type="text/javascript">
$(document).ready(function(){
	if($('#query_full').val() == 'Начните вводить любое слово или имя')
		$('#query_full').val('');
});
</script>

<div class="pcont search">
<div class="panel">
<table>
<tbody>
<tr>
<td width="100%">
<div class="iwrap">
<input class="text" type="text" value="{query}" id="query_full">
</div>
</td>
<td class="last">
<input class="btn al_tab" type="submit" value="Искать" onclick="gSearch.go(); return false">
</td>
</tr>
</tbody>
</table>
<input type="hidden" value="1" id="se_type_full">

<ul class="tabs">
<li class="{activetab-1}">
<a class="al_tab" href="/?{query-people}" onclick="Page.Go(this.href); return false;">Люди</a>
</li>
<li class="{activetab-4}">
<a class="al_tab" href="/?go=search{query-groups}" onclick="Page.Go(this.href); return false;">Сообщества</a>
</li>
</ul>
</div>

<input type="hidden" value="{type}" id="se_type_full" />
[yes]<div class="summary">Найдено {count}</div>[/yes]