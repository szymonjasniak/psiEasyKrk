var app = angular.module("application.KEK", ['ngAnimate', 'ui.bootstrap','ngResource'])

app.controller("KEKController", [
		"$scope","$uibModal",
		function($scope,$uibModal) {

			$scope.kategorie = [ "kategoria.wiedza", "kategoria.umiejetnosci",
					"kategoria.kompetencje_spoleczne" ];
			$scope.kategoria = null;
			$scope.id = "";
			$scope.programKsztalcenia="",
			$scope.fromModal=false;
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
				}
			};
			$scope.showMEKLookUp = function() {
				var modalInstanceMEK=$uibModal.open({
					animation:true,
					templateUrl:'/app/common/MEKLookUpModal/template/MEKLookUpModal.html',
					controller: 'MEKLookUpModalCtrl',
					size:'lg',
					resolve:{
						items:function(){
							return $scope.MEKLookUpParams;
						}
					}
				});
				
				modalInstanceMEK.result.then(function(selectedMEK){
					 $scope.MEKi=_.union($scope.MEKi,selectedMEK);
					$scope.gridOptionsMEK.data=$scope.MEKi;
				},function(){
					console.log("MEKLookUp dismissed");
				})
			};
			$scope.removeData = function() {
				var selectedData=$scope.gridApi.selection.getSelectedRows();
				_.forEach(selectedData,removeMEK);
				
			};
			var removeMEK=function(row){
				_.remove($scope.MEKi,{
					ID:row.ID
				});
			}
			
			$scope.showProgramKsztalceniaLookUp = function() {
				var modalInstancePK=$uibModal.open({
					animation:true,
					templateUrl:'/app/common/ProgramKsztalceniaLookUpModal/template/PKLookUpModal.html',
					controller: 'PKLookUpModalCtrl',
					size:'lg',
					resolve:{
						items:function(){
							return $scope.PKLookUpParams;
						}
					}
				});
				
				modalInstancePK.result.then(function(selectedPK){
				 $scope.programKsztalcenia=selectedPK.kod
				 $scope.fromModal=selectedPK.fromModal;
				},function(){
				console.log("MEKLookUp dismissed");
			});
			};
			
		}]);
