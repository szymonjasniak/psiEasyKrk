var app=angular.module("application.KEK");
app.factory("KEKLookUpServiceFactory",["$resource","$http", function($resource,$http){
	
		
	getKEKByGet=function(programKsztalceniaId,kategoriaId,opis,obszar){
		return $http.get("/backend/KEK/getAll/"+programKsztalceniaId,
		{params:{opis:opis, kategoria:kategoriaId}});
	}
	
	getKategoriaGet=function(){
		return $http.get('/backend/basics/kategoria');
	};
		
		return{
			getKEKByGet:getKEKByGet,
			getKategoriaGet:getKategoriaGet
		};
}]);
		