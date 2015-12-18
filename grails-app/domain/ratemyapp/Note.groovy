package ratemyapp

import java.util.Date;

class Note {


	static belongsTo = [bien: BienImmobilier]
	double noteGlobal;
	int noteProprete;
	int noteSatisfaction;
	int noteIsolation;
	
	
	String auteur = "Anonyme"
	
	public Note(int proprete,int satisfaction, int isolation, BienImmobilier bien){
		this.noteProprete = proprete;
		this.noteSatisfaction = satisfaction;
		this.noteIsolation = isolation;
		this.noteGlobal = (proprete + satisfaction + isolation) / 3
		this.bien = bien
	}
	

    static constraints = {
    }
}
