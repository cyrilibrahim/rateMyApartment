import ratemyapp.BienImmobilier


class BootStrap {

    def init = { servletContext ->
		
		
		//Remplissage de fausse donn�es 
		
		new BienImmobilier(5,606,"Belle appart","H2X 4A1","154 rue charlotte","Montr�al","Maison","1.jpg").save(failOnError: true);
		new BienImmobilier(5,606,"Belle appart","H2X 4A1","157 rue charlotte","Montr�al","Appartement","1.jpg").save(failOnError: true);
    
		
		
	}
    def destroy = {
    }
}
