var app = angular.module("application.KEK", [])

app.controller("KEKController", [
		"$scope",
		function($scope) {

			$scope.kategorie = [ "kategoria.wiedza", "kategoria.umiejetnosci",
					"kategoria.kompetencje_spoleczne" ];
			$scope.kategoria = null;
			$scope.id = "";
			$scope.MEKi = [ {
				ID : "1",
				opis : "lorem ipsum...",
				obszar : "techniczny"
			}, {
				ID : "2",
				opis : "lorem ipsum...",
				obszar : "techniczny"
			} ];
			
			$scope.gridOptionsMEK = {
				data : $scope.MEKi,
				enableHorizontalScrollbar : 0,
				enableVerticalScrollbar : 2,
				enableRowSelection : true,
				multiSelect : true,
				columnDefs : [ {
					field : 'ID',
					displayName : "ID",
					width : "*"
				}, {
					field : 'opis',
					displayName : i18n.t("efekt.opis"),
					width : "70%"
				}, {
					field : 'obszar',
					displayName : i18n.t("efekt.obszar"),
					width : "20%"
				} ],
				onRegisterApi : function(gridApi) {
					// set gridApi on scope
					$scope.gridApi = gridApi;
					gridApi.selection.on.rowSelectionChanged($scope, function(
							rowEntity, colDef, newValue, oldValue) {
						console.log('rowEntity: ' + rowEntity + '\n'
								+ 'colDef: ' + colDef + '\n' + 'newValue: '
								+ newValue + '\n' + 'oldValue: ' + oldValue);
					});
				}
			// rowTemplate : rowTemplate()

			};
			$scope.addData = function() {
				$scope.gridOptionsMEK.data.push({
					"id" : "",
					"opis" : "",
					"obszar" : ""
				});
			};
			$scope.removeData = function() {
				var selectedData=$scope.gridApi.selection.getSelectedRows();
				_.forEach(selectedData,removeMEK);
				
			};
			var removeMEK=function(row){
				_.remove($scope.MEKi,{
					ID:row.ID
				});
				console.log("row id " + row.id);
			}
			
			$scope.showSearch = function() {
				alert("show search")
			}
		} ]);