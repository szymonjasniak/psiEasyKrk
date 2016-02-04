angular.module('application.przedmiot').factory(
		'przedmiotService',
		[
				'$http',
				function($http) {

					var selectedPrzedmiot = {};
					var allPrzedmioty = {};
					var formyProwadzeniaZajec = {};

					
					function allPrzedmioty() {
						console.log('Getting przedmioty...');
						return $http.get("backend/przedmiot/getAll").success(
								function(response) {
									console.log('Returned ' + response.length);
								});
					}
					
					function getFormyProwadzeniaZajec(){
						console.log('Getting formy prowadzenia zajec');
						return $http.get("backend/przedmiot/getFormyProwadzenia").success(
								function(response) {
									console.log('Returned ' + response.length);
								});
					}

					
					return {
						allPrzedmioty : allPrzedmioty,
						getFormyProwadzeniaZajec : getFormyProwadzeniaZajec,
						getSelectedPrzedmiot : function() {
							return selectedPrzedmiot;
						},
						setSelectedPrzedmiot : function(value) {
							selectedPrzedmiot = value;
						},
						getAllPrzedmioty : function() {
							return allPeople;
						},
						setAllPrzedmioty : function(allPrzedmiotyMap) {
							allPrzedmioty = allPrzedmiotyMap;
						}
					};
				} ])