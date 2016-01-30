var app = angular.module('application', ['ngRoute','ngTouch', 'ui.grid','application.przedmiot', 'ui.grid.edit', 'ui.grid.cellNav'])
.config(function($routeProvider) {
	$routeProvider
	.when('/przedmiot', {
		templateUrl : 'app/przedmiot/przedmiot.html',
		controller  : 'PrzedmiotController'
	})
	.otherwise({
		redirectTo	: '/'
	})
})
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
			  else{
				  element.text(i18n.t(attrs.text));  
			  }		
	}
})
;