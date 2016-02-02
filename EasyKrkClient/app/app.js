
var app = angular.module('application', ['ngRoute','ngTouch', 'ui.grid','application.przedmiot', 'ui.grid.edit', 'ui.grid.cellNav','ui.grid.selection','ui.grid.validate','application.listaPrzedmioty',"application.KEK"])
.config(function($routeProvider) {
	$routeProvider
	.when('/przedmiot/:id', {
		templateUrl : 'app/przedmiot/przedmiot.html',
		controller  : 'PrzedmiotController'
	})
	.when('/listaPrzedmioty', {
		templateUrl : 'app/przedmiot/listaPrzedmioty.html',
		controller  : 'ListaPrzedmiotController'
	})
	.when('/kierunkowe',{
		templateUrl: "app/KEK/template/KEK.html",
		controller: "KEKController"
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