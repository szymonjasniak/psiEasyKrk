angular.module('application.przedmiot', [])
.controller('PrzedmiotController', function($scope) {
	
	$scope.przedmiot = {program: 'guest', cykl: '2015/2016', nazwaPolska:"Nazwa"};
	
	$scope.zajecia = [
	{
        "forma": 'W',        
        "liczba": '2',
        "ects": '3',
        "cnps": '2',
        "zaliczenie": 'E',
        "semestr": '1'
    }, {
        "forma": 'L',
        "liczba": '2',
        "ects": '4',
        "cnps": '3',
        "zaliczenie": 'Z',
        "semestr": '1'
    }, {
        "forma": 'C',
        "liczba": '2',
        "ects": '3',
        "cnps": '2',
        "zaliczenie": 'Z',
        "semestr": '1'
    }
    ];

	$scope.gridOptions = {}
	$scope.gridOptions.enableCellEditOnFocus = true;
	$scope.gridOptions = { 
	        data: 'zajecia',
	        columnDefs: [{field:'forma', displayName:'Forma', width:70},
	                     {field:'liczba', displayName:'Liczba'},
	                     {field:'ects', displayName:'ECTS', width:70},
	                     {field:'cnps', displayName:'CNPS', width:70},
	                     {field:'zaliczenie', displayName:'Zaliczenie', width:100},
	                     {field:'semestr', displayName:'Semestr', width:100}]
	    };
	
	
	$scope.addData = function() {
	    var n = $scope.gridOptions.data.length + 1;
	    $scope.gridOptions.data.push({
	                "forma": "New " + n,
	                "liczba": "Person " + n,
	                "ects": "abc",
	                "cnps": "abc",
	                "zaliczenie": 'Z',
	                "semestr": '1'
	              });
	  };
	 
	  $scope.removeFirstRow = function() {
	    //if($scope.gridOpts.data.length > 0){
	       $scope.gridOptions.data.splice(0,1);
	    //}
	  };
	 
	  $scope.reset = function () {
	    data1 = angular.copy(origdata1);
	    data2 = angular.copy(origdata2);
	 
	    $scope.gridOptions.data = data1;
	    $scope.gridOptions.columnDefs = columnDefs1;
	  }
	
});