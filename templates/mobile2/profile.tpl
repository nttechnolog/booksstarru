	<div  id="mcont" class="mcont" >
	<div class="pcont profile">
								<div class="panel prof_panel">
	<img src="{ava}" class="u" align="left" />
	<div class="cont">
		<h2>{name} {lastname} {vip_status} <b>{online}</b></h2>
					<div class="status" id="new_status">{status-text}</div>
			<div class="info">{city}</div>
			</div>
</div></div></div>
<div class="clr"></div>
[not-owner][blacklist][privacy-msg]<button class="button" onClick="messages.new_({user-id}); return false" style="width:100%">�������� ���������</button>[/privacy-msg][/blacklist]
[no-friends][blacklist]<button class="button" onClick="friends.add({user-id}); return false" style="width:100%;margin-top:10px">�������� � ������</button>[/blacklist][/no-friends]
[yes-friends]<button class="button" onClick="friends.goDelte({user-id}); return false" style="width:100%;margin-top:10px">������ �� ������</button>[/yes-friends][/not-owner]
[owner]
<div class="panel prof_panel">
 <div class="prof_info">
<h4>
<span>������</span>
<div class="cb"></div>
</h4></div></div> 
<input type="text" class="inp" style="padding-bottom:4px;margin-bottom:10px;margin-top:10px" id="status_text" placeholder="������� ����� ����� ������ �������.." />
<button id="status_but" class="button" onClick="gStatus.set()">���������</button>
<a onclick="Page.Go(this.href); return false;"  href=""/" class="yes_status_text [no-status]no_display[/no-status]" onClick="gStatus.set(1); return false">�������</a>[/owner]
[albums]
<div class="panel prof_panel">
 <div class="prof_info">
<h4>
<span>������� <span>{albums-num}</span></span>
<div class="cb"></div>
</h4></div></div> 

{albums}[/albums]<br>
[privacy-info]
<div class="panel prof_panel">
 <div class="prof_info">
<h4>
<span>����������</span>
<div class="cb"></div>
</h4></div></div> 
[not-all-birthday]<dl class="pinfo">
<dt>���� ��������:</dt><dd>{birth-day}</dd>
</dl>[/not-all-birthday]
[sp]<dl class="pinfo">
<dt>�������� ���������:</dt><dd>{sp}</dd>
</dl>[/sp]
[not-contact-phone]<dl class="pinfo">
<dt>���. �������:</dt><dd>{phone}</dd>
</dl>[/not-contact-phone]
[/privacy-info]

<div class="panel prof_panel">
 <div class="prof_info">
<h4>
<span>��������</span>
<div class="cb"></div>
</h4></div></div> 
<div class="profii">
<ul class="page_menu">
 [not-owner]<li><a onclick="Page.Go(this.href); return false;"  href=""/" onClick="gifts.box('{user-id}'); return false">&nbsp;&nbsp;&nbsp;&nbsp;<em>��������� �������</em></a></li>
 [no-fave]<li><a onclick="Page.Go(this.href); return false;"  href=""/" onClick="fave.add({user-id}); return false" id="addfave_but"><b id="text_add_fave">&nbsp;&nbsp;&nbsp;&nbsp;<em>�������� � ��������</b></em></a></li>[/no-fave]
 [yes-fave]<li><a onclick="Page.Go(this.href); return false;"  href=""/" onClick="fave.delet({user-id}); return false" id="addfave_but"><b id="text_add_fave">&nbsp;&nbsp;&nbsp;&nbsp;<em>������� �� ��������</b></em></a></li>[/yes-fave]
 [no-subscription]<li><a onclick="Page.Go(this.href); return false;"  href=""/" onClick="subscriptions.add({user-id}); return false" id="lnk_unsubscription"><b id="text_add_subscription">&nbsp;&nbsp;&nbsp;&nbsp;<em>����������� �� ����������</b></em></a></li>[/no-subscription]
 [yes-subscription]<li><a onclick="Page.Go(this.href); return false;"  href=""/" onClick="subscriptions.del({user-id}); return false" id="lnk_unsubscription"><b id="text_add_subscription">&nbsp;&nbsp;&nbsp;&nbsp;<em>���������� �� ����������</b></em></a></li>[/yes-subscription][/not-owner]
 [owner]<li><a onclick="Page.Go(this.href); return false;"  href=""/editmypage">&nbsp;&nbsp;&nbsp;&nbsp;<em>������������� ��������</em></a></li>[/owner]
 </ul>
 <div class="panel prof_panel">
 <div class="prof_info">
<h4>
<span>������</span>
<div class="cb"></div>
</h4></div></div> 
<ul class="page_menu">
 [friends]<li><a onclick="Page.Go(this.href); return false;"  href=""/friends/{user-id}">&nbsp;&nbsp;&nbsp;&nbsp;<em>������ <span>{friends-num}</span></em></a></li>[/friends]
 [online-friends]<li><a onclick="Page.Go(this.href); return false;"  href=""/friends/online/{user-id}">&nbsp;&nbsp;&nbsp;&nbsp;<em>������ �� ����� <span>{online-friends-num}</span></em></a></li>[/online-friends]
 [subscriptions]<li><a onclick="Page.Go(this.href); return false;"  href=""/" onClick="subscriptions.all({user-id}, '', {subscriptions-num}); return false">&nbsp;&nbsp;&nbsp;&nbsp;<em>���������� ���� <span>{subscriptions-num}</span></em></a></li>[/subscriptions]
 [groups]<li><a onclick="Page.Go(this.href); return false;"  href=""/" onClick="groups.all_groups_user('{user-id}'); return false">&nbsp;&nbsp;&nbsp;&nbsp;<em>���������� �������� <span id="groups_num">{groups-num}</span></em></a></li>[/groups]
 [gifts]<li><a onclick="Page.Go(this.href); return false;"  href=""/gifts{user-id}">&nbsp;&nbsp;&nbsp;&nbsp;<em>������� <span>{gifts-text}</span></em></a></li>[/gifts]
 </ul>
</div>

 <div class="panel prof_panel">
 <div class="prof_info">
<h4>
<span>����� <span id="wall_rec_num">{wall-rec-num}</span></span>
<div class="cb"></div>
</h4></div></div> 

<div class="wallformbg">
<textarea id="wall_text" class="wall_fast_text inp" placeholder="[owner]��� � ��� ������?[/owner][not-owner]�������� ���������...[/not-owner]"></textarea>
<button class="button" onClick="wall.send({user-id}); return false">���������</button>
</div>
<div id="wall_records">{records}[no-records]<div class="wall_none" [privacy-wall]style="border-top:0px"[/privacy-wall]>�� ����� ���� ��� �� ����� ������.</div>[/no-records]</div>
[wall-link]<span id="wall_all_record"></span><div onClick="wall.page('{user-id}'); return false" id="wall_l_href" class="cursor_pointer"><div class="photo_all_comm_bg wall_upgwi" id="wall_link">� ���������� �������</div></div>[/wall-link]