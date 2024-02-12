{url_img}

<div id="jquery_jplayer"></div>
<input type="hidden" id="teck_id" value=""/>
<input type="hidden" id="teck_prefix" value=""/>
<input type="hidden" id="typePlay" value="standart"/>


<DIV id="profile">
    <DIV class="contect">
        <DIV id="pagina">
            <DIV id="page_body">
                <TABLE id="wrapper">


                    <TBODY>


                    <TR>


                        <TD vAlign="top" width="130" height="155"><span id="ava"><A href=""
                                                                                    onclick="Photo.Profile('{user-id}', '{user-ph}'); return false">
<DIV style="BACKGROUND: url({ava}) no-repeat; background-size: 167px" class="p1" id="ava_{user-id}"
     alt="{name} {lastname}" title="Увеличить"></DIV></A></span>
                            <DIV id="p2">
                                {userType}
                            </DIV>


                        </TD>


                        <TD vAlign="top" width="670">
                            <DIV id="c789456" style="    display: inline-block;"><p
                                        class="shadowtext">{name} {lastname}</p></DIV>
                            <DIV style="    text-shadow: 1px 1px 2px black, 0 0 1em red;    padding-bottom: 10px;    color: white;    font-size: 1em;    width: 180px;    display: inline-block;padding-left: 15px;    ">{user-form}</DIV>

                            [owner]
                            <div class="set_status_bg no_display" id="set_status_bg" style="z-index:9999;">
                                <input type="text" id="status_text" class="status_inp" value="{status-text}"
                                       style="width:500px;" maxlength="255"
                                       onKeyPress="if(event.keyCode == 13)gStatus.set()"/>
                                <div class="fl_l status_text"><span class="no_status_text [status]no_display[/status]">Введите здесь ваши мысли</span><a
                                            href="/" class="yes_status_text [no-status]no_display[/no-status]"
                                            onClick="gStatus.set(1); return false">Удалить заметку</a></div>
                                [status]
                                <div class="button_div_gray fl_r status_but margin_left">
                                    <button>Отмена</button>
                                </div>
                                [/status]
                                <div class="button_div fl_r status_but">
                                    <button id="status_but" onClick="gStatus.set()">Опубликовать</button>
                                </div>
                            </div>
                            [/owner]

                            [owner]
                            <div class="status">
                                <div><a href="/" id="new_status"
                                        onClick="gStatus.open(); return false">[blacklist]{status-text}[/blacklist]</a>
                                </div>
                                <span id="tellBlockPos"></span>
                                <div class="status_tell_friends no_display">
                                    <div class="status_str"></div>
                                    <div class="html_checkbox" id="tell_friends"
                                         onClick="myhtml.checkbox(this.id); gStatus.startTell()">Рассказать другим
                                        писателям
                                    </div>
                                </div>
                                <a href="#" onClick="gStatus.open(); return false" id="status_link"
                                   [status]class="no_display" [/status]>установить статус</a>
                            </div>
                            [/owner]
                            [not-owner][status][blacklist]
                            <div class="status">
                                {status-text}
                            </div>
                            [/blacklist][/status][/not-owner]

                            <DIV id="locality"><font size="2" color="gray"><IMG
                                            src="{theme}/images/pages/location.png">{city}, {country} - {online}</font>
                            </DIV>
                            <div style="margin-top:10px"></div>
                            <BR></TD>
                        <TD vAlign="top" width="250">


                            [owner]

                            <a class="fm_img_border" onclick="doLoad.data(1); fon.addbox()">
                                <div><img width="16" src="{theme}/images/fonn.png"/>Фон страницы</div>
                            </a>
                            <div style="position: relative;margin-top: 20px;">

                                <a class="fm_img_border" href="/editmypage"
                                   onClick="Page.Go(this.href); $('.profileMenu').hide(); return false;"><img
                                            onmouseover="myhtml.title('104', 'Редактировать страницу', 'newBBlock1')"
                                            id="newBBlock1104" width="16"
                                            src="{theme}/images/icons/editmypages.png"/></a>
                                <a class="fm_img_border" href="/editmypage"
                                   onClick="Page.Go(this.href); $('.profileMenu').hide(); return false;"><img
                                            onmouseover="myhtml.title('104', 'Редактировать страницу', 'newBBlock1')"
                                            id="newBBlock1104" width="16"
                                            src="{theme}/images/icons/editmypages.png"/></a>

                                <a class="fm_img_border"
                                   onclick="Profile.LoadPhoto(); $('.profileMenu').hide(); return false;"><img
                                            width="16"
                                            onmouseover="myhtml.title('101', 'Загрузить фотографию', 'newBBlock1')"
                                            id="newBBlock1101" src="{theme}/images/icons/upload.png"></a>
                                <a class="fm_img_border" onclick="Profile.miniature(); return false;"><img width="16"
                                                                                                           onmouseover="myhtml.title('777', 'Изменить миниатюру', 'newBBlock1')"
                                                                                                           id="newBBlock1777"
                                                                                                           src="{theme}/images/icons/miniature.png"></a>
                                <a class="fm_img_border"
                                   onClick="Profile.DelPhoto(); $('.profileMenu').hide(); return false;"><img width="16"
                                                                                                              onmouseover="myhtml.title('778', 'Удалить фотографию', 'newBBlock1')"
                                                                                                              id="newBBlock1778"
                                                                                                              src="{theme}/images/icons/delete_foto.png"></a>
                            </div>
                            [/owner]


                            [not-owner]
                            <div style="position: relative;margin-top: 20px;">
                                [blacklist][privacy-msg]<a class="fm_img_border" href="/"
                                                           onClick="messages.new_({user-id}); return false"><img
                                            onmouseover="myhtml.title('104', 'Отправить сообщение', 'newBBlock1')"
                                            id="newBBlock1104" width="16" src="{theme}/images/icons/message.png"/></a>[/privacy-msg][/blacklist]
                                [no-friends][blacklist]<a class="fm_img_border" href="/"
                                                          onClick="friends.add({user-id}); return false"><img width="16"
                                                                                                              onmouseover="myhtml.title('101', 'Добавить в единомышленники', 'newBBlock1')"
                                                                                                              id="newBBlock1101"
                                                                                                              src="{theme}/images/icons/frends.png"></a>[/blacklist][/no-friends]
                                [yes-friends]<a class="fm_img_border" href="/"
                                                onClick="friends.delet({user-id}, 1); return false"><img width="16"
                                                                                                         onmouseover="myhtml.title('102', 'Убрать из друзей', 'newBBlock1')"
                                                                                                         id="newBBlock1102"
                                                                                                         src="{theme}/images/icons/frends_no.png"></a>[/yes-friends]

                                [blacklist][no-subscription]<a class="fm_img_border" href="/"
                                                               onClick="subscriptions.add({user-id}); return false"
                                                               id="lnk_unsubscription"><span id="text_add_subscription"><img
                                                onmouseover="myhtml.title('105', 'Подписаться на обновления', 'newBBlock1')"
                                                id="newBBlock1105" width="16"
                                                src="{theme}/images/icons/reload.png"/></span><img
                                            src="{theme}/images/loading_mini.gif" alt="" id="addsubscription_load"
                                            class="loady no_display" style="margin-right:-13px"/></a>[/no-subscription][/blacklist]
                                [yes-subscription]<a class="fm_img_border" href="/"
                                                     onClick="subscriptions.del({user-id}); return false"
                                                     id="lnk_unsubscription"><span id="text_add_subscription"><img
                                                onmouseover="myhtml.title('105', 'Отписаться от обновлений', 'newBBlock1')"
                                                id="newBBlock1105" width="16"
                                                src="{theme}/images/icons/power.png"/></span><img
                                            src="{theme}/images/loading_mini.gif" alt="" id="addsubscription_load"
                                            class="loady no_display" style="margin-right:-13px"/></a>[/yes-subscription]
                                [no-fave]<a class="fm_img_border" href="/" onClick="fave.add({user-id}); return false"
                                            id="addfave_but"><span id="text_add_fave"><img
                                                onmouseover="myhtml.title('106', 'Добавить в закладки', 'newBBlock1')"
                                                id="newBBlock1106" width="16"
                                                src="{theme}/images/icons/fave.png"/></span><img
                                            src="{theme}/images/loading_mini.gif" alt="" id="addfave_load"
                                            class="loady no_display"/></a>[/no-fave]
                                [yes-fave]<a class="fm_img_border" href="/"
                                             onClick="fave.delet({user-id}); return false" id="addfave_but"><span
                                            id="text_add_fave"><img
                                                onmouseover="myhtml.title('106', 'Удалить из закладок', 'newBBlock1')"
                                                id="newBBlock1106" width="16" src="{theme}/images/icons/fave_del.png"/></span><img
                                            src="{theme}/images/loading_mini.gif" alt="" id="addfave_load"
                                            class="loady no_display"/></a>[/yes-fave]
                                [no-blacklist]<a class="fm_img_border" href="/"
                                                 onClick="settings.addblacklist({user-id}); return false"
                                                 id="addblacklist_but"><span id="text_add_blacklist"><img
                                                onmouseover="myhtml.title('103', 'Заблокировать писателя', 'newBBlock1')"
                                                id="newBBlock1103" width="16"
                                                src="{theme}/images/icons/power.png"></span> <img
                                            src="{theme}/images/loading_mini.gif" alt="" id="addblacklist_load"
                                            class="no_display"/></a>[/no-blacklist]
                                [yes-blacklist]<a class="fm_img_border" href="/"
                                                  onClick="settings.delblacklist({user-id}, 1); return false"
                                                  id="addblacklist_but"><span id="text_add_blacklist"><img
                                                onmouseover="myhtml.title('103', 'Разблокировать писателя', 'newBBlock1')"
                                                id="newBBlock1103" width="16"
                                                src="{theme}/images/icons/over_off.png"></span> <img
                                            src="{theme}/images/loading_mini.gif" alt="" id="addblacklist_load"
                                            class="no_display"/></a>[/yes-blacklist]
                            </div>

                            [/not-owner]
                            [owner]
                            <A class="button_info" title="Информация" name="info">Информация&nbsp;&nbsp;&nbsp;<IMG
                                        src="{theme}/images/arrow.png"></A>
                            [/owner]

                            [not-owner]
                            <A class="button_info" style="width: 201px;" title="Информация" name="info">Информация&nbsp;&nbsp;&nbsp;<IMG
                                        src="{theme}/images/arrow.png"></A>
                            [/not-owner]

                            <DIV id="w1">
                                <UL>
                                    <LI><A href="/"
                                           onClick="Profile.LoadPhoto(); $('.profileMenu').hide(); return false;">Изменить
                                            фотографию </A></LI>
                                </UL>
                            </DIV>
                        </TD>
                    </TR>
                    </TBODY>
                </TABLE>
                </TABLE></DIV>
        </DIV>
        <DIV id="info">
            <DIV id="pagina">
                <TABLE border="0">
                    <TBODY>
                    <TR>
                        <TD vAlign="top" rowSpan="2">
                            <H2><IMG src="{theme}/images/pages/a_icon.png">&nbsp; Основная информация</H2>
                            <DIV style="MARGIN-RIGHT: 30px" class="line_info"></DIV>
                            <TABLE width="462">
                                <TBODY>


                                [not-all-birthday]
                                <TR>
                                    <TD>День рождения</TD>
                                    <TD>{birth-day}</TD>
                                </TR>
                                [/not-all-birthday]


                                [not-all-country]
                                <div class="flpodtext">Страна</div>
                                <div class="flpodinfo"><a href="/?go=search&country={country-id}"
                                                          onClick="Page.Go(this.href); return false">{country}</a></div>
                                [/not-all-country]
                                [not-all-city]
                                <div class="flpodtext">Город</div>
                                <div class="flpodinfo"><a href="/?go=search&country={country-id}&city={city-id}"
                                                          onClick="Page.Go(this.href); return false">{city}</a></div>
                                [/not-all-city]
                                [privacy-info][sp]
                                <TR>
                                    <TD vAlign=top width=140>Семейное положение</TD>
                                    <TD>{sp}</TD>
                                </TR>
                                [/sp][/privacy-info]

                                <TR>
                                    <TD vAlign=top width=140>Знак зодиака</TD>
                                    <TD>{zodiak}</TD>
                                </TR>

                                </TBODY>
                            </TABLE>
                        <TD></TD>
                        [privacy-info]
                        <TD vAlign="top">
                            <H2><IMG src="{theme}/images/pages/a_icon1.png">&nbsp;Личная информация</H2>
                            <DIV class="line_info"></DIV>
                            <TABLE width="462">
                                <TBODY>
                                [not-info-activity]
                                <TR>
                                    <TD vAlign="top" width="140">Деятельность</TD>
                                    <TD>{activity}</TD>
                                </TR>
                                [/not-info-activity]
                                [not-info-interests]
                                <TR>
                                    <TD vAlign="top" width="140">Интересы</TD>
                                    <TD>{interests}</TD>
                                </TR>
                                [/not-info-interests]
                                [not-info-music]
                                <TR>
                                    <TD vAlign="top" width="140">Любимая музыка</TD>
                                    <TD>{music}</TD>
                                </TR>
                                [/not-info-music]
                                [not-info-kino]
                                <TR>
                                    <TD vAlign="top" width="140">Любимые фильмы</TD>
                                    <TD>{kino}</TD>
                                </TR>
                                [/not-info-kino]
                                [not-info-books]
                                <TR>
                                    <TD vAlign="top" width="140">Любимые книги</TD>
                                    <TD>{books}</TD>
                                </TR>
                                [/not-info-books]
                                [not-info-games]
                                <TR>
                                    <TD vAlign="top" width="140">Любимые игры</TD>
                                    <TD>{games}</TD>
                                </TR>
                                [/not-info-games]
                                [not-info-quote]
                                <TR>
                                    <TD vAlign="top" width="140">Любимые цитаты</TD>
                                    <TD>{quote}</TD>
                                </TR>
                                [/not-info-quote]
                                [not-info-myinfo]
                                <TR>
                                    <TD vAlign="top" width="140">О себе</TD>
                                    <TD>{myinfo}</TD>
                                </TR>
                                [/not-info-myinfo]
                                </TBODY>
                            </TABLE>
                        </TD>

                    </TR>

                    <TR>
                        <TD></TD>
                        [not-block-contact]
                        <TD vAlign="top">
                            <H2><IMG src="{theme}/images/pages/a_icon2.png">&nbsp;Контактная информация</H2>
                            <DIV class="line_info"></DIV>
                            <TABLE width="462">
                                <TBODY>

                                [not-contact-phone]
                                <TR>
                                    <TD vAlign="top" width="140">Моб. телефон</TD>
                                    <TD>{phone}</TD>
                                </TR>
                                [/not-contact-phone]
                                [not-contact-vk]
                                <TR>
                                    <TD vAlign="top" width="140">В контакте</TD>
                                    <TD>{vk}</TD>
                                </TR>
                                [/not-contact-vk]
                                [not-contact-od]
                                <TR>
                                    <TD vAlign="top" width="140">Одноклассники</TD>
                                    <TD>{od}</TD>
                                </TR>
                                [/not-contact-od]
                                [not-contact-fb]
                                <TR>
                                    <TD vAlign="top" width="140">FaceBook</TD>
                                    <TD>{fb}</TD>
                                </TR>
                                [/not-contact-fb]
                                [not-contact-skype]
                                <TR>
                                    <TD vAlign="top" width="140">Skype</TD>
                                    <TD><a href="skype:{skype}">{skype}</a></TD>
                                </TR>
                                [/not-contact-skype]
                                [not-contact-icq]
                                <TR>
                                    <TD vAlign="top" width="140">ICQ</TD>
                                    <TD>{icq}</TD>
                                </TR>
                                [/not-contact-icq]
                                [not-contact-site]
                                <TR>
                                    <TD vAlign="top" width="140">Веб-сайт</TD>
                                    <TD>{site}</TD>
                                </TR>
                                [/not-contact-site]

                                </TBODY>
                            </TABLE>
                        </TD>
                        [/not-block-contact]
                    </TR>
                    </TBODY>
                </TABLE>
                [/privacy-info]
            </DIV>
        </DIV>
    </DIV>
