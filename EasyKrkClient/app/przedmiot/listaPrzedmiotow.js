angular
		.module('application.listaPrzedmioty', [])
		.controller(
				'ListaPrzedmiotController',
				[
						'$scope',
						'$log',
						'$window',
						'$location',
						function($scope, $log, $window,$location) {

							$scope.przedmioty = [ {
								kod : "INZ00105",
								nazwa : "Projektowanie systemów",
								opiekun : "Jan Kowalski"
							}, {
								kod : "INZ02305",
								nazwa : "Projektowanie interfejsu",
								opiekun : "Kacperek Kowalski"
							} ];

							$scope.gridOptionsPrzedmiot = {};
							$scope.gridOptionsPrzedmiot = {
								data : $scope.przedmioty,
								enableHorizontalScrollbar : 0,
								enableVerticalScrollbar : 2,
								enableRowSelection : false,
								multiSelect : false,
								columnDefs : [
										{
											field : 'kod',
											displayName : i18n
													.t("przedmiot.kod"),
										},
										{
											field : 'nazwa',
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
								$location.path('/przedmiot/' + row.entity.kod);  
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

							$scope.changeView = function(przedmiot) {
								var earl = '/przedmiot/' + przedmiot;
								$location.path(earl);
							}
						} ]);
