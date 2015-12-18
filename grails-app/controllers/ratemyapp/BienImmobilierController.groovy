package ratemyapp

class BienImmobilierController {

    def index() {
		render "Voici les bien immobiliers"
	}
	
	/*
	 * MÉTHODE GET
	 * Service qui va permettre de recupérer la liste de tous les appartements
	 */
	def allApartment(){
		
		def tousLesAppart = BienImmobilier.getAll() as grails.converters.JSON
		
		render (text:tousLesAppart,contentType: 'application/json', encoding:'utf-8')
	}
	
	def searchApartment(){
		
		String critere =  params.q.toLowerCase();
		
		ArrayList resultats = []
		
		def tousLesAppart = BienImmobilier.getAll()

		tousLesAppart.each() {

			if(it.getRue().toLowerCase() ==~ /.*$critere.*/){
				resultats.push(it)
			}

		}

		
		render (text:resultats as grails.converters.JSON,contentType: 'application/json', encoding:'utf-8')
	}
}