</DIV>

<DIV id="meniu_profil">
    <DIV class="all">
        <UL class="tabs" style="width: 1100px">


            <div class="profile_rate_pos">
                <LI><A title="Новые заявки" onClick="Page.Go('index.php?go=editor'); return false"><font size="3"
                                                                                                         color="gray">
                            <h8>Новые заявки</h8>
                        </font></A></LI>
                <LI><A title="В работе" onClick="Page.Go('index.php?go=editor&act=inprogress'); return false"><font
                                size="3" color="gray">
                            <h8>В работе</h8>
                        </font></A></LI>
                <LI><A title="На доработку" onClick="Page.Go('index.php?go=editor&act=revision'); return false"><font
                                size="3"
                                color="gray">
                            <h8>На доработку</h8>
                        </font></A></LI>
                <LI><A title="Выполненные заявки" onClick="Page.Go('index.php?go=editor&act=requestComplete'); return false"><font size="3"
                                                                                                     color="gray">
                            <h8>Выполненные заявки</h8>
                        </font></A></LI>
                <LI><A title="Сообщения" onClick="Page.Go('index.php?go=editor&act=message'); return false"><font size="3" color="gray">
                            <h8>Сообщения</h8>
                        </font></A></LI>

        </UL>
    </DIV>
</DIV>

