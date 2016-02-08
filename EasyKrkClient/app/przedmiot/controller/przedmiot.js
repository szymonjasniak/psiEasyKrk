
angular
		.module('application.przedmiot',
				[ 'ngAnimate', 'ui.bootstrap', 'ngResource', 'angularSpinner' ])
		.controller(
				'PrzedmiotController',
				[
						'$scope',
						'$window',
						'uiGridValidateService',
						'przedmiotService',
						"$uibModal",
						"PKLookUpServiceFactory",
						"KEKLookUpServiceFactory",
						function($scope, $window, uiGridValidateService,
								przedmiotService, $uibModal,
								PKLookUpServiceFactory, KEKLookUpServiceFactory) {

							$scope.przedmiot = przedmiotService
									.getSelectedPrzedmiot();
							$scope.przedmiot.program = przedmiotService
									.getSelectedProgram();
							przedmiotService.getModuly(
									$scope.przedmiot.program.id).then(
									function(response) {
										$scope.moduly = response.data;
									});
							$scope.getOpiekunowie = function() {
								return przedmiotService.getOpiekunowie().then(
										function(response) {
											return response.data.map(function(
													item) {
												return item.fullName;
											})
										})
							};

							przedmiotService.getOpiekunowie().then(
									function(response) {
										$scope.opiekunowie = response.data
									});

							przedmiotService.getFormyProwadzeniaZajec().then(
									function(response) {
										// $scope.formyZajec = response.data;
									});

							var formyZajec = [ {
								id : 1,
								label : "W"
							}, {
								id : 2,
								label : "C"
							}, {
								id : 3,
								label : "L"
							}, {
								id : 4,
								label : "S"
							}, {
								id : 5,
								label : "P"
							} ];
							
							$scope.getForma = function(n){
								return formyZajec[_.findIndex(formyZajec, ['id', n])].label;
							}

							var formyZaliczenia = [ {
								id : 1,
								label : "E"
							}, {
								id : 2,
								label : "Z"
							} ];
							$scope.ek = [];
							$scope.cykle = [];

							PKLookUpServiceFactory.getCyklGet().then(
									function(response) {
										$scope.cykle = response.data
												.map(function(item) {
													return item.nazwa;
												})
										$scope.cykl = $scope.cykle[0];
									})

							uiGridValidateService
									.setValidator(
											'startWith',
											function(argument) {
												return function(newValue,
														oldValue, rowEntity,
														colDef) {
													if (!newValue) {
														return true; 
													} else {
														return newValue
																.startsWith(argument);
													}
												};
											},
											function(argument) {
												return 'You can only insert names starting with: "'
														+ argument + '"';
											});

							uiGridValidateService
									.setValidator(
											'lowerOrEqualThan',
											function(argument) {
												return function(newValue,
														oldValue, rowEntity,
														colDef) {
													if (!newValue) {
														return true;
													} else {
														return newValue <= argument;
													}
												};
											},
											function(argument) {
												return 'You can only insert numbers low or equal than: "'
														+ argument + '"';
											});

							uiGridValidateService
									.setValidator(
											'higherOrEqualThan',
											function(argument) {
												return function(newValue,
														oldValue, rowEntity,
														colDef) {
													if (!newValue) {
														return true;
													} else {
														return newValue >= argument;
													}
												};
											},
											function(argument) {
												return 'You can only insert numbers high or equal than: "'
														+ argument + '"';
											});

							uiGridValidateService
									.setValidator(
											'onlyOneForm',
											function(argument) {
												return function(newValue,
														oldValue, rowEntity,
														colDef) {
													if (!newValue) {
														return true; 
													} else {
														return $
																.inArray(
																		newValue,
																		$scope.przedmiot.zajecia.forma) == -1;
													}
												};
											},
											function(argument) {
												return 'You can only insert undefined in table form: "'
														+ argument + '"';
											});

							$scope.gridOptions = {};
							$scope.gridOptions.enableCellEditOnFocus = true;

							$scope.gridOptions = {
								data : $scope.przedmiot.zajecia,
								enableHorizontalScrollbar : 0,
								enableVerticalScrollbar : 0,
								columnDefs : [
										{
											field : 'forma',
											displayName : i18n
													.t("przedmiot.forma"),
											width : 70,
											cellFilter : 'mapFormy',
											editableCellTemplate : 'ui-grid/dropdownEditor',
											editDropdownValueLabel : 'label',
											editDropdownOptionsArray : formyZajec,
											validators : {
												required : true,
												onlyOneForm : true
											},
											cellTemplate : 'ui-grid/cellTitleValidator'
										},
										{
											field : 'liczba',
											displayName : i18n
													.t("przedmiot.lGodzin"),
											validators : {
												required : true,
												higherOrEqualThan : 1,
												lowerOrEqualThan : 20
											},
											cellTemplate : 'app/przedmiot/template/cellTooltipValidator'
										},
										{
											field : 'ects',
											displayName : i18n
													.t("przedmiot.ects"),
											validators : {
												required : true,
												higherOrEqualThan : 1,
												lowerOrEqualThan : 30
											},
											cellTemplate : 'ui-grid/cellTitleValidator'
										},
										{
											field : 'zaliczenie',
											cellFilter : 'mapZaliczenie',
											editableCellTemplate : 'ui-grid/dropdownEditor',
											editDropdownValueLabel : 'label',
											editDropdownOptionsArray : formyZaliczenia,
											displayName : i18n
													.t("przedmiot.zaliczenie"),
											validators : {
												required : true
											},
											cellTemplate : 'ui-grid/cellTitleValidator'
										},
										{
											field : 'semestr',
											type : 'number',
											displayName : i18n
													.t("przedmiot.semestr"),
											validators : {
												required : true,
												higherOrEqualThan : 1,
												lowerOrEqualThan : $scope.maxLiczbaSemestrow
											},
											cellTemplate : 'ui-grid/cellTitleValidator'
										} ]

							};

							$scope.gridOptions.onRegisterApi = function(gridApi) {
								// set gridApi on scope
								$scope.gridApi = gridApi;
								gridApi.validate.on.validationFailed($scope,
										function(rowEntity, colDef, newValue,
												oldValue) {
										});
								gridApi.selection.on.rowSelectionChanged(
										$scope, function(rowEntity, colDef,
												newValue, oldValue) {
											console.log('rowEntity: '
													+ rowEntity + '\n'
													+ 'colDef: ' + colDef
													+ '\n' + 'newValue: '
													+ newValue + '\n'
													+ 'oldValue: ' + oldValue);
										});
							};

							$scope.gridOptionsEK = {
								data : $scope.przedmiot.kek,
								enableHorizontalScrollbar : 0,
								enableVerticalScrollbar : 2,
								enableCellEditOnFocus : true,
								columnDefs : [ {
									field : 'id',
									displayName : i18n.t("efekt.id"),
									width : '15%'
								}, {
									field : 'opis',
									displayName : i18n.t("efekt.opis")
								}, {
									field : 'kategoria',
									displayName : i18n.t("efekt.kategoria"),
									width : '20%'
								} ]

							};
							
							$scope.gridOptionsEK.onRegisterApi = function(gridApi) {
								// set gridApi on scope
								$scope.gridApi2 = gridApi;
								gridApi.selection.on.rowSelectionChanged(
										$scope, function(rowEntity, colDef,
												newValue, oldValue) {
											console.log('rowEntity: '
													+ rowEntity + '\n'
													+ 'colDef: ' + colDef
													+ '\n' + 'newValue: '
													+ newValue + '\n'
													+ 'oldValue: ' + oldValue);
										});
							};

							$scope.dodaj = function() {
								var n = $scope.gridOptions.data.length;
								if (n >= formyZajec.length) {

								} else {
									$scope.gridOptions.data
											.push({
												"id" : $scope.przedmiot.zajecia.length + 1,
												"forma" : $scope.przedmiot.zajecia.length + 1,
												"liczba" : "",
												"ects" : "",
												"zaliczenie" : '',
												"semestr" : ""
											});
								}
							};

							$scope.dodajEK = function() {
								var n = $scope.gridOptionsEK.data.length;
								$scope.gridOptionsEK.data.push({
									"id" : $scope.przedmiot.kek.length + 1,
									"opis" : "",
									"kategoria" : ""
								});
							};

							$scope.removeKurs = function() {
								var selectedData = $scope.gridApi.selection
										.getSelectedRows();
								_.forEach(selectedData, usun);

							};

							$scope.removeEK = function() {
								var selectedData = $scope.gridApi2.selection
										.getSelectedRows();
								_.forEach(selectedData, usunEK);

							};

							$scope.save = function() {
								for ( var i in $scope.opiekunowie) {
									person = $scope.opiekunowie[i]
									if (person.fullName === $scope.przedmiot.opiekun.fullName) {
										$scope.przedmiot.opiekun = person;
										break;
									}
								}
								for ( var i in $scope.moduly) {
									modul1 = $scope.moduly[i]
									if (modul1.nazwa === $scope.przedmiot.modulKsztalcenia.nazwa) {
										$scope.przedmiot.modulKsztalcenia = modul1;
										break;
									}
								}

								var przedmiotToSend = {}
								przedmiotToSend.id = null;
								przedmiotToSend.version = null;
								przedmiotToSend.nazwaPolska = $scope.przedmiot.nazwaPolska;
								przedmiotToSend.nazwaAngielska = $scope.przedmiot.nazwaAngielska;
								przedmiotToSend.czyOgolnouczelniany = false;
								przedmiotToSend.kodPrzedmiotu = $scope.przedmiot.kod;
								przedmiotToSend.formaProwadzeniaZajec = [];
								przedmiotToSend.pek = [];
								przedmiotToSend.planyStudiow = [];
								przedmiotToSend.kartaPrzedmiotu = null;
								przedmiotToSend.kek = [];
								for ( var i in $scope.przedmiot.kek) {
									efekt = $scope.przedmiot.kek[i];
									efektNew = {
										id : efekt.id
									};
									przedmiotToSend.kek.push(efektNew);
								}
								przedmiotToSend.modulKsztalcenia = {};
								przedmiotToSend.modulKsztalcenia.id = $scope.przedmiot.modulKsztalcenia.id;
								przedmiotToSend.kursy = [];
								for ( var i in $scope.przedmiot.zajecia) {
									przedmiot = $scope.przedmiot.zajecia[i]
									przedmiotNew = {}
									przedmiotNew.cykl = {}
									przedmiotNew.cykl.id = $scope.przedmiot.program.cykl.id;
									przedmiotNew.programKsztalcenia = {
										id : $scope.przedmiot.program.id
									};
									przedmiotNew.liczbaGodzinWTygodniu = przedmiot.liczba;
									przedmiotNew.formaProwadzeniaZajec = {}
									przedmiotNew.formaProwadzeniaZajec.id = przedmiot.forma;
									przedmiotNew.formaZaliczenia = {}
									przedmiotNew.formaZaliczenia.id = przedmiot.zaliczenie;
									przedmiotNew.semestr = przedmiot.semestr;
									przedmiotNew.ects = przedmiot.ects;
									przedmiotToSend.kursy.push(przedmiotNew);
								}
								przedmiotToSend.grupaKursow = null;
								przedmiotToSend.opiekun = {};
								przedmiotToSend.opiekun.id = $scope.przedmiot.opiekun.id;
								console.log(JSON.stringify(przedmiotToSend));
								przedmiotService
										.savePrzedmiot(przedmiotToSend)
										.success(
												function(response) {
													console
															.log(JSON
																	.stringify(response))
												})
										.error(
												function(response) {
													console
															.log(JSON
																	.stringify(response.message))
												})

							}
							var usun = function(row) {
								_.remove($scope.przedmiot.zajecia, {
									id : row.id
								});
							}

							var usunEK = function(row) {
								_.remove($scope.przedmiot.kek, {
									id : row.id
								});
							}

							$scope.showKEKLookUp = function() {
								var modalInstanceKEK = $uibModal
										.open({
											animation : true,
											templateUrl : '/app/common/KEKLookUpModal/template/KEKLookUpModal.html',
											controller : 'KEKLookUpModalCtrl',
											size : 'lg',
											resolve : {
												param : function() {
													var KEKLookUpParams = {}
													KEKLookUpParams.PK = $scope.przedmiot.program;
													KEKLookUpParams.cykl = $scope.cykl;
													KEKLookUpParams.kategoria = $scope.kategoria;
													return KEKLookUpParams;
												}
											}
										});

								modalInstanceKEK.result
										.then(
												function(selectedKEK) {
													$scope.przedmiot.kek = _
															.union(
																	$scope.przedmiot.kek,
																	selectedKEK);
													$scope.gridOptionsEK.data = $scope.przedmiot.kek;
												},
												function() {
													console
															.log("KEKLookUp dismissed");
												})
							};

							$scope.showProgramKsztalceniaLookUp = function() {
								var modalInstancePK = $uibModal
										.open({
											animation : true,
											templateUrl : '/app/common/ProgramKsztalceniaLookUpModal/template/PKLookUpModal.html',
											controller : 'PKLookUpModalCtrl',
											size : 'lg',
											resolve : {
												items : function() {
													return $scope.PKLookUpParams;
												}
											}
										});

								modalInstancePK.result
										.then(
												function(selectedPK) {
													$scope.przedmiot.program = selectedPK
													$scope.fromModal = selectedPK.fromModal;
													$scope.cykl = selectedPK.cykl.nazwa;
													przedmiotService
															.getModuly(
																	$scope.przedmiot.program.id)
															.then(
																	function(
																			response) {
																		$scope.moduly = response.data;
																	});
													$scope.maxLiczbaSemestrow = $scope.przedmiot.program.liczbaSemestrow;
												},
												function() {
													console
															.log("ProgramLookUp dismissed");
												});
							};
							$scope.fromModal = true;

						} ]).filter('mapFormy', function() {
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

		}).filter('mapZaliczenie', function() {
			var mappingForm = {
				1 : 'E',
				2 : 'Z'
			};
			return function(input) {

				if (!input) {
					return '';
				} else {
					return mappingForm[input];
				}
			};
			mapZaliczenie
		})
