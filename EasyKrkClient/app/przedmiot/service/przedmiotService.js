var app = angular.module("application.przedmiot").factory('przedmiotService',
		["$resource","$http", function($resource,$http) {
			
			var selectedProgram = {}
			var selectedPrzedmiot = {
					id:null,
					version:null,
				zajecia : [],
				kek : [],
				czyOgolnouczelniany:false,
				formaProwadzeniaZajec:[],
				pek:[],
				planyStudiow:[],
				kartaPrzedmiotu:null,
				grupaKursow:null,
				modulKsztalcenia :{
					nazwa:""
				},
			opiekun:{
				fullName:""
			},
			}

			getModuly = function(program) {
				return $http.get("/backend/modul/getAll/", {
					params : {
						program : program
					}
				})
			};

			getOpiekunowie = function() {
				return $http.get("/backend/autorKarty/getAll/")
			};

			getFormyProwadzeniaZajec=function()
			{
				return $http.get("backend/przedmiot/getFormyProwadzenia")
			}
			;

			getFormyZaliczeniaZajec=function()
			{
				return $http.get("backend/przedmiot/getFormyZaliczenia")
			}
			;

			getLiczbaSemestrow=function(program)
			{
				return $http.get("backend/PK/getLiczbaSemestrow", {
					params : {
						program : program
					}
				})
			}
			;
			getAllPrzedmioty=function(program)
			{
				return $http.get("backend/przedmiot/getAllInProgram", {
					params : {
						program : program
					}
				})
			}
			;
			getModul=function(id)
			{
				return $http.get("backend/modul/get", {
					params : {
						id : id
					}
				})
			}
			;
			
			savePrzedmiot = function(przedmiot) {
				return $http.put("backend/przedmiot/save", przedmiot)
			};
			

			return {
				getModuly:getModuly,
				getOpiekunowie:getOpiekunowie,
				getFormyProwadzeniaZajec:getFormyProwadzeniaZajec,
				getFormyZaliczeniaZajec:getFormyZaliczeniaZajec,
				getLiczbaSemestrow:getLiczbaSemestrow,
				getAllPrzedmioty:getAllPrzedmioty,
				savePrzedmiot:savePrzedmiot,
				setSelectedProgram : function(value) {
					selectedProgram = value;					
				},
				getSelectedProgram : function() {
					return selectedProgram;
				},setSelectedPrzedmiot : function(value) {
					
					selectedPrzedmiot.grupaKursow = value.grupaKursow;
					selectedPrzedmiot.id = value.id;						
					selectedPrzedmiot.kod = value.kodPrzedmiotu;
					selectedPrzedmiot.nazwaAngielska = value.nazwaAngielska;
					selectedPrzedmiot.nazwaPolska = value.nazwaPolska;	
					selectedPrzedmiot.version = value.version;
					selectedPrzedmiot.zajecia = [];
					for ( var i in value.kursy) {
						przedmiot = value.kursy[i]
						przedmiotNew = {
						liczba : przedmiot.liczbaGodzinWTygodniu,
						forma : przedmiot.formaProwadzeniaZajec.id,
						zaliczenie : przedmiot.formaZaliczenia.id,
						semestr : przedmiot.semestr,
						ects : przedmiot.ects
						}
						selectedPrzedmiot.zajecia.push(przedmiotNew);
					}
					selectedPrzedmiot.kek = [];
					keki = value.kek;
					for (var i in keki) {
						efekt = keki[i];
						efektNew = {
							id : efekt.id,
							kategoria : i18n.t("kategoria." + efekt.kategoria.nazwa),
							opis: efekt.opis
						};
						selectedPrzedmiot.kek.push(efektNew);
					}
								
					getModul(value.modulKsztalcenia.id).then(
							function(response) {
								selectedPrzedmiot.modulKsztalcenia = {nazwa:response.data.nazwa }
							});
					/*selectedPrzedmiot.modulKsztalcenia = {nazwa:value. }
					selectedPrzedmiot.opiekun = {fullName: value.opiekun.fullName}*/
				},
				getSelectedPrzedmiot : function() {
					return selectedPrzedmiot;
				}
			}

			;
		}])