
$(document).ready(function(){
	$(".alert.alert-danger").hide();
	
	$("#nickname").blur(function(){
		initAlertError();
		regexNickname=/^[0-9a-zA-Z_\u4e00-\u9fa5]+$/;
		if(!regexNickname.test($("#nickname").val())){
    		$(".alert.alert-danger").html("the Nickname is invalid.");
    		$(".alert.alert-danger").show();
		}
		validateAJAX();
	});
	
	$("#adminname").blur(function(){
		initAlertError();
		regexAdminname=/^\w+$/;
		if(!regexAdminname.test($("#adminname").val())){
    		$(".alert.alert-danger").html("the Username is invalid.");
    		$(".alert.alert-danger").show();
		}
		validateAJAX();
	});
	
	$("#password").blur(function(){
		initAlertError();
		regexPassword=/^\w+$/;
		if(!regexPassword.test($("#password").val())){
    		$(".alert.alert-danger").html("the Password is invalid.");
    		$(".alert.alert-danger").show();
		}
		validateAJAX();
	});
	
	$("#confirmPassword").blur(function(){
		initAlertError();
		if($("#password").val()!=$("#confirmPassword").val()){
    		$(".alert.alert-danger").html("Please check that your passwords match and try again.");
    		$(".alert.alert-danger").show();
		}
		validateAJAX();
	});
	
    $("#email").blur(function(){
    	initAlertError();
    	regexEmail=/^[0-9a-zA-z_]+@[0-9a-zA-z]+.com$/;
    	if(!regexEmail.test($("#email").val())){
    		$(".alert.alert-danger").html("Your Email address has an invalid email address format. Please correct and try again.");
    		$(".alert.alert-danger").show();
    	}
    	validateAJAX();
    });
});
    
function show(haofuxin,status,three){
    if(haofuxin.error!=null){
    	$(".alert.alert-danger").html(haofuxin.error);
    	$(".alert.alert-danger").show();
    }
}

function validateAJAX(){
	var params={
			"admin.nickname":$("#nickname").val(),
			"admin.adminname":$("#adminname").val(),
			"admin.password":$("#password").val(),
			"confirmPassword":$("#confirmPassword").val(),
			"admin.email":$("#email").val()
		};
	
	$.ajax({
		type:"POST",
		url:"admin/validateAJAXAction.action",
		data:params,
		dataType:"json",
		success:show,
		error:function(json){
			alert("json"+json);
			return false;
		}
	});
}

function check(){
	if($(".alert.alert-danger").text()!=""){
		$(".alert.alert-danger").html("信息错误，请检查后再提交!");
    	$(".alert.alert-danger").show();
		return false;
	}
	else{
		
	};
}

function initAlertError(){
	$(".alert.alert-danger").hide();
	$(".alert.alert-danger").html("");
}