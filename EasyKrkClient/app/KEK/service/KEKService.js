var app = angular.module("application.KEK")
.factory("KEKServiceFactory",["$http",function($http){

		 getKategorie=function(){
			return $http.get("/backend/basics/kategoria")
		};
		return{
			getKategorieGet:getKategorie
		}
}])