<div id="tableDataRequest" style="width: 945px; margin: 0 auto; margin-top: -15px;">
    {cnt_new_request}
    <table class="newRequestTable" style="margin: 0 auto; margin-top: 20px;">
        <tbody>
        <tr>
            <th style="width: 30px; height: 20px;">№</th>
            <th style="width: 220px">Название произведения</th>
            <th style="width: 220px">Автор</th>
            <th>Стоимость</th>
            <th>Кол. символов</th>
            <th>Действие</th>
        </tr>
        {tableData}
        </tbody>
    </table>
    <div style="height: 40px"></div>
</div>

<div id="tableDataComplateRequest" style="width: 945px; margin: 0 auto; margin-top: -15px; display: none;">
    {cnt_complete_request}
    <table class="newRequestTable" style="margin: 0 auto; margin-top: 20px;">
        <tbody>
        <tr>
            <th style="width: 30px; height: 20px;">№</th>
            <th style="width: 220px">Название произведения</th>
            <th style="width: 220px">Автор</th>
            <th>Стоимость</th>
            <th>Кол. символов</th>
        </tr>
        {tableCompleteData}
        </tbody>
    </table>
    <div style="height: 40px"></div>
</div>

<h1 id="titleComplete" style="display: none; text-align: center; margin-top: -20px; margin-bottom: 10px;">Форма
    выполнения заказа:</h1>
