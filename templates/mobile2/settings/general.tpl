<div class="pcont settings">
<div class="upanel bli_cont">
<div class="clr"></div>
<div class="margin_top_10"></div>
<h4>��������� ������</h4>
<div class="infobl err_red no_display pass_errors" id="err_pass_1" style="font-weight:normal;">������ �� ������, ��� ��� ������� ������ ����� �����������.</div>
<div class="infobl err_red no_display pass_errors" id="err_pass_2" style="font-weight:normal;">������ �� ������, ��� ��� ����� ������ �������� �����������.</div>
<div class="infobl err_yellow no_display pass_errors" id="ok_pass" style="font-weight:normal;">������ ������� ������.</div>


<div class="cont bli">
<dl>
<dt>������ ������:</dt>
<dd class="iwrap">
<input type="password" id="old_pass" class="text" maxlength="100" /><span id="validOldpass"></span>
</dd>
</dl>
<dl>
<dt>����� ������:</dt>
<dd class="iwrap">
<input class="text" type="password"  id="new_pass"><span id="validNewpass"></span>
</dd>
</dl>
<dl>
<dt>��������� ������:</dt>
<dd class="iwrap">
<input class="text" type="password"  id="new_pass2"><span id="validNewpass2"></span>
</dd>
</dl>
<div class="near_box">
<input class="btn" type="submit" value="�������� ������" onClick="settings.saveNewPwd(); return false" id="saveNewPwd">
</div>
</div>

<div class="margin_top_10"></div>
<h4>��������� �����</h4>
<div class="infobl err_red no_display name_errors" id="err_name_1" style="font-weight:normal;"><dt>����������� ������� � ������� ���������.</dt></div>
<div class="infobl err_yellow no_display name_errors" id="ok_name" ><dt>��������� ������� ���������.</dt></div>
<div class="cont bli">
<dl>
<dt>���:</dt>
<dd class="iwrap">
<input class="text" type="text"  id="name" value="{name}"/><span id="validName"></span>
</dd>
</dl>
<dl>
<dt>�������:</dt>
<dd class="iwrap">
<input class="text" type="text" id="lastname" value="{lastname}"/><span id="validLastname"></span>
</dd>
</dl>
<div class="near_box">

<input class="btn" type="submit" value="�������� ���" onClick="settings.saveNewName(); return false" id="saveNewName">
</div>
</div>
</div>
