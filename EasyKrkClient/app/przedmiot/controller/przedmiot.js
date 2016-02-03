angular.module('application.przedmiot', [])
.controller('PrzedmiotController', ['$scope','$window', 'uiGridValidateService', function ($scope, $window,uiGridValidateService) {	
	
			$scope.przedmiot = {
				/*program : 'guest',
				cykl : '2015/2016',
				nazwaPolska : "Nazwa",
				nazwaAngielska : "nazwa",
				kod : "kod",
				modul : "modul",
				opiekun : ""*/
			};
			
			

			$scope.prowadzacy = ["john", "bill", "charlie", "robert", "alban", "oscar", "marie", "celine", "brad", "drew", "rebecca", "michel", "francis", "jean", "paul", "pierre", "nicolas", "alfred", "gerard", "louis", "albert", "edouard", "benoit", "guillaume", "nicolas", "joseph"];
			$scope.maxLiczbaSemestrow = 7;
			
			$scope.formyZajec = [ {
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
			
			$scope.moduly = [{nazwa: "Obowiązkowy - TI"}, {nazwa:"Obowiązkowy-IT"},{nazwa:"Wybieralny - IO"}];
			$scope.cykle = [{nazwa: "2014/2015"}, {nazwa:"2015/2016"},{nazwa:"2016/2017"}];

			
			uiGridValidateService.setValidator('startWith',
				    function(argument) {
				      return function(newValue, oldValue, rowEntity, colDef) {
				        if (!newValue) {
				          return true; // We should not test for existence here
				        } else {
				          return newValue.startsWith(argument);
				        }
				      };
				    },
				    function(argument) {
				      return 'You can only insert names starting with: "' + argument + '"';
				    }
				  );
			
			uiGridValidateService.setValidator('lowerOrEqualThan',
				    function(argument) {
				      return function(newValue, oldValue, rowEntity, colDef) {
				        if (!newValue) {
				          return true; // We should not test for existence here
				        } else {
				          return newValue<=argument;
				        }
				      };
				    },
				    function(argument) {
				      return 'You can only insert numbers low or equal than: "' + argument + '"';
				    }
				  );
			
			uiGridValidateService.setValidator('higherOrEqualThan',
				    function(argument) {
				      return function(newValue, oldValue, rowEntity, colDef) {
				        if (!newValue) {
				          return true; // We should not test for existence here
				        } else {
				          return newValue >= argument;
				        }
				      };
				    },
				    function(argument) {
				      return 'You can only insert numbers high or equal than: "' + argument + '"';
				    }
				  );
			
			uiGridValidateService.setValidator('onlyOneForm',
				    function(argument) {
				      return function(newValue, oldValue, rowEntity, colDef) {
				        if (!newValue) {
				          return true; // We should not test for existence here
				        } else {				        	
				          return $.inArray(newValue, $scope.zajecia.forma) == -1;
				        }
				      };
				    },
				    function(argument) {
				      return 'You can only insert undefined in table form: "' + argument + '"';
				    }
				  );
			
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
					editDropdownOptionsArray : $scope.formyZajec,
					validators: {required: true, onlyOneForm:true},
					cellTemplate: 'ui-grid/cellTitleValidator'	
				}, {
					field : 'liczba',
					displayName : i18n.t("przedmiot.lGodzin"),
					validators: {required: true, higherOrEqualThan:1, lowerOrEqualThan:3},
					cellTemplate: 'ui-grid/cellTooltipValidator'
				}, {
					field : 'ects',
					displayName : i18n.t("przedmiot.ects"),
					validators: {required: true, higherOrEqualThan:11, lowerOrEqualThan:33},
					cellTemplate: 'ui-grid/cellTitleValidator'
				}, {
					field : 'zaliczenie',
					displayName : i18n.t("przedmiot.zaliczenie"),
					validators: {required: true},
					cellTemplate: 'ui-grid/cellTitleValidator'
				}, {
					field : 'semestr',
					displayName : i18n.t("przedmiot.semestr"),
					validators: {required: true, higherOrEqualThan:1, lowerOrEqualThan:$scope.maxLiczbaSemestrow},
					cellTemplate: 'ui-grid/cellTitleValidator'
				} ]

			};
						
			$scope.gridOptions.onRegisterApi = function(gridApi){
		         //set gridApi on scope
		         $scope.gridApi = gridApi;
		         gridApi.validate.on.validationFailed($scope,function(rowEntity, colDef, newValue, oldValue){
		          /* $window.alert('rowEntity: '+ rowEntity + '\n' +
		                         'colDef: ' + colDef + '\n' + 
		                         'newValue: ' + newValue + '\n' +
		                         'oldValue: ' + oldValue);*/
		         });
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

			$scope.dodaj = function() {
				var n = $scope.gridOptions.data.length;
				if (n >= $scope.formyZajec.length) {

				} else {
					$scope.gridOptions.data.push({
						"forma" : "",
						"liczba" : "",
						"ects" : "",
						"zaliczenie" : '',
						"semestr" : ''
					});
				}
			};

			$scope.dodajEK = function() {
				var n = $scope.gridOptionsEK.data.length;
				$scope.gridOptionsEK.data.push({
					"id" : "",
					"opis" : "",
					"kategoria" : ""
				});
			};

		}])
.filter('mapFormy', function() {	
	var mappingForm = {
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
			return mappingForm[input];
		}
	};
	
})