<div id="dataRequestComplete"
     style="position: relative; width: 700px; height: 300px; border: 2px white solid; display: none; margin: 0 auto; background-color: lightgray;">
    <table style="position: absolute; text-align: left; top: 40%; left: 25%;">
        <tbody>
        <tr>
            <td>{img_dwnld}</td>
            <td>{title}</td>
            <td>
                <div class="button_div fl_l">
                    <button id="uploadButton">Добавить документ</button>
                </div>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>{size} {update_date}</td>
            <td><a href="#">Редактировать</a></td>
        </tr>
        </tbody>
    </table>
    <div id="uploadForm" style="position: absolute; bottom: 20px; left: 37%; display: none;">
        <form action="{path}" method="post" enctype="multipart/form-data">
            <input type="file" name="filename"><br>
            <input style="margin-top: 5px; margin-left: 33%;" type="submit" value="Загрузить"><br>
        </form>
    </div>
    {update_result}
</div>

<h1 id="titleRevision" style="display: none; text-align: center; margin-top: -20px; margin-bottom: 10px;">Заявки требующие доработки:</h1>
<div id="dataRequestRevision"
     style="position: relative; width: 700px; border: 2px white solid; display: none; margin: 0 auto; background-color: lightgray;">
    <table style="position: relative; text-align: left; left: 12.5%; margin-top: 20px; margin-bottom: 20px;">
        {revisionData}
    </table>
