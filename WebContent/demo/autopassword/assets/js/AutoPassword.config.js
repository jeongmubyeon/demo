var _AutoPasswordConfig = {
	"domain" : "developers.opapassword.or.kr",
	"logo" : {"file":"/assets/opapassword/images/logo2.png", "use" : true},
	"title" : {"text":"LOGIN", "use" : true, "useX":true},
	"barColor" : "#FFCA00",
	"backgroundColor" : "rgba(255,255,255,0.1)",  //투명도 조절 하고 싶을 때 - 검은색 일 경우 backgroundColor:"rgba(0,0,0,0.3) / 흰색일 경우 backgroundColor:rgba(255,255,255,0.3)"
	"id" : {"show" : true, "readonly":true},
	"productName" : "OPA Password",
	"supportEmail" : "support@autopassword.com",
	
	"type" : 0,   //enterprise = 0, b2c = 1
	"autopassword" : {"use" : true, "name" : "OPA Password"},
	"backupPassword" : {"use" : true, "name" : "BackupPassword"},
	"smsPassword" : {"use" : true, "name" : "SMSPassword"},
	"otpToken" : {"use" : true, "name" : "OTP Token"},
	"userOTP" : {"use" : true, "name" : "UserOTP"},
	"mobileOTP" : {"use" : true, "name" : "Google OTP"},
	"selfPassword" : {"use" : true, "name" : "SelfPassword"},
	
	"linkArr" : [
		{"text":"개발자 가입", "link":"/developers/web/account/reg"}, 
		{"text":"재설정", "link":"/developers/web/account/update"}, 
		{"text":"데모", "link":"/demo"}
	]
}
