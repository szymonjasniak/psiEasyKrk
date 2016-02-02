angular.module('application.przedmiot', []).controller('PrzedmiotController',
		function($scope) {

			$scope.przedmiot = {
				program : 'guest',
				cykl : '2015/2016',
				nazwaPolska : "Nazwa",
				nazwaAngielska : "nazwa",
				kod : "kod",
				modul : "modul",
				opiekun : ""
			};

			$scope.possibleForms = [ {
				id : 1,
				'forma' : "W"
			}, {
				id : 2,
				'forma' : "C"
			}, {
				id : 3,
				'forma' : "L"
			}, {
				id : 4,
				'forma' : "S"
			}, {
				id : 5,
				'forma' : "P"
			} ];

			$scope.zajecia = [ {
				"forma" : '1',
				"liczba" : '2',
				"ects" : '3',
				"cnps" : '2',
				"zaliczenie" : 'E',
				"semestr" : '1'
			}, {
				"forma" : '3',
				"liczba" : '2',
				"ects" : '4',
				"cnps" : '3',
				"zaliczenie" : 'Z',
				"semestr" : '1'
			}, {
				"forma" : '2',
				"liczba" : '2',
				"ects" : '3',
				"cnps" : '2',
				"zaliczenie" : 'Z',
				"semestr" : '1'
			} ];

			$scope.ek = [];

			$scope.gridOptions = {};
			$scope.gridOptions.enableCellEditOnFocus = true;
			$scope.gridOptions = {
				data : $scope.zajecia,
				enableHorizontalScrollbar : 0,
				enableVerticalScrollbar : 0,
				columnDefs : [ {
					field : 'forma',
					displayName : i18n.t("przedmiot.forma"),
					width : 70,
					cellFilter : 'mapFormy',
					editableCellTemplate : 'ui-grid/dropdownEditor',
					editDropdownValueLabel : 'forma',
					editDropdownOptionsArray : $scope.possibleForms
				}, {
					field : 'liczba',
					displayName : i18n.t("przedmiot.lGodzin")
				}, {
					field : 'ects',
					displayName : i18n.t("przedmiot.ects")
				}, {
					field : 'cnps',
					displayName : i18n.t("przedmiot.cnps")
				}, {
					field : 'zaliczenie',
					displayName : i18n.t("przedmiot.zaliczenie")
				}, {
					field : 'semestr',
					displayName : i18n.t("przedmiot.semestr")
				} ]

			};

			$scope.gridOptionsEK = {};
			$scope.gridOptionsEK.enableCellEditOnFocus = true;
			$scope.gridOptionsEK = {
				data : $scope.ek,
				enableHorizontalScrollbar : 0,
				enableVerticalScrollbar : 2,
				columnDefs : [ {
					field : 'id',
					displayName : i18n.t("efekt.id"),
					width : 60
				}, {
					field : 'opis',
					displayName : i18n.t("efekt.opis")
				}, {
					field : 'kategoria',
					displayName : i18n.t("efekt.kategoria")
				} ]

			};

			$scope.addData = function() {
				var n = $scope.gridOptions.data.length;
				if (n >= $scope.possibleForms.length) {

				} else {
					$scope.gridOptions.data.push({
						"forma" : "",
						"liczba" : "",
						"ects" : "",
						"cnps" : "",
						"zaliczenie" : '',
						"semestr" : ''
					});
				}
			};

			$scope.addDataEK = function() {
				var n = $scope.gridOptionsEK.data.length;
				$scope.gridOptionsEK.data.push({
					"id" : "",
					"opis" : "",
					"kategoria" : ""
				});
			};

		}).filter('mapFormy', function() {
	var genderHash = {
		1 : 'W',
		2 : 'C',
		3 : 'L',
		4 : 'S',
		5 : 'P'
	};

	return function(input) {
		if (!input) {
			return '';
		} else {
			return genderHash[input];
		}
	};
});