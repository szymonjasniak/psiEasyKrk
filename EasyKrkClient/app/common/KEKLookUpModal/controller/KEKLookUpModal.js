/**
 * http://usejsdoc.org/
 */
var app=angular.module("application.KEK");
app.controller('KEKLookUpModalCtrl',["$scope","$uibModalInstance","KEKLookUpServiceFactory","param", function ($scope, $uibModalInstance,KEKLookUpServiceFactory,param){
	$scope.params=param;
	$scope.params.opis=''
	$scope.params.kategoria ='';
	$scope.item=[];
	$scope.busy=false;
	$scope.ok=function(){
		_.forEach($scope.gridApi.selection.getSelectedRows(),function(val){
			var bla=i18n.t( "kategoria."+val.kategoria.nazwa)
			$scope.item.push({"id":val.id,"kategoria":bla,"opis":val.opis});
		});
		$uibModalInstance.close($scope.item);
	};
	$scope.t=function(t){
		return i18n.t(t);
	}
	$scope.cancel=function(){
		$uibModalInstance.dismiss('cancel');
	};
	
$scope.kategorie = KEKLookUpServiceFactory.getKategoriaGet().then(function(response){
	$scope.kategorie=response.data.map(function(item){
		 return {id:item.id,nazwa:"kategoria."+item.nazwa};
	})})
	$scope.szukajKEK=function(){
		$scope.busy=true;
		KEKLookUpServiceFactory.getKEKByGet($scope.params.PK.id,$scope.params.kategoria.id,$scope.params.opis)
		.then(function(response){
			$scope.gridOptionsKEK.data=response.data;
			$scope.busy=false;
		})
	}
	
	$scope.found=[];
	$scope.gridOptionsKEK = {
			data : $scope.found,
			enableHorizontalScrollbar : 0,
			enableVerticalScrollbar : 2,
			enableRowSelection : true,
			enableSelectAll:true,
			multiSelect : true,
			columnDefs : [ {
				field : 'id',
				displayName : "ID",
				width : "*"
			}, {
				field : 'opis',
				displayName : i18n.t("efekt.opis"),
				width : "85%",
				cellTooltip:function(row,col){
					return row.entity.opis
				}
			}],
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
	}
	
}])