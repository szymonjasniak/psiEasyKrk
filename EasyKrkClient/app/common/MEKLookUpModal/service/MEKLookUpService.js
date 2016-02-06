var app=angular.module("application.KEK");
app.factory("MEKLookUpServiceFactory",["$resource","$http", function($resource,$http){
	
	getObszarGet=function(){
		return $http.get('/backend/basics/obszar');
	};
	
	
	getMEKByGet=function(programKsztalceniaId,kategoriaId,opis,obszar){
		return $http.get("/backend/MEK/getAll/"+programKsztalceniaId+"/"+kategoriaId,
		{params:{opis:opis,obszar:obszar}});
	}
		
		return{
			getMEKByGet:getMEKByGet
		};
}]);
		