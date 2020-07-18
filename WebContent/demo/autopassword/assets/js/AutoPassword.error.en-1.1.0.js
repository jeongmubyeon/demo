var OTPError = (function(app, $){
	errmsg = {
			"000.0": "Success", 	//	성공  
			"000.1": "This command is not registered.", 	//	등록되지 않은 명령입니다. 
			"000.2": "An error has occurred from within the server.", 	//	서버 내부에서 에러가 발생했습니다. 
			"000.3": "The connection is terminated due to connection delay.", 	//	접속지연으로 접속을 종료합니다.
			"000.4": "The connected has ended abnormally.", 	//	접속이 비정상 종료되었습니다. :
			"000.5": "This is not a verified client.", 	//	인증된 클라이언트가 아닙니다. 
			"000.6": "This is an invalid input value.", 	//	잘못된 입력값입니다.
			"000.7": "Failed to connect to the server.", 	//	서버에 접속실패 하였습니다.
			"000.8": "Data reception is unsuccessful due to network instability.", 	//	네트워크가 불안하여 데이터 수신에 실패하였습니다. 
			"100.0": "Success", 	//	성공  
			"100.1": "This command is not registered.", 	//	등록되지 않은 명령입니다. 
			"100.2": "An error has occurred from within the server.", 	//	서버 내부에서 에러가 발생했습니다. 
			"100.3": "The connection is terminated due to connection delay.", 	//	접속지연으로 접속을 종료합니다.
			"100.4": "The connected has ended abnormally.", 	//	접속이 비정상 종료되었습니다. :
			"100.5": "This is not a verified client.", 	//	인증된 클라이언트가 아닙니다. 
			"100.6": "This is an invalid input value.", 	//	잘못된 입력값입니다.
			"100.7": "Failed to connect to the server.", 	//	서버에 접속실패 하였습니다.
			"100.8": "Data reception is unsuccessful due to network instability.", 	//	네트워크가 불안하여 데이터 수신에 실패하였습니다. 
			"110.1": "The OTP Key is not valid.", 	//	OTP 키가 정상이 아닙니다.
			"200.0": "Successful", 	//	성공  
			"200.1": "This command is not registered.", 	//	등록되지 않은 명령입니다. 
			"200.2": "An error has occurred from within the server.", 	//	서버 내부에서 에러가 발생했습니다. 
			"200.3": "The connection is terminated due to connection delay.", 	//	접속지연으로 접속을 종료합니다.
			"200.4": "The connected has ended abnormally.", 	//	접속이 비정상 종료되었습니다. :
			"200.5": "This is not a verified client.", 	//	인증된 클라이언트가 아닙니다. 
			"200.6": "This is an invalid input value.", 	//	잘못된 입력값입니다.
			"200.7": "Failed to connect to the server.", 	//	서버에 접속실패 하였습니다.
			"200.8": "Data reception is unsuccessful due to network instability.", 	//	네트워크가 불안하여 데이터 수신에 실패하였습니다.
			"210.1": "An error has occurred due to the modulated OTP Key.", 	//	변조된 OTP 키로 인하여 에러가 발생하였습니다.
			"210.2": "OTP Key not found.", 	//	OTP 키를 찾을 수 없습니다.
			"210.3": "The OTP value is incorrect.", 	//	OTP 값이 일치하지 않습니다.  
			"202.4": "The OTP value is incorrect.", 	//	OTP 값이 일치하지 않습니다. 
			"300.0": "Success", 	//	성공  
			"300.1": "This command is not registered.", 	//	등록되지 않은 명령입니다. 
			"300.2": "An error has occurred from within the server.", 	//	서버 내부에서 에러가 발생했습니다. 
			"300.3": "The connection is terminated due to connection delay.", 	//	접속지연으로 접속을 종료합니다.
			"300.4": "The connected has ended abnormally.", 	//	접속이 비정상 종료되었습니다. :
			"300.5": "This is not a verified client.", 	//	인증된 클라이언트가 아닙니다. 
			"300.6": "This is an invalid input value.", 	//	잘못된 입력값입니다.
			"300.7": "Failed to connect to the server.", 	//	서버에 접속실패 하였습니다.
			"300.8": "Data reception is unsuccessful due to network instability.", 	//	네트워크가 불안하여 데이터 수신에 실패하였습니다.
			"310.1": "Private IP has not been entered.", 	//	사설 아이피가 입력되지 않았습니다.
			"310.2": "The serial value is not valid.", 	//	시리얼값이 정상이 아닙니다.
			"310.3": "Decryption of private IP has failed.", 	//	사설 아이피의 복호화에 실패하였습니다.
			"400.0": "Success", 	//	성공  
			"400.1": "This command is not registered.", 	//	등록되지 않은 명령입니다. 
			"400.2": "An error has occurred from within the server.", 	//	서버 내부에서 에러가 발생했습니다 
			"400.3": "The connection is terminated due to connection delay.", 	//	접속지연으로 접속을 종료합니다.
			"400.4": "The connected has ended abnormally.", 	//	접속이 비정상 종료되었습니다. :
			"400.5": "This is not a verified client.", 	//	인증된 클라이언트가 아닙니다. 
			"400.6": "This is an invalid input value.", 	//	잘못된 입력값입니다.
			"400.7": "Failed to connect to the server.", 	//	서버에 접속실패 하였습니다
			"400.8": "Data reception is unsuccessful due to network instability.", 	//	네트워크가 불안하여 데이터 수신에 실패하였습니다.
			"410.1": "OTP delivery to the service server (relay) has failed.", 	//	서비스 서버(릴레이)에 OTP 전달을 실패하였습니다.
			"500.0": "Success", 	//	성공  
			"500.1": "This command is not registered.", 	//	등록되지 않은 명령입니다. 
			"500.2": "An error has occurred from within the server.", 	//	서버 내부에서 에러가 발생했습니다. 
			"500.3": "The connection is terminated due to connection delay.", 	//	접속지연으로 접속을 종료합니다.
			"500.4": "The connected has ended abnormally.", 	//	접속이 비정상 종료되었습니다. :
			"500.5": "This is not a verified client.", 	//	인증된 클라이언트가 아닙니다. 
			"500.6": "This is an invalid input value.", 	//	잘못된 입력값입니다.
			"500.7": "Failed to connect to the server.", 	//	서버에 접속실패 하였습니다.
			"500.8": "Data reception is unsuccessful due to network instability.", 	//	네트워크가 불안하여 데이터 수신에 실패하였습니다.
			"510.1": "OTP delivery to the service server (relay) has failed.", 	//	서비스 서버(릴레이)에 OTP 전달을 실패하였습니다.
			"600.0": "Success", 	//	성공  
			"600.1": "This command is not registered.", 	//	등록되지 않은 명령입니다. 
			"600.2": "An error has occurred from within the server.", 	//	서버 내부에서 에러가 발생했습니다. 
			"600.3": "The connection is terminated due to connection delay.", 	//	접속지연으로 접속을 종료합니다.
			"600.4": "The connected has ended abnormally.", 	//	접속이 비정상 종료되었습니다. : 
			"600.5": "This is not a verified client.", 	//	인증된 클라이언트가 아닙니다. 
			"600.6": "This is an invalid input value.", 	//	잘못된 입력값입니다.
			"600.7": "Failed to connect to the server.", 	//	서버에 접속실패 하였습니다.
			"600.8": "Data reception is unsuccessful due to network instability.", 	//	네트워크가 불안하여 데이터 수신에 실패하였습니다.
			"610.1": "The URI value is incorrect.", 	//	URI의 값이 올바르지 않습니다.
			"610.2": "The setting value is incorrect.", 	//	설정값이 올바르지 않습니다.
			"610.3": "The personal verification number URL is incorrect.", 	//	본인 인증번호 확인 URL이 올바르지 않습니다.
			"610.4": "This is not a permitted IP.", 	//	허용된 접속 아이피가 아닙니다.
			"620.1": "The Token is invalid.", 	//	토큰이 잘못되었습니다.
			"620.2": "The requested Token does not exist.", 	//	존재하지 않는 요청 토큰입니다.
			"620.3": "The Token does not exist.", 	//	존재하지 않는 토큰입니다.
			"620.4": "The Key has already been registered.", 	//	이미 비밀 키가 등록되었습니다.
			"620.5": "The Key information does not exist.", 	//	키 정보가 존재하지 않습니다.
			"630.1": "The company information does not exist.", 	//	회사정보가 존재하지 않습니다.
			"630.2": "The Key does not exist.", 	//	비밀 키가 존재하지 않습니다.
			"630.3": "You does not join OPA Password.", 	//	존재하지 않는 사용자입니다.
			"630.4": "The user already exists.", 	//	이미 사용자가 존재합니다.
			"630.5": "The schedule has already been registered.", 	//	이미 등록된 스케줄입니다.
			"630.6": "The policy schedule does not exist.", 	//	스케줄이 정책 스케줄이 존재하지 않습니다.
			"630.7": "The Rent Phone has already been registered.", 	//	Rent Phone이 이미 등록되었습니다.
			"630.8": "The Rent Phone does not exist.", 	//	Rent Phone이 존재하지 않습니다.
			"630.9": "The information already exists.", 	//	이미 존재하는 정보입니다.
			"631.0": "This user has been suspended.", 	//	중지된 사용자입니다.
			"631.1": "The application form does not exist.", 	//	존재하지 않는 신청서 입니다.
			"631.2": "The scheduled user does not exist.", 	//	스케줄 대상 사용자가 존재하지 않습니다.
			"631.3": "You do not have permission.", 	//	권한이 없습니다.
			"700.0": "Success", 	//	성공  
			"700.1": "This command is not registered.", 	//	등록되지 않은 명령입니다. 
			"700.2": "An error has occurred from within the server.", 	//	서버 내부에서 에러가 발생했습니다. 
			"700.3": "The connection is terminated due to connection delay.", 	//	접속지연으로 접속을 종료합니다.
			"700.4": "The connected has ended abnormally.", 	//	접속이 비정상 종료되었습니다. :
			"700.5": "This is not a verified client.", 	//	인증된 클라이언트가 아닙니다. 
			"700.6": "This is an invalid input value.", 	//	잘못된 입력값입니다.
			"700.7": "Failed to connect to the server.", 	//	서버에 접속실패 하였습니다.
			"700.8": "Data reception is unsuccessful due to network instability.", 	//	네트워크가 불안하여 데이터 수신에 실패하였습니다.
			"710.1": "The password or ID is incorrect.", 	//	잘못된 패스워드 혹은 아이디입니다.
			"710.2": "The password is incorrect.", 	//	잘못된 패스워드입니다.
			"710.3": "The ID is already in use.", 	//	이미 사용중인 아이디입니다.
			"710.4": "The user does not exist.", 	//	사용자가 존재하지 않습니다.
			"710.5": "The phone number is incorrectly formatted.", 	//	잘못된 형식의 전화번호 입니다.
			"710.6": "The password is incorrectly formatted.", 	//	잘못된 형식의 비밀번호 입니다. 
			"710.7": "The password is incorrectly formatted.", 	//	잘못된 형식의 비밀번호 입니다. 
			"710.8": "The user does not exist.", 	//	존재하지 않는 사용자입니다.
			"710.9": "The phone number has already been registered.", 	//	이미 등록된 전화번호 입니다.
			"711.1": "The serial number is invalid.", 	//	잘못된 시리얼 입니다. 
			"711.2": "An error has occurred in the policy settings.", 	//	정책설정에서 에러가 발생했습니다.
			"711.3": "The policy could not verify the country.", 	//	정책에서 국가를 검증하지 못하였습니다.
			"711.4": "Authentication has been failed 5 times. Please contact the administrator.", 	//	5회의 에러가 발생하였습니다. 관리자에게 해제를 요청 하십시오.  
			"711.5": "Connection has been blocked due to an attempt to access via a restricted IP.", 	//	접근금지 아이피로 접근을 시도하여 접속을 차단합니다.
			"711.6": "Waiting for response from mobile.", 	//	모바일 동작을 기다리는 중입니다.
			"711.7": "The mobile has already responsed.", 	//	이미 모바일 동작이 처리 되었습니다.
			"711.8": "The Service OTP has not been requested.", 	//	서비스 OTP가 요청되지 않았습니다.
			"711.9": "The Backup OTP has not been issued.", 	//	백업 OTP가 발급되지 않았습니다.
			"712.1": "The OTP is incorrect.", 	//	OTP가 일치 하지 않습니다.
			"712.2": "There are no registered phone numbers.", 	//	등록된 전화번호가 없습니다.
			"712.3": "Connected via a restricted IP.", 	//	접근금지 아이피에서 접속하였습니다.
			"712.4": "The License has expired. Please renew the License.", 	//	라이센스가 만료되었거나 라이센스의 허용사용자 수를 초과 하였습니다. 라이센스를 갱신하십시오.
			"712.5": "An error has occurred while encrypting the Key.", 	//	비밀 키를 암호화하는 동안 에러가 발생하였습니다.
			"731.0": "This user has been suspended.", 	//	중지된 사용자입니다.
			"800.0": "Success", 	//	성공  
			"800.1": "This command is not registered.", 	//	등록되지 않은 명령입니다. 
			"800.2": "An error has occurred from within the server.", 	//	서버 내부에서 에러가 발생했습니다. 
			"800.3": "The connection is terminated due to connection delay.", 	//	접속지연으로 접속을 종료합니다.
			"800.4": "The connected has ended abnormally.", 	//	접속이 비정상 종료되었습니다. :
			"800.5": "This is not a verified client.", 	//	인증된 클라이언트가 아닙니다. 
			"800.6": "This is an invalid input value.", 	//	잘못된 입력값입니다.
			"800.7": "Failed to connect to the server.", 	//	서버에 접속실패 하였습니다.
			"800.8": "Data reception is unsuccessful due to network instability.", 	//	네트워크가 불안하여 데이터 수신에 실패하였습니다.
			"810.1": "An error has occurred while sending the mail.", 	//	메일 송신 중에 에러가 발생하였습니다
			"810.2": "An error has occurred while sending the SMS.", 	//	SMS 발송 중에 에러가 발생하였습니다.
			"810.3": "An error has occurred while sending the PUSH notification.", 	//	PUSH 발송 중에 에러가 발생하였습니다.
			"810.4": "An error has occurred while searching the IP information.", 	//	아이피 정보 조회 시에 에러가 발생하였습니다.
			"900.0": "Success", 	//	성공  
			"900.1": "This command is not registered.", 	//	등록되지 않은 명령입니다. 
			"900.2": "An error has occurred from within the server.", 	//	서버 내부에서 에러가 발생했습니다. 
			"900.3": "The connection is terminated due to connection delay.", 	//	접속지연으로 접속을 종료합니다.
			"900.4": "The connected has ended abnormally.", 	//	접속이 비정상 종료되었습니다. :
			"900.5": "This is not a verified client.", 	//	인증된 클라이언트가 아닙니다. 
			"900.6": "This is an invalid input value.", 	//	잘못된 입력값입니다.
			"900.7": "Failed to connect to the server.", 	//	서버에 접속실패 하였습니다.
			"900.8": "Data reception is unsuccessful due to network instability.", 	//	네트워크가 불안하여 데이터 수신에 실패하였습니다.
			"A00.0": "Success", 	//	성공  
			"A00.1": "This command is not registered.", 	//	등록되지 않은 명령입니다. 
			"A00.2": "An error has occurred from within the server.", 	//	서버 내부에서 에러가 발생했습니다. 
			"A00.3": "The connection is terminated due to connection delay.", 	//	접속지연으로 접속을 종료합니다.
			"A00.4": "The connected has ended abnormally.", 	//	접속이 비정상 종료되었습니다. :
			"A00.5": "This is not a verified client.", 	//	인증된 클라이언트가 아닙니다. 
			"A00.6": "This is an invalid input value.", 	//	잘못된 입력값입니다.
			"A00.7": "Failed to connect to the server.", 	//	서버에 접속실패 하였습니다.
			"A00.8": "Data reception is unsuccessful due to network instability.", 	//	네트워크가 불안하여 데이터 수신에 실패하였습니다.
			"A10.1": "This serial number does not exist.", 	//	해당 시리얼이 존재하지 않습니다.
			"A10.2": "The app has not been registered.", 	//	등록되지 않은 앱입니다.
			"Z00.0": "Success", 	//	성공  
			"Z00.1": "This command is not registered.", 	//	등록되지 않은 명령입니다. 
			"Z00.2": "An error has occurred from within the server.", 	//	서버 내부에서 에러가 발생했습니다. 
			"Z00.3": "The connection is terminated due to connection delay.", 	//	접속지연으로 접속을 종료합니다.
			"Z00.4": "The connected has ended abnormally.", 	//	접속이 비정상 종료되었습니다. :
			"Z00.5": "This is not a verified client.", 	//	인증된 클라이언트가 아닙니다. 
			"Z00.6": "This is an invalid input value.", 	//	잘못된 입력값입니다.
			"Z00.7": "Failed to connect to the server.", 	//	서버에 접속실패 하였습니다.
			"Z00.8": "Data reception is unsuccessful due to network instability.", 	//	네트워크가 불안하여 데이터 수신에 실패하였습니다.
			"Z10.0": "The ID is incorrect. Please check the ID.", 	//	잘못된 아이디입니다. 아이디를 확인하십시오.
			"Z10.1": "The input time limit has exceeded.", 	//	입력 대기시간이 초과하였습니다.
			"Z10.2": "The operation has been aborted on the Mobile.", 	//	모바일에서 작동을 중단하였습니다.
			"Z10.3": "An unregistered response has occurred from mobile.", 	//	등록되지 않은 모바일 동작이 발생하였습니다.
			"Z10.4": "This is a registered ID.", 	//	등록된 아이디입니다.
			"Z10.5": "Failed the send the email. Please check the email.", 	//	이메일 송신에 실패하였습니다. 이메일을 확인하십시오.
			"Z10.6": "Please check the email.", 	//	이메일을 확인하십시오.
			"Z10.7": "The session has ended.", 	//	세션이 종료되었습니다.
			"631.4": "The phone registration limit has exceeded.", 	//	한 사용자가 등록할 수 있는 최대 휴대폰 개수를 초과하였습니다.
			"711.8": "There is no authentication request.", 	//	인증시도 정보가 없습니다.
			"631.7": "This server ID already exists.", 	//	서버 아이디가 중복됩니다.
			"631.5": "This server is already connected.", 	//	이미 연결된 서버입니다.
			"631.6": "There is no connected servers.", 	//	연결된 서버가 없습니다.
			
			"001.4" : "OPA Password is not enabled.",
			"001.5" : "Unable to authenticate: Suspicious activity has been detected.(Forged data)",
			"001.6" : "Unable to authenticate: Suspicious activity has been detected.(Network sniffing)",
			"Z11.0" : "Your session has expired. Please try again after authentication."
/*			"000.0": "Success", 	//	성공  
			"000.1": "This command is not registered.", 	//	등록되지 않은 명령입니다. 
			"000.2": "An error has occurred from within the server.", 	//	서버 내부에서 에러가 발생했습니다. 
			"000.3": "The connection is terminated due to connection delay.", 	//	접속지연으로 접속을 종료합니다.
			"000.4": "The connected has ended abnormally.", 	//	접속이 비정상 종료되었습니다. :
			"000.5": "This is not a verified client.", 	//	인증된 클라이언트가 아닙니다. 
			"000.6": "This is an invalid input value.", 	//	잘못된 입력값입니다.
			"000.7": "Failed to connect to the server.", 	//	서버에 접속실패 하였습니다.
			"000.8": "Data reception is unsuccessful due to network instability.", 	//	네트워크가 불안하여 데이터 수신에 실패하였습니다. 
			"100.0": "Success", 	//	성공  
			"100.1": "This command is not registered.", 	//	등록되지 않은 명령입니다. 
			"100.2": "An error has occurred from within the server.", 	//	서버 내부에서 에러가 발생했습니다. 
			"100.3": "The connection is terminated due to connection delay.", 	//	접속지연으로 접속을 종료합니다.
			"100.4": "The connected has ended abnormally.", 	//	접속이 비정상 종료되었습니다. :
			"100.5": "This is not a verified client.", 	//	인증된 클라이언트가 아닙니다. 
			"100.6": "This is an invalid input value.", 	//	잘못된 입력값입니다.
			"100.7": "Failed to connect to the server.", 	//	서버에 접속실패 하였습니다.
			"100.8": "Data reception is unsuccessful due to network instability.", 	//	네트워크가 불안하여 데이터 수신에 실패하였습니다. 
			"110.1": "The OTP Key is not valid.", 	//	OTP 키가 정상이 아닙니다.
			"200.0": "Successful", 	//	성공  
			"200.1": "This command is not registered.", 	//	등록되지 않은 명령입니다. 
			"200.2": "An error has occurred from within the server.", 	//	서버 내부에서 에러가 발생했습니다. 
			"200.3": "The connection is terminated due to connection delay.", 	//	접속지연으로 접속을 종료합니다.
			"200.4": "The connected has ended abnormally.", 	//	접속이 비정상 종료되었습니다. :
			"200.5": "This is not a verified client.", 	//	인증된 클라이언트가 아닙니다. 
			"200.6": "This is an invalid input value.", 	//	잘못된 입력값입니다.
			"200.7": "Failed to connect to the server.", 	//	서버에 접속실패 하였습니다.
			"200.8": "Data reception is unsuccessful due to network instability.", 	//	네트워크가 불안하여 데이터 수신에 실패하였습니다.
			"210.1": "An error has occurred due to the modulated OTP Key.", 	//	변조된 OTP 키로 인하여 에러가 발생하였습니다.
			"210.2": "OTP Key not found.", 	//	OTP 키를 찾을 수 없습니다.
			"210.3": "The OTP value is incorrect.", 	//	OTP 값이 일치하지 않습니다.  
			"202.4": "The OTP value is incorrect.", 	//	OTP 값이 일치하지 않습니다. 
			"300.0": "Success", 	//	성공  
			"300.1": "This command is not registered.", 	//	등록되지 않은 명령입니다. 
			"300.2": "An error has occurred from within the server.", 	//	서버 내부에서 에러가 발생했습니다. 
			"300.3": "The connection is terminated due to connection delay.", 	//	접속지연으로 접속을 종료합니다.
			"300.4": "The connected has ended abnormally.", 	//	접속이 비정상 종료되었습니다. :
			"300.5": "This is not a verified client.", 	//	인증된 클라이언트가 아닙니다. 
			"300.6": "This is an invalid input value.", 	//	잘못된 입력값입니다.
			"300.7": "Failed to connect to the server.", 	//	서버에 접속실패 하였습니다.
			"300.8": "Data reception is unsuccessful due to network instability.", 	//	네트워크가 불안하여 데이터 수신에 실패하였습니다.
			"310.1": "Private IP has not been entered.", 	//	사설 아이피가 입력되지 않았습니다.
			"310.2": "The serial value is not valid.", 	//	시리얼값이 정상이 아닙니다.
			"310.3": "Decryption of private IP has failed.", 	//	사설 아이피의 복호화에 실패하였습니다.
			"400.0": "Success", 	//	성공  
			"400.1": "This command is not registered.", 	//	등록되지 않은 명령입니다. 
			"400.2": "An error has occurred from within the server.", 	//	서버 내부에서 에러가 발생했습니다 
			"400.3": "The connection is terminated due to connection delay.", 	//	접속지연으로 접속을 종료합니다.
			"400.4": "The connected has ended abnormally.", 	//	접속이 비정상 종료되었습니다. :
			"400.5": "This is not a verified client.", 	//	인증된 클라이언트가 아닙니다. 
			"400.6": "This is an invalid input value.", 	//	잘못된 입력값입니다.
			"400.7": "Failed to connect to the server.", 	//	서버에 접속실패 하였습니다
			"400.8": "Data reception is unsuccessful due to network instability.", 	//	네트워크가 불안하여 데이터 수신에 실패하였습니다.
			"410.1": "OTP delivery to the service server (relay) has failed.", 	//	서비스 서버(릴레이)에 OTP 전달을 실패하였습니다.
			"500.0": "Success", 	//	성공  
			"500.1": "This command is not registered.", 	//	등록되지 않은 명령입니다. 
			"500.2": "An error has occurred from within the server.", 	//	서버 내부에서 에러가 발생했습니다. 
			"500.3": "The connection is terminated due to connection delay.", 	//	접속지연으로 접속을 종료합니다.
			"500.4": "The connected has ended abnormally.", 	//	접속이 비정상 종료되었습니다. :
			"500.5": "This is not a verified client.", 	//	인증된 클라이언트가 아닙니다. 
			"500.6": "This is an invalid input value.", 	//	잘못된 입력값입니다.
			"500.7": "Failed to connect to the server.", 	//	서버에 접속실패 하였습니다.
			"500.8": "Data reception is unsuccessful due to network instability.", 	//	네트워크가 불안하여 데이터 수신에 실패하였습니다.
			"510.1": "OTP delivery to the service server (relay) has failed.", 	//	서비스 서버(릴레이)에 OTP 전달을 실패하였습니다.
			"600.0": "Success", 	//	성공  
			"600.1": "This command is not registered.", 	//	등록되지 않은 명령입니다. 
			"600.2": "An error has occurred from within the server.", 	//	서버 내부에서 에러가 발생했습니다. 
			"600.3": "The connection is terminated due to connection delay.", 	//	접속지연으로 접속을 종료합니다.
			"600.4": "The connected has ended abnormally.", 	//	접속이 비정상 종료되었습니다. : 
			"600.5": "This is not a verified client.", 	//	인증된 클라이언트가 아닙니다. 
			"600.6": "This is an invalid input value.", 	//	잘못된 입력값입니다.
			"600.7": "Failed to connect to the server.", 	//	서버에 접속실패 하였습니다.
			"600.8": "Data reception is unsuccessful due to network instability.", 	//	네트워크가 불안하여 데이터 수신에 실패하였습니다.
			"610.1": "The URI value is incorrect.", 	//	URI의 값이 올바르지 않습니다.
			"610.2": "The setting value is incorrect.", 	//	설정값이 올바르지 않습니다.
			"610.3": "The personal verification number URL is incorrect.", 	//	본인 인증번호 확인 URL이 올바르지 않습니다.
			"610.4": "This is not a permitted IP.", 	//	허용된 접속 아이피가 아닙니다.
			"620.1": "The Token is invalid.", 	//	토큰이 잘못되었습니다.
			"620.2": "The requested Token does not exist.", 	//	존재하지 않는 요청 토큰입니다.
			"620.3": "The Token does not exist.", 	//	존재하지 않는 토큰입니다.
			"620.4": "The Key has already been registered.", 	//	이미 비밀 키가 등록되었습니다.
			"620.5": "The Key information does not exist.", 	//	키 정보가 존재하지 않습니다.
			"630.1": "The company information does not exist.", 	//	회사정보가 존재하지 않습니다.
			"630.2": "The Key does not exist.", 	//	비밀 키가 존재하지 않습니다.
			"630.3": "You does not join OPA Password.", 	//	존재하지 않는 사용자입니다.
			"630.4": "The user already exists.", 	//	이미 사용자가 존재합니다.
			"630.5": "The schedule has already been registered.", 	//	이미 등록된 스케줄입니다.
			"630.6": "The policy schedule does not exist.", 	//	스케줄이 정책 스케줄이 존재하지 않습니다.
			"630.7": "The Rent Phone has already been registered.", 	//	Rent Phone이 이미 등록되었습니다.
			"630.8": "The Rent Phone does not exist.", 	//	Rent Phone이 존재하지 않습니다.
			"630.9": "The information already exists.", 	//	이미 존재하는 정보입니다.
			"631.0": "This user has been suspended.", 	//	중지된 사용자입니다.
			"631.1": "The application form does not exist.", 	//	존재하지 않는 신청서 입니다.
			"631.2": "The scheduled user does not exist.", 	//	스케줄 대상 사용자가 존재하지 않습니다.
			"631.3": "You do not have permission.", 	//	권한이 없습니다.
			"700.0": "Success", 	//	성공  
			"700.1": "This command is not registered.", 	//	등록되지 않은 명령입니다. 
			"700.2": "An error has occurred from within the server.", 	//	서버 내부에서 에러가 발생했습니다. 
			"700.3": "The connection is terminated due to connection delay.", 	//	접속지연으로 접속을 종료합니다.
			"700.4": "The connected has ended abnormally.", 	//	접속이 비정상 종료되었습니다. :
			"700.5": "This is not a verified client.", 	//	인증된 클라이언트가 아닙니다. 
			"700.6": "This is an invalid input value.", 	//	잘못된 입력값입니다.
			"700.7": "Failed to connect to the server.", 	//	서버에 접속실패 하였습니다.
			"700.8": "Data reception is unsuccessful due to network instability.", 	//	네트워크가 불안하여 데이터 수신에 실패하였습니다.
			"710.1": "The password or ID is incorrect.", 	//	잘못된 패스워드 혹은 아이디입니다.
			"710.2": "The password is incorrect.", 	//	잘못된 패스워드입니다.
			"710.3": "The ID is already in use.", 	//	이미 사용중인 아이디입니다.
			"710.4": "The user does not exist.", 	//	사용자가 존재하지 않습니다.
			"710.5": "The phone number is incorrectly formatted.", 	//	잘못된 형식의 전화번호 입니다.
			"710.6": "The password is incorrectly formatted.", 	//	잘못된 형식의 비밀번호 입니다. 
			"710.7": "The password is incorrectly formatted.", 	//	잘못된 형식의 비밀번호 입니다. 
			"710.8": "The user does not exist.", 	//	존재하지 않는 사용자입니다.
			"710.9": "The phone number has already been registered.", 	//	이미 등록된 전화번호 입니다.
			"711.1": "The serial number is invalid.", 	//	잘못된 시리얼 입니다. 
			"711.2": "An error has occurred in the policy settings.", 	//	정책설정에서 에러가 발생했습니다.
			"711.3": "The policy could not verify the country.", 	//	정책에서 국가를 검증하지 못하였습니다.
			"711.4": "Authentication has been failed 5 times. Please contact the administrator.", 	//	5회의 에러가 발생하였습니다. 관리자에게 해제를 요청 하십시오.  
			"711.5": "Connection has been blocked due to an attempt to access via a restricted IP.", 	//	접근금지 아이피로 접근을 시도하여 접속을 차단합니다.
			"711.6": "Waiting for response from mobile.", 	//	모바일 동작을 기다리는 중입니다.
			"711.7": "The mobile has already responsed.", 	//	이미 모바일 동작이 처리 되었습니다.
			"711.8": "The Service OTP has not been requested.", 	//	서비스 OTP가 요청되지 않았습니다.
			"711.9": "The Backup OTP has not been issued.", 	//	백업 OTP가 발급되지 않았습니다.
			"712.1": "The OTP is incorrect.", 	//	OTP가 일치 하지 않습니다.
			"712.2": "There are no registered phone numbers.", 	//	등록된 전화번호가 없습니다.
			"712.3": "Connected via a restricted IP.", 	//	접근금지 아이피에서 접속하였습니다.
			"712.4": "The License has expired. Please renew the License.", 	//	라이센스가 만료되었거나 라이센스의 허용사용자 수를 초과 하였습니다. 라이센스를 갱신하십시오.
			"712.5": "An error has occurred while encrypting the Key.", 	//	비밀 키를 암호화하는 동안 에러가 발생하였습니다.
			"731.0": "This user has been suspended.", 	//	중지된 사용자입니다.
			"800.0": "Success", 	//	성공  
			"800.1": "This command is not registered.", 	//	등록되지 않은 명령입니다. 
			"800.2": "An error has occurred from within the server.", 	//	서버 내부에서 에러가 발생했습니다. 
			"800.3": "The connection is terminated due to connection delay.", 	//	접속지연으로 접속을 종료합니다.
			"800.4": "The connected has ended abnormally.", 	//	접속이 비정상 종료되었습니다. :
			"800.5": "This is not a verified client.", 	//	인증된 클라이언트가 아닙니다. 
			"800.6": "This is an invalid input value.", 	//	잘못된 입력값입니다.
			"800.7": "Failed to connect to the server.", 	//	서버에 접속실패 하였습니다.
			"800.8": "Data reception is unsuccessful due to network instability.", 	//	네트워크가 불안하여 데이터 수신에 실패하였습니다.
			"810.1": "An error has occurred while sending the mail.", 	//	메일 송신 중에 에러가 발생하였습니다
			"810.2": "An error has occurred while sending the SMS.", 	//	SMS 발송 중에 에러가 발생하였습니다.
			"810.3": "An error has occurred while sending the PUSH notification.", 	//	PUSH 발송 중에 에러가 발생하였습니다.
			"810.4": "An error has occurred while searching the IP information.", 	//	아이피 정보 조회 시에 에러가 발생하였습니다.
			"900.0": "Success", 	//	성공  
			"900.1": "This command is not registered.", 	//	등록되지 않은 명령입니다. 
			"900.2": "An error has occurred from within the server.", 	//	서버 내부에서 에러가 발생했습니다. 
			"900.3": "The connection is terminated due to connection delay.", 	//	접속지연으로 접속을 종료합니다.
			"900.4": "The connected has ended abnormally.", 	//	접속이 비정상 종료되었습니다. :
			"900.5": "This is not a verified client.", 	//	인증된 클라이언트가 아닙니다. 
			"900.6": "This is an invalid input value.", 	//	잘못된 입력값입니다.
			"900.7": "Failed to connect to the server.", 	//	서버에 접속실패 하였습니다.
			"900.8": "Data reception is unsuccessful due to network instability.", 	//	네트워크가 불안하여 데이터 수신에 실패하였습니다.
			"A00.0": "Success", 	//	성공  
			"A00.1": "This command is not registered.", 	//	등록되지 않은 명령입니다. 
			"A00.2": "An error has occurred from within the server.", 	//	서버 내부에서 에러가 발생했습니다. 
			"A00.3": "The connection is terminated due to connection delay.", 	//	접속지연으로 접속을 종료합니다.
			"A00.4": "The connected has ended abnormally.", 	//	접속이 비정상 종료되었습니다. :
			"A00.5": "This is not a verified client.", 	//	인증된 클라이언트가 아닙니다. 
			"A00.6": "This is an invalid input value.", 	//	잘못된 입력값입니다.
			"A00.7": "Failed to connect to the server.", 	//	서버에 접속실패 하였습니다.
			"A00.8": "Data reception is unsuccessful due to network instability.", 	//	네트워크가 불안하여 데이터 수신에 실패하였습니다.
			"A10.1": "This serial number does not exist.", 	//	해당 시리얼이 존재하지 않습니다.
			"A10.2": "The app has not been registered.", 	//	등록되지 않은 앱입니다.
			"Z00.0": "Success", 	//	성공  
			"Z00.1": "This command is not registered.", 	//	등록되지 않은 명령입니다. 
			"Z00.2": "An error has occurred from within the server.", 	//	서버 내부에서 에러가 발생했습니다. 
			"Z00.3": "The connection is terminated due to connection delay.", 	//	접속지연으로 접속을 종료합니다.
			"Z00.4": "The connected has ended abnormally.", 	//	접속이 비정상 종료되었습니다. :
			"Z00.5": "This is not a verified client.", 	//	인증된 클라이언트가 아닙니다. 
			"Z00.6": "This is an invalid input value.", 	//	잘못된 입력값입니다.
			"Z00.7": "Failed to connect to the server.", 	//	서버에 접속실패 하였습니다.
			"Z00.8": "Data reception is unsuccessful due to network instability.", 	//	네트워크가 불안하여 데이터 수신에 실패하였습니다.
			"Z10.0": "The ID is incorrect. Please check the ID.", 	//	잘못된 아이디입니다. 아이디를 확인하십시오.
			"Z10.1": "The input time limit has exceeded.", 	//	입력 대기시간이 초과하였습니다.
			"Z10.2": "The operation has been aborted on the Mobile.", 	//	모바일에서 작동을 중단하였습니다.
			"Z10.3": "An unregistered response has occurred from mobile.", 	//	등록되지 않은 모바일 동작이 발생하였습니다.
			"Z10.4": "This is a registered ID.", 	//	등록된 아이디입니다.
			"Z10.5": "Failed the send the email. Please check the email.", 	//	이메일 송신에 실패하였습니다. 이메일을 확인하십시오.
			"Z10.6": "Please check the email.", 	//	이메일을 확인하십시오.
			"Z10.7": "The session has ended.", 	//	세션이 종료되었습니다.
			"631.4": "The phone registration limit has exceeded.", 	//	한 사용자가 등록할 수 있는 최대 휴대폰 개수를 초과하였습니다.
			"711.8": "There is no authentication request.", 	//	인증시도 정보가 없습니다.
			"631.7": "This server ID already exists.", 	//	서버 아이디가 중복됩니다.
			"631.5": "This server is already connected.", 	//	이미 연결된 서버입니다.
			"631.6": "There is no connected servers.", 	//	연결된 서버가 없습니다.
			
			"001.4" : "OPA Password is not enabled.",
			"001.5" : "Unable to authenticate: Suspicious activity has been detected.(Forged data)",
			"001.6" : "Unable to authenticate: Suspicious activity has been detected.(Network sniffing)",
			"Z11.0" : "Your session has expired. Please try again after authentication."*/
	};
	errmsg["630.3"] = "You does not join " + _AutoPasswordConfig.productName;
	errmsg["001.4"] = _AutoPasswordConfig.productName + " is not enabled.";
	errmsg["Z10.0"] = "You does not join " + _AutoPasswordConfig.productName;
	app.get = function(code) {
		if (errmsg[code]) return errmsg[code]; 
		return "Unregistered error. Please contact the administrator.("+code+")";
	}
	return app;
})(OTPError||$)