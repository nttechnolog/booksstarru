<div id="page" class="mcont">
				<script type="text/javascript" src="/templates/mobile/js/profile_edit.js"></script>
				
				[general]
				<div class="panel">
<ul class="tabs">
<li class="buttonsprofileSec">
<a class="al_tab" href="/editmypage" onclick="Page.Go(this.href); return false;">��������</a>
</li>
<li class="{activetab-4}">
<a class="al_tab" href="/editmypage/contact" onclick="Page.Go(this.href); return false;">��������</a>
</li>
<li class="{activetab-4}">
<a class="al_tab" href="/editmypage/interests" onclick="Page.Go(this.href); return false;">��������</a>
</li>
</ul>
</div>

			
<div class="pcont settings">
<h4>����� ����������</h4>
<div class="upanel">
<h4><div class="infobl" id="info_save" style="display:none;font-weight:normal;"></div></h4>
<div class="cont bl_item">
<form onsubmit="return false;">
<dl>
<dt>���:</dt>
<dd>
 <select id="sex" class="inpst" onChange="sp.check()">
  <option value="0">- �� ������� -</option>
  {sex}
 </select>
</dd>
</dl>
<dl>
<dt>�������� ���������:</dt>
<dd>
 <div class="[user-m]no_display[/user-m]" id="sp_sel_m">
 <select id="sp"  onChange="sp.openfriends()">
  <option value="0">- �� ������� -</option>
  <option value="1" [instSelect-sp-1]>�� �����</option>
  <option value="2" [instSelect-sp-2]>���� �������</option>
  <option value="3" [instSelect-sp-3]>��������</option>
  <option value="4" [instSelect-sp-4]>�����</option>
  <option value="5" [instSelect-sp-5]>������</option>
  <option value="6" [instSelect-sp-6]>�� ������</option>
  <option value="7" [instSelect-sp-7]>� �������� ������</option>
 </select></div>
 <div class="no_display" id="sp_sel_w">
 <select id="sp_w"  onChange="sp.openfriends()">
  <option value="0">- �� ������� -</option>
  <option value="1" [instSelect-sp-1]>�� �������</option>
  <option value="2" [instSelect-sp-2]>���� ����</option>
  <option value="3" [instSelect-sp-3]>���������</option>
  <option value="4" [instSelect-sp-4]>�������</option>
  <option value="5" [instSelect-sp-5]>��������</option>
  <option value="6" [instSelect-sp-6]>�� ������</option>
  <option value="7" [instSelect-sp-7]>� �������� ������</option>
 </select></div>
<dl>
<dt>���� ��������:</dt>
<dd>
<table class="inp">
<tbody>
<tr>
<td style="width: 50px;">
<select id="day" class="inpst">
  <option>- ���� -</option>
{user-day}
</select>
</td>
<td>
 <select id="month" class="inpst">
  <option>- ����� -</option>
{user-month}
 </select>
</td>
<td class="last" style="width: 70px;">
 <select id="year" class="inpst">
{user-year}
</select>
</td>
</tr>
</tbody>
</table>
</dd>
<div class="near_box">
<input class="btn" type="submit" value="���������" id="saveform">
</div>
</form>
</div>
</div>
</div>[/general]


[contact]
				<div class="panel">
<ul class="tabs">
<li class="{activetab-4}">
<a class="al_tab" href="/editmypage" onclick="Page.Go(this.href); return false;">��������</a>
</li>
<li class="buttonsprofileSec">
<a class="al_tab" href="/editmypage/contact" onclick="Page.Go(this.href); return false;">��������</a>
</li>
<li class="{activetab-4}">
<a class="al_tab" href="/editmypage/interests" onclick="Page.Go(this.href); return false;">��������</a>
</li>
</ul>
</div>

<div class="clr"></div>
<div class="infobl" id="info_save" style="display:none;font-weight:normal;"></div>
<div class="clear"></div>
<div class="texta" style="margin-top:0px">��������� �������:</div><input type="text" id="phone" class="inp" maxlength="50" value="{phone}"  /><span id="validPhone"></span><div class="mgclr"></div>
<div class="texta">� ��������:</div><input type="text" id="vk" class="inp" maxlength="100" value="{vk}" /><span id="validVk"></span><div class="mgclr"></div>
<div class="texta">�������������:</div><input type="text" id="od" class="inp" maxlength="100" value="{od}" /><span id="validOd"></span><div class="mgclr"></div>
<div class="texta">FaceBook:</div><input type="text" id="fb" class="inp" maxlength="100" value="{fb}" /><span id="validFb"></span><div class="mgclr"></div>
<div class="texta">Skype:</div><input type="text" id="skype" class="inp" maxlength="100" value="{skype}" /><span id="validSkype"></span><div class="mgclr"></div>
<div class="texta">ICQ:</div><input type="text" id="icq" class="inp" maxlength="9" value="{icq}" /><span id="validIcq"></span><div class="mgclr"></div>
<div class="texta">������ ����:</div><input type="text" id="site" class="inp" maxlength="100" value="{site}" /><span id="validSite"></span><div class="mgclr"></div>
<div class="texta" style="margin-top:-10px">&nbsp;</div><div class="button_div fl_l"><button name="save" id="saveform_contact" class="button">���������</button></div><div class="mgclr"></div>
[/contact]

[interests]<div class="panel">
<ul class="tabs">
<li class="{activetab-4}">
<a class="al_tab" href="/editmypage" onclick="Page.Go(this.href); return false;">��������</a>
</li>
<li class="{activetab-4}">
<a class="al_tab" href="/editmypage/contact" onclick="Page.Go(this.href); return false;">��������</a>
</li>
<li class="buttonsprofileSec">
<a class="al_tab" href="/editmypage/interests" onclick="Page.Go(this.href); return false;">��������</a>
</li>
</ul>
</div>
<div class="clr"></div>
<div class="infobl" id="info_save" style="display:none;font-weight:normal;"></div>
<div class="clear"></div>
<div class="texta" style="margin-top:0px">������������:</div><textarea id="activity" class="inp" style="overflow:hidden;">{activity}</textarea><div class="mgclr"></div>
<div class="texta">��������:</div><textarea id="interests" class="inp" style="">{interests}</textarea><div class="mgclr"></div>
<div class="texta">������� ������:</div><textarea id="music" class="inp" style="">{music}</textarea><div class="mgclr"></div>
<div class="texta">������� ������:</div><textarea id="kino" class="inp" style="">{kino}</textarea><div class="mgclr"></div>
<div class="texta">������� �����:</div><textarea id="books" class="inp" style="">{books}</textarea><div class="mgclr"></div>
<div class="texta">������� ����:</div><textarea id="games" class="inp" style="">{games}</textarea><div class="mgclr"></div>
<div class="texta">������� ������:</div><textarea id="quote" class="inp" style="">{quote}</textarea><div class="mgclr"></div>
<div class="texta">� ����:</div><textarea id="myinfo" class="inp" style="">{myinfo}</textarea><div class="mgclr"></div>
<div class="texta" style="margin-top:-10px">&nbsp;</div><div class="button_div fl_l"><button name="save" id="saveform_interests" class="button">���������</button></div><div class="mgclr"></div>
[/interests]







			</div>
		</div>
			<div id="modalbox"></div>
	</div>