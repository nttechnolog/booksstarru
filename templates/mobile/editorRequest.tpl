<div class="autowr" style="margin-bottom: 50px;">
    <div style="margin-top:20px;"></div>
    <div id="my_sub_menu">
        <a href="/index.php?go=editorRequest" onClick="Page.Go(this.href); return false;"><b>Мои заявки</b></a>
        <a href="/index.php?go=editorRequest&act=waitRevision" onClick="Page.Go(this.href); return false;"><b>Ожидают проверки</b></a>
        <a href="/index.php?go=editorRequest&act=complete" onClick="Page.Go(this.href); return false;"><b>Подтвержденные</b></a>
        <a href="/index.php?go=editorRequest&act=forRevision" onClick="Page.Go(this.href); return false;"><b>На доработке</b></a>
        <a href="/index.php?go=editorRequest&act=sendRequest" onClick="Page.Go(this.href); return false;"><b>Подать заявку</b></a>
        <a href="/index.php?go=editorRequest&act=message" onClick="Page.Go(this.href); return false;">
            <div><b>Сообщения</b></div>
        </a>
    </div>

    <div id="send" style="width: 100%; background-color: #fff; display: none;">
        <div style="margin: 0 auto; width: 450px; height: 250px; padding: 50px;">
            <p style="text-align: center; color: #4274a5; font-size: 13px; font-weight: bold;">Желаете отдать произведение на редакцию?</p>
            <form action="/index.php?go=editorRequest&act=sendRequest&send=true" method="post">
                <div style="margin: 5px; text-align: right;">
                    <label for="selectText">Выбрать произведение</label>
                    <select name="selectText" id="selectText" style="-webkit-appearance: button;
   -webkit-border-radius: 2px;
   -webkit-box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.1);
   -webkit-padding-end: 20px;
   -webkit-padding-start: 2px;
   -webkit-user-select: none;
   background-image: url(http://i62.tinypic.com/15xvbd5.png), -webkit-linear-gradient(#FAFAFA, #F4F4F4 40%, #E5E5E5);
   background-position: 97% center;
   background-repeat: no-repeat;
   border: 1px solid #AAA;
   color: #555;
   font-size: inherit;
   overflow: hidden;
   padding: 5px 10px;
   text-overflow: ellipsis;
   white-space: nowrap;
   width: 250px; margin: 0 20px;">
                        {text}
                    </select>
                </div>

                <div style="margin: 5px; text-align: right;">
                    <label for="selectEditor">Выбрать редактора</label>
                    <select name="selectEditor" id="selectEditor" style="-webkit-appearance: button;
   -webkit-border-radius: 2px;
   -webkit-box-shadow: 0px 1px 3px rgba(0, 0, 0, 0.1);
   -webkit-padding-end: 20px;
   -webkit-padding-start: 2px;
   -webkit-user-select: none;
   background-image: url(http://i62.tinypic.com/15xvbd5.png), -webkit-linear-gradient(#FAFAFA, #F4F4F4 40%, #E5E5E5);
   background-position: 97% center;
   background-repeat: no-repeat;
   border: 1px solid #AAA;
   color: #555;
   font-size: inherit;
   overflow: hidden;
   padding: 5px 10px;
   text-overflow: ellipsis;
   white-space: nowrap;
   width: 250px; margin: 0 20px;">
                        {editors}
                    </select>
                </div>

                <div style="margin: 5px; text-align: right;">
                    <label for="selectPrice">Введите стоимость</label>
                    <input name="selectPrice" type="text" id="selectPrice" class="inpst" style="width: 240px; margin: 0 20px;">
                </div>

                <div style="margin: 5px; text-align: right;">
                    <label for="numbers">Введите кол. символов</label>
                    <input name="numbers" type="text" id="numbers" class="inpst" style="width: 240px; margin: 0 20px">
                </div>
            </form>
            <div style="margin: 5px; margin-left: 20px; margin-right: 25px; float: right" class="button_div fl_l" style="float: right;">
                <button id="sendForm">Отправить</button>
            </div>
            {requestStatus}
        </div>
    </div>

    <div id="myRequest" style="width: 100%; background-color: #fff;margin-top: 40px; display: none;">
        <h1 id="titleComplete" style="margin-top: -20px">Мои заявки:</h1>
        <div style="position: relative; width: 90%; border: 2px white solid; margin: 0 auto;">
            <table class="myRequestTable" style="margin: 0 auto; margin-top: 20px; margin-bottom: 20px; background-color: lightgray;">
                <tbody>
                <tr>
                    <th style="width: 30px; height: 20px;">№</th>
                    <th style="width: 220px">Название произведения</th>
                    <th style="width: 220px">Редактор</th>
                    <th>Стоимость</th>
                    <th>Кол. символов</th>
                    <th style="width: 140px;">Статус</th>
                    <th>Действие</th>
                </tr>
                {tableData}
                </tbody>
            </table>
        </div>
    </div>

    <div id="waitRevision" style="width: 100%; background-color: #fff;margin-top: 40px; display: none;">
        <h1 id="waitRevisionTitle" style="margin-top: -20px">Выполненные заявки:</h1>
        <div style="position: relative; width: 90%; border: 2px white solid; margin: 0 auto;">
            <table class="myRequestTable" style="margin: 0 auto; margin-top: 20px; margin-bottom: 20px; background-color: lightgray;">
                <tbody>
                <tr>
                    <th style="width: 30px; height: 20px;">№</th>
                    <th style="width: 220px">Название произведения</th>
                    <th style="width: 220px">Редактор</th>
                    <th>Стоимость</th>
                    <th>Кол. символов</th>
                    <th style="width: 100px;">Документ</th>
                    <th>Действие</th>
                </tr>
                {tableData}
                </tbody>
            </table>
        </div>
    </div>

    <div id="complete" style="width: 100%; background-color: #fff;margin-top: 40px; display: none;">
        <h1 id="completeTitle" style="margin-top: -20px">Выполненные заявки:</h1>
        <div style="position: relative; width: 90%; border: 2px white solid; margin: 0 auto;">
            <table class="myRequestTable" style="margin: 0 auto; margin-top: 20px; margin-bottom: 20px; background-color: lightgray;">
                <tbody>
                <tr>
                    <th style="width: 30px; height: 20px;">№</th>
                    <th style="width: 220px">Название произведения</th>
                    <th style="width: 220px">Редактор</th>
                    <th>Стоимость</th>
                    <th>Кол. символов</th>
                    <th style="width: 100px;">Дата</th>
                    <th>Архив</th>
                </tr>
                {tableData}
                </tbody>
            </table>
        </div>
    </div>

    <div id="forRevision" style="width: 100%; background-color: #fff;margin-top: 40px; display: none;">
        <h1 id="forRevisionTitle" style="margin-top: -20px">Выполненные заявки:</h1>
        <div style="position: relative; width: 90%; border: 2px white solid; margin: 0 auto;">
            <table class="myRequestTable" style="margin: 0 auto; margin-top: 20px; margin-bottom: 20px; background-color: lightgray;">
                <tbody>
                <tr>
                    <th style="width: 30px; height: 20px;">№</th>
                    <th style="width: 220px">Название произведения</th>
                    <th style="width: 220px">Редактор</th>
                    <th>Стоимость</th>
                    <th>Кол. символов</th>
                    <th style="width: 100px;">Статус</th>
                    <th>Действие</th>
                </tr>
                {tableData}
                </tbody>
            </table>
        </div>
    </div>

    <div id="message" style="width: 100%; background-color: #fff;margin-top: 40px; display: none;">
    <h1 id="titleMessage" style=" text-align: center; margin-top: -20px; margin-bottom: 10px;">Сообщения:</h1>
    <h1 id="countMessage" style=" text-align: center; margin-top: -10px; margin-bottom: 10px;">У вас {count_message} сообщений</h1>
    <div id="dataMessage"
         style="position: relative; width: 700px; border: 2px white solid; margin: 0 auto; background-color: lightgray;">
        <table style="text-align: left; margin: 0 auto; margin-top: 10px; margin-bottom: 10px;">
            {messageData}
        </table>
    </div>
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

</div>

<style type="text/css">
    .myRequestTable tr:nth-child(2n+1) {
        background-color: #fff;
    }

    .myRequestTable tr:nth-child(2n) {
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
    #mes button{
        float: right;
        line-height: 20px;
        margin: 1.2em;
        border: none;
        background: transparent;
        color: blue;
    }
    #mes button[type="button"]:hover{
        cursor: pointer;
        color: navy;
        text-decoration: underline;
    }
    #mes h3{
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

    function pageSendShow() {
        $('#send').css('display', '');
    }

    function pageSendHide() {
        $('#send').css('display', 'none');
    }

    function pagemyRequestHide() {
        $('#myRequest').css('display', 'none');
    }

    function pagemyRequestShow() {
        $('#myRequest').css('display', '');
    }

    function pagewaitRevisionShow() {
        $('#waitRevision').css('display', '');
    }

    function pagewaitRevisionHide() {
        $('#waitRevision').css('display', 'none');
    }

    function pageCompleteShow() {
        $('#complete').css('display', '');
    }

    function pageForRevisionShow() {
        $('#forRevision').css('display', '');
    }

    function pageMessageShow() {
        $('#message').css('display', '');
    }

    function openMessage() {
        $('#mes').css('display', '');
        var messageTitle = $(this).parent().children()[0].textContent,
            messageText = $(this).parent().children()[1].textContent;

        $('#messageTitle').html(messageTitle);
        $('#messageText').html(messageText);
    }


    switch (params['act']) {
        case 'sendRequest':
            pageSendShow();
            pagemyRequestHide();
            break;
        case 'waitRevision':
            pagemyRequestHide();
            pageSendHide();
            pagewaitRevisionShow();
            break;
        case 'complete':
            pageCompleteShow();
            break;
        case 'forRevision':
            pageForRevisionShow();
            break;
        case 'message':
            pagemyRequestHide();
            pageMessageShow();
            var viewMessageButton = $('.viewMessage');
            for(var i = 0; i < viewMessageButton.length; i++){
                $(viewMessageButton[i]).click(openMessage);
            }
            break;
        default:
            pagemyRequestShow();
            pageSendHide();
            pagewaitRevisionHide();
            break;
    }



    function checkPrice() {
        var checkNUmber = /^\d+$/;
        var check = checkNUmber.test($('#selectPrice').val());

        if($('#selectPrice').val() == ''){
            alert('Введите цену');
            return false;
        } else if(!check){
            alert('Цена должна быть указанна цифрами');
            return false;
        } else {
            return true;
        }
    }

    function checkNumbers() {
        var checkNUmber = /^\d+$/;
        var check = checkNUmber.test($('#numbers').val());

        if($('#numbers').val() == ''){
            alert('Введите количество символов');
            return false;
        } else if(!check){
            alert('Количество символов должно быть указанно цифрами');
            return false;
        } else {
            return true;
        }
    }

    function checkInput() {
        if ((checkPrice() && checkNumbers())){
           $('form').submit();
        }
    }

    $('#sendForm').click(checkInput);
</script>
