angular.module('application.listaPrzedmioty', []).controller(
		'ListaPrzedmiotController', function($scope) {

			$scope.przedmioty = [ {
				kod : "INZ00105",
				nazwa : "Projektowanie systemów",
				opiekun : "Jan Kowalski"
			}, {
				kod : "INZ02305",
				nazwa : "Projektowanie interfejsu",
				opiekun : "Kacper Kowalski"
			} ];

			$scope.gridOptionsPrzedmiot = {};
			$scope.gridOptionsPrzedmiot = {
				data : $scope.przedmioty,
				enableHorizontalScrollbar : 0,
				enableVerticalScrollbar : 2,
				enableFullRowSelection: true,
		        enableRowSelection: true,
		        multiSelect: false,
		        enableRowHeaderSelection: false,
				columnDefs : [ {
					field : 'kod',
					displayName : i18n.t("przedmiot.kod"),
				}, {
					field : 'nazwa',
					displayName : i18n.t("przedmiot.nazwaPolska")
				}, {
					field : 'opiekun',
					displayName : i18n.t("przedmiot.opiekun"),
				} ]

			};
			
			$scope.changeView = function(przedmiot){
			    var earl = '/przedmiot/' + przedmiot;
			    $location.path(earl);
			}
		});
