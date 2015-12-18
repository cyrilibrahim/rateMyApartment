import ratemyapp.BienImmobilier


class BootStrap {

    def init = { servletContext ->
		
		
		//Remplissage de fausse données 
		
		new BienImmobilier(5,606,"Bel appart","H2X 4A1","154 rue charlotte","Montreal","Appartement","appart1.jpg").save(failOnError: true);
		new BienImmobilier(5,606,"Bel appart","H2X 4A1","157 rue charlotte","Montréal","Appartement","appart2.jpg").save(failOnError: true);
		new BienImmobilier(5,606,"Bel appart","H2X 1A1","1111 rue Masson","Montreal","Maison","maison1.jpg").save(failOnError: true);
		new BienImmobilier(5,606,"Bel appart","H2X 2D2","157 rue Masson","Montreal","Maison","maison2.jpg").save(failOnError: true);
	
		
		
	}
    def destroy = {
    }
}
