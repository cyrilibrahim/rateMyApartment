package ratemyapp

class BienImmobilierController {
	
	/*
	 * MÉTHODE GET
	 * Service qui va permettre de recupérer la liste de tous les appartements
	 */
	def allApartment(){
		
		def tousLesAppart = BienImmobilier.getAll() as grails.converters.JSON
		
		render (text:tousLesAppart,contentType: 'application/json', encoding:'utf-8')
	}
	
	//Renvoi la page d'un appartment 
	//parametre:
	//id: id de L'appartement 
	def voirAppart(){
		
		def appart = BienImmobilier.get(params.id);
		def commentaires = appart.commentaires;
		render(view: "voirAppart",model:[apartment:appart,commentaires:commentaires]);
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
	
	def addComment(){
		def commentaire = new Commentaire(params.message,new Date(),BienImmobilier.get(params.id)).save();

		redirect(action: "voirAppart",params: [id: params.id])
	}
	
}
