<div class="autowr" style="margin-bottom: 50px;">
<div style="margin-top:20px;"></div>
<div id="my_sub_menu">
  <a href="/groups" onClick="Page.Go(this.href); return false;"><b>Сообщества</b></a>
  <a href="/groups?act=admin" onClick="Page.Go(this.href); return false;"><b>Управление сообществами</b></a>
  <a href="/groups" onClick="groups.createbox(); return false"><b>Создать сообщество</b></a>
</div>
[no]<div class="info_center"><br /><br />
Вы пока не состоите ни в одном сообществе. 
<br /><br />
Вы можете <a href="/groups" onClick="groups.createbox(); return false">создать сообщество</a> или воспользоваться <a href="/" onClick="gSearch.open_tab(); gSearch.select_type('4', 'по сообществам'); return false" id="se_link">поиском по сообществам</a>.<br /><br /><br />
</div>[/no]
<div id="random_sq">[yes]Вы состоите в {num}[/yes][no]Вы не состоите ни в одном сообществе.[/no]</div>