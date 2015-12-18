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
	
	//Renvoi la page d'un appartment 
	//parametre:
	//id: id de L'appartement 
	def voirAppart(){
		
		def appart = BienImmobilier.get(params.id);
		def commentaires = appart.commentaires;
		
		Note noteTemp = new Note();
		
		noteTemp.noteSatisfaction =  appart.getMoyenneNoteSatisfaction();
		noteTemp.noteGlobal =  appart.getMoyenneNoteGeneral();
		noteTemp.noteIsolation =  appart.getMoyenneNoteIsolation();
		noteTemp.noteProprete =  appart.getMoyenneNoteProprete();
		
		render(view: "voirAppart",model:[apartment:appart,commentaires:commentaires,note:noteTemp]);
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
	def addNote(){
		def note = new Note(params.proprete.toInteger(),params.satisfaction.toInteger(),params.isolation.toInteger(),BienImmobilier.get(params.id)).save();
		redirect(action: "voirAppart",params: [id: params.id])
	}
}