</div>

<div id="win" style="display:none;">
    <div class="overlay"></div>
    <div class="visible">
        <h2 style="text-align: center; margin: 10px;">Выберите файл для загрузки</h2>
        <div class="contentModal">
            <div id="uploadFormRevision" style="position: absolute; top: 30%; left: 30%;">
                <form id="revisionUpload" action="#" method="post" enctype="multipart/form-data">
                    <input type="file" name="filename"><br>
                    <input style="margin-top: 5px; margin-left: 33%;" type="submit" value="Загрузить"><br>
                </form>
            </div>
        </div>
        <button type="button" onClick="getElementById('win').style.display='none';">закрыть</button>
    </div>
</div>

<h1 id="titleMessage" style="display: none; text-align: center; margin-top: -20px; margin-bottom: 10px;">Сообщения:</h1>
<h1 id="countMessage" style="display: none; text-align: center; margin-top: -10px; margin-bottom: 10px;">У вас {count_message} сообщений</h1>
<div id="dataMessage"
     style="position: relative; width: 700px; border: 2px white solid; display: none; margin: 0 auto; background-color: lightgray;">
    <table style="text-align: left; margin: 0 auto; margin-top: 10px; margin-bottom: 10px;">
        {messageData}
    </table>
</div>

<div id="mes" style="display:none;">
    <div class="overlay"></div>
    <div class="visible">
        <h2 style="text-align: center; margin: 10px;">Администрация Сайта</h2>
        <div class="contentModal">
            <div id="messageBody">
                <h1 id="messageTitle" style="text-align: center; margin-top: 5px; margin-bottom: 5px;"></h1>
                <p id="messageText"></p>
            </div>
        </div>
        <button type="button" onClick="getElementById('mes').style.display='none';">закрыть</button>
    </div>
