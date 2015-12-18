package ratemyapp

class BienImmobilierController {
	
	/*
	 * M�THODE GET
	 * Service qui va permettre de recup�rer la liste de tous les appartements
	 */
	def allApartment(){
		
		def tousLesAppart = BienImmobilier.getAll() as grails.converters.JSON
		
		render (text:tousLesAppart,contentType: 'application/json', encoding:'utf-8')
	}
	
	def searchApartment(){
		

	}
	
	//Permet une recherche avec une requete get avec comme parametre q la chaine a rechercher pour le nom de rue 
	def recherche(){
		String critere =  params.q.toString()toLowerCase();
		
		ArrayList resultats = []
		
		//Si il n'y a pas de recherche cela retourne tous les appartements 
		if(critere != ""){
			
			def tousLesAppart = BienImmobilier.getAll()
			
			if(tousLesAppart != null){
				tousLesAppart.each() {
					if(it.getRue().toLowerCase() ==~ /.*$critere.*/){
						resultats.push(it)
					}
				}
			}

		}else{
			resultats =  BienImmobilier.getAll()
		}
		
		render(view:"recherche",model:[apartments:resultats]);
	}
}
