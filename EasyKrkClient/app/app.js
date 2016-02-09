
var app = angular.module('application', ["application.login",'ngRoute','ngTouch', 'ui.grid','application.przedmiot','application.message',
                                         'ui.grid.edit', 'ui.grid.cellNav','ui.grid.selection','ui.grid.validate',
                                         'application.listaPrzedmioty',"application.KEK"])
.config(['$routeProvider','$injector',function($routeProvider,$injector) {
	
	$routeProvider
	.when('/przedmiot/:id', {
		templateUrl : 'app/przedmiot/template/przedmiot.html',
		controller  : 'PrzedmiotController'
	})
	.when('/listaPrzedmioty', {
		templateUrl : 'app/przedmiot/template/listaPrzedmiotow.html',
		controller  : 'ListaPrzedmiotController'
	})
	.when('/kierunkowe',{
		templateUrl: "app/KEK/template/KEK.html",
		controller: "KEKController"
	}).
	when('/login',{
		templateUrl: "app/auth/template/login.html",
		controller: "loginCtrl"
	})
	.otherwise({
		redirectTo: "/login"
	})
}])
.service('translateService', function(){
	language_complete = navigator.language.split("-");
	language = (language_complete[0]);
	console.log("Language (service): %s", language);
	var i18 = i18n.init({ lng: language, debug: true, getAsync:false });
})
.directive("translate", function(translateService){
	return function(scope, element, attrs){
			  if(attrs.typeofelement){
				  element.attr(attrs.typeofelement, i18n.t(attrs.text));
			  }
			  else if(attrs.text){
				  element.text(i18n.t(attrs.text));
			  }	
			  else if(attrs.label){
				  element.text(i18n.t(attrs.label));
			  }else{
				  var t=element.text()
				  element.text(i18n.t(t));
			  }	
	}
})
.directive('autocomplete', function($timeout) {

    return {
        restrict : 'A',
        scope:{
        	src: '=autoSource'
        },
        require : 'ngModel',
        link : function(scope, iElement, iAttrs) {
            iElement.autocomplete({
                source: scope.src,
                select: function() {
                    $timeout(function() {
                      iElement.trigger('input');
                    }, 0);
                }
            });
    }
    }})
    .factory("authInterceptor",["$injector","$location",function($injector,$location){
    	
    	var interceptors={
    			request:function(config){
    				if(_.startsWith(config.url,"/backend")){
    			var AuthService=$injector.get("AuthService");
    			if(AuthService.hasToken()){
    				config.headers['X-Auth-Token']=AuthService.getToken();
    			}}
    				return config;
    			},
    			
//    			responseError: function(response){
//    				var AuthService=$injector.get("AuthService");	
//    				if(response.status === 401 && !AuthService.hasToken()){
//    					$location.path("/login");
//    				}
//    				else if(response.status === 410 && AuthService.hasToken() && !AuthService.isTokenValid()){
//    					$location.path("/login");
//    				}
//    				return response.data;
//    			}
    			
    	}
    	
    	return interceptors;
    }])
    .config(["$httpProvider",function($httpProvider){
    	
    	$httpProvider.interceptors.push("authInterceptor");
    }]);
    