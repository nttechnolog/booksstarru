<div id="data">
<div class="tmenuf">
 <a href="/support">[group=4]������� �� �������������[/group][not-group=4]��� �������[/not-group]</a>
</div>
[not-group=4]
<div style="margin-top:29px"></div>
<div class="note_add_bg support_bg">
����� �� ������ �������� ��� � ����� ��������, ��������� � <b>����� ������</b>.
<br>
<input type="text" 
	class="videos_input" 
	style="width:380px;margin-top:10px;color:#c1cad0" 
	maxlength="65" 
	id="title"
	value="����������, �������� ��������� � ������ �������.." 
	onblur="if(this.value==''){this.value='����������, �������� ��������� � ������ �������..';this.style.color = '#c1cad0';}" 
	onfocus="if(this.value=='����������, �������� ��������� � ������ �������..'){this.value='';this.style.color = '#000'}"
/>
<br>
<div class="input_hr" style="width:393px"></div>
<br>
<textarea 
	class="videos_input wysiwyg_inpt" 
	id="question" 
	style="width:380px;height:100px;color:#c1cad0"
	onblur="if(this.value==''){this.value='����������, ���������� � ����� �������� ���� ���������..';this.style.color = '#c1cad0';}" 
	onfocus="if(this.value=='����������, ���������� � ����� �������� ���� ���������..'){this.value='';this.style.color = '#000'}"
>����������, ���������� � ����� �������� ���� ���������..</textarea>
<div class="clear"></div>
<br>
<div class="button_div fl_l"><button class="button" onClick="support.send(); return false" id="send">���������</button></div>
<br>
<div class="button_div_gray fl_l margin_left" id="cancel"><button class="button" onClick="Page.Go('/u{uid}'); return false;">������</button></div>
<div class="clear"></div>
</div>
[/not-group]
[group=4]<div class="info_center"><br /><br /><br />�� ������ �� �����.<br /><br /><br /></div>[/group]
</div>