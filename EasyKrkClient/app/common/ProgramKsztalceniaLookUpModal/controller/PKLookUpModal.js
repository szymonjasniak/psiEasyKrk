var app=angular.module("application.KEK");
app.controller('PKLookUpModalCtrl',["$scope","$uibModalInstance", function ($scope, $uibModalInstance, items){
	$scope.params=items;
	 $scope.item=[];
	 $scope.found=[];
	 $scope.PKi=[{ID:'PO-W08-INF-IO--ST-IIM-WRO------PWR1_DWU'},
	             {ID:'PO-W08-INF-PSI--ST-IIM-WRO------PWR1_DWU'},
	             {ID:'PO-W08-INF-ISI--ST-IIM-WRO------PWR1_DWU'}];
	 $scope.formy=["PK.forma.stacjonarne","PK.forma.niestacjonarne"];
	 
	 $scope.PK={};
	 $scope.PK.stopien="I";
	$scope.ok=function(){
		 $scope.item=$scope.gridApi.selection.getSelectedRows()[0];
		$uibModalInstance.close($scope.item);
	};
	
	$scope.cancel=function(){
		$uibModalInstance.dismiss('cancel');
	};
	$scope.szukajPK=function(){
		$scope.gridOptionsPK.data=$scope.PKi;
	};
	
	function rowTemplate() {
		return '<div ng-dblclick="grid.appScope.rowDblClick(row)" >'
				+ '  <div ng-repeat="(colRenderIndex, col) in colContainer.renderedColumns track by col.colDef.name" class="ui-grid-cell" ng-class="{ \'ui-grid-row-header-cell\': col.isRowHeader }"  ui-grid-cell></div>'
				+ '</div>';
	}
	
	$scope.rowDblClick = function( row) {
		   // alert(JSON.stringify(row.entity)); 
		$uibModalInstance.close(row.entity); 
		};
	
	$scope.gridOptionsPK = {
			data : $scope.found,
			enableHorizontalScrollbar : 0,
			enableVerticalScrollbar : 2,
			enableRowSelection : true,
			enableSelectAll:false,
			multiSelect : false,
			columnDefs : [ {
				field : 'ID',
				displayName : "ID",
				width : "*"
			}],
			onRegisterApi : function(gridApi) {
				// set gridApi on scope
				$scope.gridApi = gridApi;
			},
			rowTemplate:rowTemplate()
	}
	
}])