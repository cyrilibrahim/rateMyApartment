package ratemyapp

public class BienImmobilier {
	
	static hasMany = [commentaires: Commentaire,notes:Note]

	int nombreDePieces 
	int numApp
	String description
	String codePostal
	def String Rue
	String Ville
	String typeImmobilier
	String pathPhoto
	
	
	public BienImmobilier(int nombreDePieces,int numApp,String description,String codePostal,String Rue,String Ville,String typeImmobilier,String pathPhoto){
		this.nombreDePieces = nombreDePieces;
		this.numApp = numApp;
		this.description = description;
		this.codePostal = codePostal;
		this.Rue = Rue;
		this.Ville = Ville;
		this.typeImmobilier = typeImmobilier;
		this.pathPhoto = pathPhoto ;

	}
	
	//Retourne la note moyenne d'isolation 
	public int getMoyenneNoteIsolation(){
		
		def addition = 0;
		if(notes!= null && notes.size() > 0){
			
		
			notes.each {
				addition = addition + it.noteIsolation;
			}
			
			return (int)(addition/notes.size()); 
				
		}else{
			return 3;
		}

		
	}
	
	//Retourne la note moyenne de satisfaction
	public int getMoyenneNoteSatisfaction(){
		def addition = 0;
		

		if(notes!= null && notes.size() > 0 ){
			
			notes.each {
				addition = addition + it.noteSatisfaction;
			}

			
			return (int)(addition/notes.size());
				
		}else{
			return 3;
		}

		
	}
	
	//Retourne la note moyenne de proprete
	public int getMoyenneNoteProprete(){
		def addition = 0;
		
		if(notes!= null && notes.size() > 0){
			
			notes.each {
				addition = addition + it.noteProprete;
			}
			
			return (int)(addition/notes.size());
			
		}else{
			return 3;
		}

		
	}
	
	//Retourne la note moyenne generale
	public int getMoyenneNoteGeneral(){
		
		def addition = 0;
		
		if(notes != null && notes.size() > 0){
			
			notes.each {
				addition = addition + it.noteGlobal;
			}

			return (int)(addition/notes.size());
				
		}else{
			return 3;
		}

		
		return (int)(addition/notes.size());
		
	}
    static constraints = {

	}
	
	public String getRue(){
		return this.Rue;
	}
	
}
