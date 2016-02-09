/**
 * http://usejsdoc.org/
 */var app=angular.module("application.login",[]);
 
 app.controller("loginCtrl",["$scope","AuthService","$location", function($scope,AuthService,$location) {
 	
	 $scope.user='';
	 $scope.pass='';
	 $scope.tokenValid=!AuthService.shouldRedirect();
	 
	 $scope.login=function(){
		 AuthService.getNewToken($scope.user,$scope.pass).then(function(){
			 if(AuthService.hasToken()){
				 $location.path("/kierunkowe");
			 }
		 })
		 }
		 
	$scope.logout=function(){
			 AuthService.eraseToken();
			 $scope.tokenValid=!AuthService.shouldRedirect();
		 }
 }]);
 
