var app=angular.module("application.KEK");
app.factory("KEKLookUpServiceFactory",["$resource","$http", function($resource,$http){
	
		
	getKEKByGet=function(programKsztalceniaId,kategoriaId,opis,obszar){
		return $http.get("/backend/KEK/getAll/"+programKsztalceniaId+"/"+kategoriaId,
		{params:{opis:opis}});
	}
	
	getKategoriaGet=function(){
		return $http.get('/backend/basics/kategoria');
	};
		
		return{
			getKEKByGet:getKEKByGet,
			getKategoriaGet:getKategoriaGet
		};
}]);
		