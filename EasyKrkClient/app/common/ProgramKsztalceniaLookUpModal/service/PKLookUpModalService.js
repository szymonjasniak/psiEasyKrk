var app=angular.module("application.KEK");
app.factory("PKLookUpServiceFactory",["$resource","$http", function($resource,$http){
	
	getWydzialGet=function(){
		return $http.get('/backend/basics/wydzial');
	};
	
	getSpecjalnoscGet=function(){
		return $http.get("/backend/basics/specjalnosc");
	};
	getCyklGet=function(){
		return $http.get("/backend/basics/cykl");
	};
	
	getKierunekGet=function(){
		return $http.get('/backend/basics/kierunek');
	};
	
	getPKByGet=function(wydzial,specjalnosc,kierunek,stopien,forma,cykl){
		
		return $http.get("/backend/PK/getAll",{
			params: {wydzial:wydzial,specjalnosc:specjalnosc,kierunek:kierunek,stopien:stopien,forma:forma,cykl:cykl}
		});
		}
		
	return{
		
		getSpecjalnoscGet:getSpecjalnoscGet,
		getCyklGet:getCyklGet,
		getKierunekGet:getKierunekGet,
		getWydzialGet:getWydzialGet,
		getPKByGet:getPKByGet

	};

	
	
}])


