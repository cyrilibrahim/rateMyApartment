package ratemyapp

class Commentaire {
	static belongsTo = [bien: BienImmobilier]
	String message
	Date date
	
	public Commentaire(String message, Date date,BienImmobilier bien){
		this.message = message;
		this.date = date;
		this.bien = bien;
	}
	public Commentaire(String message, Date date){
		this.message = message;
		this.date = date;
	}
    static constraints = {
    }
}
 