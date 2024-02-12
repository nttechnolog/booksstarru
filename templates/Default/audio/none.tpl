<div class="autowr">
<div style="margin-top:20px;"></div>
<div id="my_sub_menu">
 <a href="/audio{uid}" onClick="Page.Go(this.href); return false;">Все аудиозаписи</a>
 [owner]<a href="/audio{uid}" onClick="audio.addBox(); return false;">Добавить аудиозапись</a>[/owner]
 <a href="/u{uid}" onClick="Page.Go(this.href); return false;">[not-owner]К странице {name}[/not-owner][owner]К моей странице[/owner]</a>
</div>

<div class="margin_top_10"></div><div class="allbar_title">[owner]У Вас еще нет аудиозаписей[/owner][not-owner]Нет аудиозаписей[/not-owner]</div>
<div class="info_center"><br /><br /><br />
[owner]Здесь Вы можете хранить Ваши аудиозаписи.<br />
Для того, чтобы загрузить Вашу первую аудиозапись, <a href="/audio{uid}" onClick="audio.addBox(); return false;">нажмите здесь</a>.[/owner]
[not-owner]У пользователя ещё нет аудиозаписей.[/not-owner]<br /><br /><br /><br />
</div>