</div>

<div id="edSt" style="display:none;">
    <div class="overlay"></div>
    <div class="visible">
        <h2 style="text-align: center; margin: 10px;">Выберите ваш статус</h2>
        <div class="contentModal">
            <div id="messageBody" style="text-align: center; margin-top: 30px;">
                <a style="font-size: 16px;" href="index.php?go=editor&edSt=0">Свободен(на)</a>
                <br>
                <a style="font-size: 16px" href="index.php?go=editor&edSt=1">В работе</a>
                <br>
                <a style="font-size: 16px" href="index.php?go=editor&edSt=2">Не беспокоить</a>
            </div>
        </div>
        <button type="button" onClick="getElementById('edSt').style.display='none';">закрыть</button>
    </div>
</div>

<style type="text/css">
    .newRequestTable tr:nth-child(2n+1) {
        background-color: #fff;
    }

    .newRequestTable tr:nth-child(2n) {
        background-color: whitesmoke;
    }

    .overlay {
        background: #000;
        position: fixed;
        left: 0;
        right: 0;
        top: 0;
        bottom: 0;
        z-index: 1000;
        opacity: .5;
    }
    .visible {
        background: #fff;
        position: fixed;
        left: 50%;
        top: 50%;
        margin-top: -200px;
        overflow: hidden;
        z-index: 2000;
        width: 500px;
        padding: 0px;
        margin-left: -250px;
    }
    #win button, #mes button, #edSt button {
        float: right;
        line-height: 20px;
        margin: 1.2em;
        border: none;
        background: transparent;
        color: blue;
    }
    #win button[type="button"]:hover, #mes button[type="button"]:hover, #edSt button[type="button"]:hover {
        cursor: pointer;
        color: navy;
        text-decoration: underline;
    }
    #win h3, , #mes h3, #edSt h3 {
        text-align: center;
        color: #555;
    }
    .contentModal {
        padding: 0 1em;
        border-top: 1px solid #ccc;
        border-bottom: 1px solid #ccc;
        background: lightgray;
        height: 120px;
    }
</style>

<script type="text/javascript">
    $('#editorStatus').click(function () {
        $('#edSt').css('display', '');
    });

    function addFormAction() {
        var textId = $(this).parent().children()[0].textContent;
        $('#revisionUpload').attr('action', 'index.php?go=editor&act=revision&text_id=' + textId + '&upload=true');
    }

    var revisionUploadButton = $('.revisionUpload');
    for(var i = 0; i < revisionUploadButton.length; i++){
        $(revisionUploadButton[i]).click(addFormAction);
    }

    function tableHide() {
        $('#tableDataRequest').css('display', 'none');
    }

    function completeBoxShow() {
        $('#dataRequestComplete').css('display', '');
        $('#titleComplete').css('display', '');
    }

    function revisionBoxShow() {
        $('#dataRequestRevision').css('display', '');
        $('#titleRevision').css('display', '');
    }

    function completeRequestBoxShow() {
        $('#tableDataComplateRequest').css('display', '');
    }

    function messageShow() {
        $('#titleMessage').css('display', '');
        $('#countMessage').css('display', '');
        $('#dataMessage').css('display', '');
    }

    var params = window
        .location
        .search
        .replace('?', '')
        .split('&')
        .reduce(
            function (p, e) {
                var a = e.split('=');
                p[decodeURIComponent(a[0])] = decodeURIComponent(a[1]);
                return p;
            },
                {}
        );

    function openMessage() {
        $('#mes').css('display', '');
        var messageTitle = $(this).parent().children()[0].textContent,
            messageText = $(this).parent().children()[1].textContent;

        $('#messageTitle').html(messageTitle);
        $('#messageText').html(messageText);
    }

    switch (params['act']) {
        case 'complete':
            tableHide();
            completeBoxShow();
            break;
        case 'revision':
            tableHide();
            revisionBoxShow();
            break;
        case 'requestComplete':
            tableHide();
            completeRequestBoxShow();
            break;
        case 'message':
            tableHide();
            messageShow();
            var viewMessageButton = $('.viewMessage');
            for(var i = 0; i < viewMessageButton.length; i++){
                $(viewMessageButton[i]).click(openMessage);
            }
            break;
    }

    function showUploadForm() {
        $('#uploadForm').css('display', '');
    }
    $('#uploadButton').click(showUploadForm);
</script>