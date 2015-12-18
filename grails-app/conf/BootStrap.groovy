import ratemyapp.BienImmobilier
import ratemyapp.Commentaire

class BootStrap {

    def init = { servletContext ->
		
		//Commentaires
		
		
		//Remplissage de fausse données 
		
		def b1 = new BienImmobilier(5,606,"Bel appart","H2X 4A1","154 rue charlotte","Montreal","Appartement","appart1.jpg").save(failOnError: false);
		new BienImmobilier(5,606,"Bel appart","H2X 4A1","157 rue charlotte","Montréal","Appartement","appart2.jpg").save(failOnError: false);
		new BienImmobilier(5,606,"Bel appart","H2X 1A1","1111 rue Masson","Montreal","Maison","maison1.jpg").save(failOnError: false);
		new BienImmobilier(5,606,"Bel appart","H2X 2D2","157 rue Masson","Montreal","Maison","maison2.jpg").save(failOnError: false);
	
		new Commentaire("Salut",new Date(), b1);
		
	}
    def destroy = {
    }
}
