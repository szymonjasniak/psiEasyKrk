angular.module("application.login").factory("AuthService",["$http","$q","messageService", function($http,$q,messageService) {
	
	var token='';
	var validDue=0;
	 getNewToken=function(u,p){
		 
		 return $http.post("/backend/rest/auth", {}, {headers:{'X-Auth-Username':u,'X-Auth-Password':p}})
		 .then(function(value) {
			 token = value.data.token;
			 validDue=new Date().getMilliseconds()+value.data.valid;
		 },messageService.genericErrorHandler) 
	 }
	 isTokenValid=function(){
		 var now=new Date().getMilliseconds();
		 
		 return validDue>now;
	 }
	 
	 hasToken=function(){
		 return (token!==undefined && token!==null && token!=='');
	 }
	 shouldRedirect=function(){
		 return !(hasToken() && isTokenValid());
	 }
	 eraseToken=function(){
		 token='';
		 validDue=0;
	 }
	 return{
		 
		 getNewToken:getNewToken,
		 hasToken:hasToken,
	 	 getToken:function(){return token},
	 	 isTokenValid:isTokenValid,
	 	 shouldRedirect:shouldRedirect,
	 	 eraseToken:eraseToken
	 	 
	 }
}])