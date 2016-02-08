/**
 * http://usejsdoc.org/
 */
var app=angular.module("application.KEK");
app.controller('MEKLookUpModalCtrl',["$scope","$uibModalInstance","MEKLookUpServiceFactory","param", function ($scope, $uibModalInstance,MEKLookUpServiceFactory,param){
	$scope.params=param;
	$scope.params.opis=''
	 $scope.item=[];
	 $scope.busy=false;
	 $scope.gotObszar=true;
	 $scope.obszary=$scope.params.PK.obszaryKsztalcenia.map(function(item){
		 return {id:item.id,nazwa:"MEK.obszar."+item.nazwa};
	 });
	 $scope.obszar=$scope.params.obszar;
	$scope.ok=function(){
		_.forEach($scope.gridApi.selection.getSelectedRows(),function(val){
			var bla=i18n.t( "MEK.obszar."+val.obszarKsztalcenia.nazwa)
			$scope.item.push({"ID":val.id,"obszar":bla,"opis":val.opis});
		});
		$uibModalInstance.close($scope.item);
	};
	$scope.t=function(t){
		return i18n.t(t);
	}
	$scope.cancel=function(){
		$uibModalInstance.dismiss('cancel');
	};
	$scope.szukajMEK=function(){
		$scope.busy=true;
		MEKLookUpServiceFactory.getMEKByGet($scope.params.PK.id,$scope.params.kategoria.id,$scope.params.opis,$scope.obszar.id)
		.then(function(response){
			$scope.gridOptionsMEK.data=response.data;
			$scope.busy=false;
		})
	}
	
	$scope.MEKi = [ {
		ID : "12",
		opis : "lorem ipsum...",
		obszar : "nietechniczny"
	}, {
		ID : "23",
		opis : "lorem ipsum...",
		obszar : "naukowy"
	} ];
	$scope.found=[];
	$scope.gridOptionsMEK = {
			data : $scope.found,
			enableHorizontalScrollbar : 0,
			enableVerticalScrollbar : 2,
			enableRowSelection : true,
			enableSelectAll:true,
			multiSelect : true,
			columnDefs : [ {
				field : 'id',
				displayName : "ID",
				width : "20%"
			}, {
				field : 'opis',
				displayName : i18n.t("efekt.opis"),
				width : "*",
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