

<body>
<div id=page_reg> 
<a href="/"> <img src="{theme}/images/register/register_logo.png" alt="Социальная сеть писателей"/> </a>
 
>
 
<section id="form_reg">

<div id="step1">
<h1>Укажите ваши данные в качестве {sUserType}</h1>
<input type="text" maxlength="30" id="name" name="prenume" placeholder="Имя"/>
<input type="text" maxlength="30" id="lastname" style="margin-left:10px;" name="nume" placeholder="Фамилия"/>

<input type="submit" onClick="reg.step1(); return false" id="reg_lnk" value="Следующий шаг >>>"/><br/>

 <div class="html_checkbox" id="user_photo" onClick="reg.rues();" style="margin-top: 10px;"></div><div style="width: 220px;   padding-top: 9px;"><a href="/rules.html" target="_blank">Пользовательское соглашение</a></div>
 <div id="err_rules"></div>
 <div class="search_clear" style="margin-top:60px"></div>

 <script src="//ulogin.ru/js/ulogin.js"></script>
 <div id="uLogin" data-ulogin="display=panel;theme=classic;optional=first_name,last_name;providers=vkontakte,odnoklassniki,mailru,facebook;hidden=other;redirect_uri=http%3A%2F%2Fbooks-star.ru%2Fauth.php;mobilebuttons=0;"></div>
 
</div>




<div style="display:none;" id="step2">
<h1>Укажите Ваши дополнительные данные:</h1>
<label><select id="sex">
<option value="0">Пол </option>
<option value="1">Мужской</option>
<option value="2">Женский</option>
</select></label>

<label><select id="day" style='width:160px;'><option>Дата рождения</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option></select></label>
<label><select id="month" style='width:110px;margin-left:14px;'><option>Месяц</option><option value="1">Января</option><option value="2">Февраля</option><option value="3">Марта</option><option value="4">Апреля</option><option value="5">Мая</option><option value="6">Июня</option><option value="7">Июля</option><option value="8">Августа</option><option value="9">Сентября</option><option value="10">Октября</option><option value="11">Ноября</option><option value="12">Декабря</option></select></label>
<label><select id="year" style='width:88px;margin-left:14px;'><option>Год</option><option value="1930">1930</option><option value="1931">1931</option><option value="1932">1932</option><option value="1933">1933</option><option value="1934">1934</option><option value="1935">1935</option><option value="1936">1936</option><option value="1937">1937</option><option value="1938">1938</option><option value="1939">1939</option><option value="1940">1940</option><option value="1941">1941</option><option value="1942">1942</option><option value="1943">1943</option><option value="1944">1944</option><option value="1945">1945</option><option value="1946">1946</option><option value="1947">1947</option><option value="1948">1948</option><option value="1949">1949</option><option value="1950">1950</option><option value="1951">1951</option><option value="1952">1952</option><option value="1953">1953</option><option value="1954">1954</option><option value="1955">1955</option><option value="1956">1956</option><option value="1957">1957</option><option value="1958">1958</option><option value="1959">1959</option><option value="1960">1960</option><option value="1961">1961</option><option value="1962">1962</option><option value="1963">1963</option><option value="1964">1964</option><option value="1965">1965</option><option value="1966">1966</option><option value="1967">1967</option><option value="1968">1968</option><option value="1969">1969</option><option value="1970">1970</option><option value="1971">1971</option><option value="1972">1972</option><option value="1973">1973</option><option value="1974">1974</option><option value="1975">1975</option><option value="1976">1976</option><option value="1977">1977</option><option value="1978">1978</option><option value="1979">1979</option><option value="1980">1980</option><option value="1981">1981</option><option value="1982">1982</option><option value="1983">1983</option><option value="1984">1984</option><option value="1985">1985</option><option value="1986">1986</option><option value="1987">1987</option><option value="1988">1988</option><option value="1989">1989</option><option value="1990">1990</option><option value="1991">1991</option><option value="1992">1992</option><option value="1993">1993</option><option value="1994">1994</option><option value="1995">1995</option><option value="1996">1996</option><option value="1997">1997</option><option value="1998">1998</option><option value="1999">1999</option><option value="2000">2000</option><option value="2001">2001</option><option value="2002">2002</option><option value="2003">2003</option><option value="2004">2004</option><option value="2005">2005</option><option value="2006">2006</option><option value="2007">2007</option><option value="2008">2008</option><option value="2009">2009</option><option value="2010">2010</option><option value="2011">2011</option><option value="2012">2012</option><option value="2013">2013</option></select></label>	
<label>

<select id="country" onChange="Profile.LoadCity(this.value); return false;"><option value="0">Страна</option>{country}</select>
</label>
<span id="city" style="display:none;">
<select name="city" id="select_city"><option>Город</option></select>
</span>

<label><select id="user_genre" style='width:160px;'><option>Жанр</option>
{chanr}
</select></label>


<label><select id="user_form" style='width:160px;'><option>Форма</option>
{formt}
</select></label>

<img src="{theme}/images/loading_mini.gif" alt="" class="load_mini" id="load_mini" />



<input type="submit" onClick="reg.step2(); return false" value="Следующий шаг >>>"/>
</div>

<div style="display:none;" id="step3">
<h1>Данные авторизации</h1>
<input type="text" maxlength="30" id="email" placeholder="Электронная почта">
<input type="password" maxlength="30" id="new_pass" placeholder="Пароль"/>
<input type="password" maxlength="30" id="new_pass2" placeholder="Подтверждение пароля"/>

<input type="submit" onClick="reg.finish(); return false" value="Зарегистрируйся >"/>
</div>

</section>
</div>