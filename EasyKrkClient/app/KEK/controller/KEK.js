var app = angular.module("application.KEK", ['ngAnimate', 'ui.bootstrap','ngResource','angularSpinner'])

app.controller("KEKController", [
		"$scope","$uibModal","KEKServiceFactory","PKLookUpServiceFactory","messageService",'$window','$location',
		function($scope,$uibModal,KEKServiceFactory,PKLookUpServiceFactory,messageService,$window,$location) {

			
			$scope.kategorie = [];
			
			KEKServiceFactory.getKategorieGet().then(function(response){
				
				$scope.kategorie=response.data.map(function(item){
					var temp={};
					temp.id=item.id;
					temp.nazwa="kategoria."+item.nazwa;
						return temp;
				})
				$scope.kategoria=$scope.kategorie[0];
				
			},messageService.genericErrorHandler)
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
			$scope.pkFromModal=true;
			$scope.inCorrect=true;
			$scope.finished=false;
			$scope.opis='';
			$scope.MEKi = [];
			$scope.obszary=[];
			$scope.obszar={};
			$scope.obszar.nazwa='';
			
			$scope.gridOptionsMEK = {
					data : $scope.MEKi,
					enableHorizontalScrollbar : 0,
					enableVerticalScrollbar : 2,
					enableRowSelection : true,
					multiSelect : true,
					columnDefs : [ {
					field : 'ID',
					displayName : "ID",
					width : "15%"
				}, {
					field : 'opis',
					displayName : i18n.t("efekt.opis"),
					width : "*",
					cellTooltip:function(row,col){
						return row.entity.opis
					}
				}, {
					field : 'obszar',
					displayName : i18n.t("efekt.obszar"),
					width : "15%"
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
							MEKLookUpParams.obszar=$scope.obszar;
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
				 $scope.obszary=selectedPK.obszaryKsztalcenia.map(function(item){
					 return {id:item.id,nazwa:"MEK.obszar."+item.nazwa};
				 });
				 $scope.obszar=$scope.obszary[0];
				 //truncate meki
				 $scope.MEKi=[];
				 $scope.gridOptionsMEK.data=[];
				},function(){
				console.log("MEKLookUp dismissed");
			});
			};
			$scope.fromModal=true;
			
			$scope.addKEK=function(){
				
				KEKServiceFactory.addKEK($scope.programKsztalcenia.id, $scope.cykl, $scope.MEKi, $scope.kategoria.id, $scope.opis, $scope.obszar.id)
				.then(function(value) {
					if(value.data.t === null || value.data.t === undefined ){
						//good
						$scope.id=value.data.id;
						messageService.logSuccess(i18n.t("KEK_assigned_OK") +" "+$scope.id);
						$scope.finished=true;
						
				}else{
					//bad
					console.log(value.data.t.message);
					messageService.logError(i18n.t(value.data.t.message));
					
				}
				
					
				}, messageService.genericErrorHandler)
			}
			
			//inner translation
			$scope.t=function(t){
				return i18n.t(t);
			}
			//watching sent params, to unDisable ok
			$scope.$watch("programKsztalcenia.kod",function(newVal,oldVal){
				
				$scope.inCorrect= checkCorrectnes(newVal, $scope.cykl, $scope.kategoria.nazwa, $scope.opis, $scope.MEKi.length);
			})
			$scope.$watch("cykl",function(newVal,oldVal){
				$scope.inCorrect= checkCorrectnes($scope.programKsztalcenia.kod, newVal, $scope.kategoria.nazwa, $scope.opis, $scope.MEKi.length);
			})
			$scope.$watch("kategoria.nazwa",function(newVal,oldVal){
				$scope.inCorrect= checkCorrectnes($scope.programKsztalcenia.kod, $scope.cykl, newVal, $scope.opis, $scope.MEKi.length);
			})
			$scope.$watch("opis",function(newVal,oldVal){
				$scope.inCorrect= checkCorrectnes($scope.programKsztalcenia.kod, $scope.cykl, $scope.kategoria.nazwa, newVal, $scope.MEKi.length);
			})
			$scope.$watch("MEKi.length",function(newVal,oldVal){
				$scope.inCorrect= checkCorrectnes($scope.programKsztalcenia.kod, $scope.cykl, $scope.kategoria.nazwa, $scope.opis, newVal);
				$scope.pkFromModal=  checkCorrectnessObszar($scope.obszary, newVal);
			})
			$scope.$watch("obszar",function(newVal,oldVal){
				$scope.pkFromModal=  checkCorrectnessObszar(newVal, $scope.MEKi.length);
			})
			
			
			var checkCorrectnes=function(pkKod,cykl,katNazwa,opis,meksL){
				
				return (pkKod === '' || cykl === '' || katNazwa === '' || !(opis.length>20 && opis.length<100) || meksL === 0);
			}
			var checkCorrectnessObszar=function(lO,lM){
				
				return !(lO.nazwa !=='' && lM===0);
			}
			
			$scope.cancelKEK=function(){
				$location.path("/");
			}
			
		}]);
