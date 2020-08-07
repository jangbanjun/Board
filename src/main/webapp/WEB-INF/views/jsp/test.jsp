<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script>
		(function phoneBattery() {
			function createPhone() {
				let battery = 0;
				return {
					rechargeBattery : function() {
						battery = 100;
					},
					showRemainBattery : function() {
						return battery;
					}
				}
			}
			const phone1 = createPhone();
			const phone2 = createPhone();
		})();


// 		singletone

var userModule = (function () {
	var users = [];
	var userId = 0;
		return {
			create: (username, password) => {
				var user = { id: userId, username, password };
					users.push(user);
					userId++;
				return user;
			},
			get: (username) => {
				var targetUser;
					users.forEach((user) => {
						if (user.username === username) {
							targetUser = user;
						}
					});
			return targetUser;
			}
		};
	})();

console.log(userModule.create('Julia', 'hello123'));
console.log(userModule.create('Julia', 'hello123'));
console.log(userModule.create('Julia', 'hello123'));
console.log(userModule.create('Paul', 'hello456'));


	</script>
</body>
</html>