var app = angular.module("application.KEK")
.factory("KEKServiceFactory",["$http",function($http){

		 getKategorie=function(){
			return $http.get("/backend/basics/kategoria")
		};
		
		postKEK=function(pkId,cykl,mekIds,katId,opis,okId){
			var mTemps=mekIds.map(function(item){
				return {id:item.ID}
			})
			var pkIn={programKsztalceniaId:pkId,cykl:cykl,mekIds:mTemps,kategoriaId:katId,opis:opis,obszarKsztalceniaId:okId};
			
			return $http.post("/backend/KEK",pkIn);
		}
		return{
			getKategorieGet:getKategorie,
			addKEK:postKEK
		}
}])
