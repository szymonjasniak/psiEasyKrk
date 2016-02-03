/**
 * http://usejsdoc.org/
 */
var app=angular.module("application.KEK");
app.controller('MEKLookUpModalCtrl',["$scope","$uibModalInstance", function ($scope, $uibModalInstance, items){
	$scope.params=items;
	 $scope.item=[];
	 $scope.obszary=["MEK.obszar.nauki_techniczne",
	                 "MEK.obszar.nauki_przyrodnicze",
	                 "MEK.obszar.nauki_rolnicze",
	                 "MEK.obszar.nauki_medyczne",
	                 "MEK.obszar.nauki_scisle",
	                 "MEK.obszar.nauki_spoleczne",
	                 "MEK.obszar.nauki_sztuki",
	                 "MEK.obszar.nauki_humanistyczne",
	                 ];
	$scope.ok=function(){
		_.forEach($scope.gridApi.selection.getSelectedRows(),function(val){
			$scope.item.push({"ID":val.ID,"obszar":val.obszar,"opis":val.opis});
		});
		$uibModalInstance.close($scope.item);
	};
	
	$scope.cancel=function(){
		$uibModalInstance.dismiss('cancel');
	};
	$scope.szukajMEK=function(){
		$scope.gridOptionsMEK.data=$scope.MEKi;
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
				field : 'ID',
				displayName : "ID",
				width : "*"
			}, {
				field : 'opis',
				displayName : i18n.t("efekt.opis"),
				width : "70%"
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