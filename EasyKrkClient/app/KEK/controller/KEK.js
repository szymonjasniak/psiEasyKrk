var app = angular.module("application.KEK", ['ngAnimate', 'ui.bootstrap','ngResource','angularSpinner'])

app.controller("KEKController", [
		"$scope","$uibModal","KEKServiceFactory","PKLookUpServiceFactory",
		function($scope,$uibModal,KEKServiceFactory,PKLookUpServiceFactory) {

			
			$scope.kategorie = [];
			
			KEKServiceFactory.getKategorieGet().then(function(response){
				
				$scope.kategorie=response.data.map(function(item){
					var temp={};
					temp.id=item.id;
					temp.nazwa="kategoria."+item.nazwa;
						return temp;
				})
				$scope.kategoria=$scope.kategorie[0];
				
			})
			$scope.translate=function(t){
				return i18n.t(t);
			}
			$scope.cykle=[];
			PKLookUpServiceFactory.getCyklGet().then(function(response){
				$scope.cykle=response.data.map(function(item){
					return item.nazwa;
				})
				$scope.cykl=$scope.cykle[0];
			})
			$scope.id = "";
			$scope.programKsztalcenia={},
			$scope.programKsztalcenia.kod="",
			$scope.fromModal=false;
			$scope.inCorrect=true;
			$scope.MEKi = [];
			
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
					width : "70%",
					cellTooltip:function(row,col){
						return row.entity.opis
					}
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
						param:function(){
							var MEKLookUpParams={}
							MEKLookUpParams.PK=$scope.programKsztalcenia;
							MEKLookUpParams.cykl=$scope.cykl;
							MEKLookUpParams.kategoria=$scope.kategoria;
							return MEKLookUpParams;
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
				 $scope.programKsztalcenia=selectedPK
				 $scope.fromModal=selectedPK.fromModal;
				 $scope.cykl=selectedPK.cykl.nazwa;
				},function(){
				console.log("MEKLookUp dismissed");
			});
			};
			$scope.fromModal=true;
		}]);
