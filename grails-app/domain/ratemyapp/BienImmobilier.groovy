package ratemyapp

public class BienImmobilier {
	

	
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
	
    static constraints = {

	}
	
	public String getRue(){
		return this.Rue;
	}
	
}
