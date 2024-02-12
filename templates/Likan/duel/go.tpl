<style>
div.golos ul {
    overflow: hidden;
    width: 100px;
    margin: auto;
    color: #21578b;
}
div.golos ul li{
	float:left;
	cursor:pointer;
	padding:5px;
	margin:1px;
}

button.next{
	    background-color: #fff;
    border: 1px solid #aaa;
    padding: 5px 25px;
    cursor: pointer;
}
</style>
<script>
function setBall(id_note,ball){
	$.post("/index.php?go=duel&act=setBall",{'ball':ball,'id_note':id_note},function(data){ 
		alert('Ваш голос принят');
	});
}

function getNotes(id_note){
	$(".autor").css('color','#000');
	$("#u_"+id_note).css('color','red');

	$.post("/index.php?go=duel&act=getNotes",{'id_note':id_note},function(data){
		$('#base_content').html(data);
	});

}
</script>
<div id="is_reqest" style="margin:auto;text-align:center;">

   <div style="width: 825px;  margin: auto; padding: 50px;    background-color: #fff;">
     <h1>Оцените рассказ предложенных авторов:</h1>
	 <div style="margin:10px 0;">
	  {html_chanr}
	  
	 </div>
     <h2>Новые участники:</h2> <br>
	 <div style="    width: 100%; height: 133px; border: 1px solid; padding: 5px;">
		 <div>{top_users}</div>

	   <!-- -->
	 </div>
	 
	 <!-- asdasdas -->
	 <div style="width: 100%; padding: 5px;margin-top:20px;" class="golos"> 
	  <table style="width: 100%; ">
	   <tr>
	    <td valign="top">
			{html_user1}
		</td>
		<td valign="top">
		 {html_top}
		 <br/>
		 <form action="" method="post"><button class="next">Следущая дуэль</button></form>
		 <br/>
		 <div id="base_content"></div>
		</td>
		<td valign="top"> 
			{html_user2}
        </td>
	   </tr>
	  </table>
	 </div>
	 
 </div>
</div>