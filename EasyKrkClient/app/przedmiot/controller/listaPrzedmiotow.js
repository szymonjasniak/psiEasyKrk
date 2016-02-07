angular.module('application.listaPrzedmioty', [])
		.controller(
				'ListaPrzedmiotController',
				[
						'$scope',
						'$log',
						'$window',
						'$location',
						"$uibModal",
						"PKLookUpServiceFactory",
						'przedmiotService',
						function($scope, $log, $window,$location,$uibModal,PKLookUpServiceFactory,przedmiotService) {

							$scope.przedmioty = [];
							
							$scope.szukaj = function(){
								przedmiotService.getAllPrzedmioty($scope.program.id).then(function(response) {
									$scope.przedmioty = response.data;
									$scope.gridOptionsPrzedmiot.data = response.data;
									})								
							};

							$scope.gridOptionsPrzedmiot = {};
							$scope.gridOptionsPrzedmiot = {
								data : $scope.przedmioty,
								enableHorizontalScrollbar : 0,
								enableVerticalScrollbar : 2,
								enableRowSelection : false,
								enableSelectAll:false,
								multiSelect : false,
								columnDefs : [
										{
											field : 'kodPrzedmiotu',
											displayName : i18n
													.t("przedmiot.kod"),
										},
										{
											field : 'nazwaPolska',
											displayName : i18n
													.t("przedmiot.nazwaPolska")
										},
										{
											field : 'opiekun',
											displayName : i18n
													.t("przedmiot.opiekun"),
										} ],
								onRegisterApi : function(gridApi) {
									$scope.gridApi = gridApi;
								},
								rowTemplate : rowTemplate()

							};

							function rowTemplate() {
								return '<div ng-dblclick="grid.appScope.rowDblClick(row)" >'
										+ '  <div ng-repeat="(colRenderIndex, col) in colContainer.renderedColumns track by col.colDef.name" class="ui-grid-cell" ng-class="{ \'ui-grid-row-header-cell\': col.isRowHeader }"  ui-grid-cell></div>'
										+ '</div>';
							}
							
							$scope.rowDblClick = function( row) {
							   // alert(JSON.stringify(row.entity)); 
								przedmiotService.setSelectedProgram($scope.program);
								przedmiotService.setSelectedPrzedmiot(row.entity);
								$location.path('/przedmiot/' + row.entity.kodPrzedmiotu);  
							};

							$scope.gridOptionsPrzedmiot.onRegisterApi = function(
									gridApi) {
								// set gridApi on scope
								$scope.gridApi = gridApi;
								gridApi.selection.on.rowSelectionChanged(
										$scope, function(rowEntity, colDef,
												newValue, oldValue) {
											$log.log('rowEntity: ' + rowEntity
													+ '\n' + 'colDef: '
													+ colDef + '\n'
													+ 'newValue: ' + newValue
													+ '\n' + 'oldValue: '
													+ oldValue);
										});
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
													$scope.program = selectedPK
													$scope.fromModal = selectedPK.fromModal;
													$scope.cykl = selectedPK.cykl.nazwa;
												},
												function() {
													console
															.log("ProgramLookUp dismissed");
												});
							};
							$scope.fromModal = true;
						} ]);
