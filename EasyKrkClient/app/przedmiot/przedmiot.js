angular.module('application.przedmiot', [])
.controller('PrzedmiotController', function($scope) {
	
	$scope.przedmiot = {program: 'guest', cykl: '2015/2016', nazwaPolska:"Nazwa"};
	
	$scope.zajecia = [{
        forma: 'Wwewe',
        liczba: '2',
        ects: '3',
        cnps: '2',
        zaliczenie: 'E',
        semestr: '1'
    }, {
        forma: 'L',
        liczba: '2',
        ects: '4',
        cnps: '3',
        zaliczenie: 'Z',
        semestr: '1'
    }, {
        forma: 'C',
        liczba: '2',
        ects: '3',
        cnps: '2',
        zaliczenie: 'Z',
        semestr: '1'
    }];	
	
	$scope.editRecord = function (item, indx) {
        $scope.hideOnBlur = true;
        $scope.inputShow = true;
        $scope.item = item;
        $scope.index = indx;
    };
});