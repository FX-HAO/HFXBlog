



function write(obj){
	alert("!!!");
	/*alert($("#category").text());
	$("input[name='category']").val($("#category").text());
	alert($("#title").val());
	$("input[name='title']").val($("#title").val());
	alert($("#editor").text());
	$("input[name='content']").val($("#editor").text());*/
	return false;
}

function check(){
	if($(".alert.alert-danger").text()!=""){
		$(".alert.alert-danger").html("��Ϣ������������ύ!");
    	$(".alert.alert-danger").show();
		return false;
	}
	else{
		
	};
}