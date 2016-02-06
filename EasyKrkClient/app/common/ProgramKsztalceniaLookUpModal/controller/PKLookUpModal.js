var app=angular.module("application.KEK");
app.controller('PKLookUpModalCtrl',["$scope","$uibModalInstance","PKLookUpServiceFactory", function ($scope, $uibModalInstance,PKLookUpServiceFactory,items){
	$scope.params=items;
	 $scope.item=[];
	 $scope.found=[];
	 $scope.formy=["PK.forma.stacjonarne","PK.forma.niestacjonarne"];
	 $scope.cykle=[];
	 $scope.busy=false;
	 $scope.disabled=true;
	 $scope.PK={specjalnosc:"",stopien:"2",wydzial:"",kierunek:"",forma:"",cykl:''};
	 
	 PKLookUpServiceFactory.getCyklGet().then(function(response){
		 $scope.cykle=response.data.map(function(item){
			 return item.nazwa;
		 })
		 $scope.PK.cykl=$scope.cykle[0];
	 });
	 
	 
	 $scope.getWydzial=function(){
		 
		 //if kierunek , find by kierunek
		 return PKLookUpServiceFactory.getWydzialGet().then(function (response){
			
			 return response.data.map(function(item){
				 return item.nazwa;
			 })
		 })
	 };	 
	$scope.getKierunek=function(){
			 
		//if wydzial, findbywydzial
			 return PKLookUpServiceFactory.getKierunekGet().then(function (response){
				
				 return response.data.map(function(item){
					 return item.nazwa;
				 })
			 })
		 };	
	 $scope.getSpecjalnosc=function(){
		 //if kierunek find by kierunek
		 return PKLookUpServiceFactory.getSpecjalnoscGet().then(function (response){
			
			 return response.data.map(function(item){
				 return item.nazwa;
			 })
		 })
	 };
	  
	
	 
	 
	$scope.ok=function(){
		 $scope.item=$scope.gridApi.selection.getSelectedRows()[0];
		 $scope.item.fromModal=true;
		$uibModalInstance.close($scope.item);
	};
	
	$scope.cancel=function(){
		$uibModalInstance.dismiss('cancel');
	};
	$scope.szukajPK=function(){
		$scope.busy=true;
		$scope.gridOptionsPK.data=$scope.found;
		PKLookUpServiceFactory.getPKByGet($scope.PK.wydzial,$scope.PK.specjalnosc,$scope.PK.kierunek
				,$scope.PK.stopien,$scope.PK.forma,$scope.PK.cykl).then(function(response){
					$scope.gridOptionsPK.data=response.data;
					$scope.busy=false;
		})
		
	};
	
	function rowTemplate() {
		return '<div ng-dblclick="grid.appScope.rowDblClick(row)" >'
				+ '  <div ng-repeat="(colRenderIndex, col) in colContainer.renderedColumns track by col.colDef.name" class="ui-grid-cell" ng-class="{ \'ui-grid-row-header-cell\': col.isRowHeader }"  ui-grid-cell></div>'
				+ '</div>';
	}
	
	$scope.$watch('gridApi.selection.getSelectedRows()[0]',function(newVal,oldVal){
		if(newVal !== null && newVal !== undefined){
			$scope.disabled=false;
		}else{
			$scope.disabled=true;
		}
	})
	$scope.rowDblClick = function( row) {
		   // alert(JSON.stringify(row.entity)); 
		$scope.item=row.entity;
		$scope.item.fromModal=true;
		$uibModalInstance.close($scope.item); 
		};
	
	$scope.gridOptionsPK = {
			data : $scope.found,
			enableHorizontalScrollbar : 0,
			enableVerticalScrollbar : 2,
			enableRowSelection : true,
			enableSelectAll:false,
			multiSelect : false,
			columnDefs : [ {
				field : 'kod',
				displayName : "kod",
				width : "*"
			}],
			onRegisterApi : function(gridApi) {
				// set gridApi on scope
				$scope.gridApi = gridApi;
			},
			rowTemplate:rowTemplate()
	}
	
}])