<!DOCTYPE html>
<html lang="fr">
<head>
  <title>Rate My Appartement</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <asset:stylesheet href="login.css"/>
  <asset:stylesheet href="table.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-default navbar-inverse" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="/RateMyApp">Rate My Appartement</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->

      <ul class="nav navbar-nav navbar-right">
        <li><p class="navbar-text"></p></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Session</b> <span class="caret"></span></a>
			<ul id="login-dp" class="dropdown-menu">
				<li>
                            <div class="navbar-login">
                                <div class="row">
                                    <div class="col-lg-4">
                                        <p class="text-center">
                                            <span class="glyphicon glyphicon-user icon-size"></span>
                                        </p>
                                    </div>
                                    <div class="col-lg-8">
                                        <p class="text-left"><strong>Anonyme</strong></p>
                                        <p class="text-left small">Anonyme@email.com</p>
                                        <p class="text-left">
                                            <a href="#" class="btn btn-primary btn-block btn-sm">Anonyme</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="navbar-login navbar-login-session">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <p>
                                            <a href="#" class="btn btn-danger btn-block">Anonyme Sesion</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </li>
						<li><a href="#">Parametre <span class="glyphicon glyphicon-cog pull-right"></span></a></li>
            <li class="divider"></li>
            <li><a href="#">Sign Out <span class="glyphicon glyphicon-log-out pull-right"></span></a></li>
			<li class="divider"></li>
			</ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>


 <div class='span8 main'>
	<div class="row">
        <div class="col-sm-6 col-sm-offset-3">
            <div id="imaginary_container"> 
            	<form method="GET" action="recherche">
	                <div class="input-group stylish-input-group">
	                    <input type="text" class="form-control" name="q"  placeholder="Search" >
	                    <span class="input-group-addon">
	                        <button type="submit">
	                            <span class="glyphicon glyphicon-search"></span>
	                        </button>  
	                    </span>
	                </div>
                </form>
            </div>
        </div>
        <div id="filter-panel" class="collapse filter-panel">
            <div class="panel panel-default">
                <div class="panel-body">
                    <form class="form-inline" role="form">
                        <div class="form-group">
                            <label class="filter-col" style="margin-right:0;" for="pref-perpage">Rows per page:</label>
                            <select id="pref-perpage" class="form-control">
                                <option value="2">2</option>
                                <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                                <option value="9">9</option>
                                <option selected="selected" value="10">10</option>
                                <option value="15">15</option>
                                <option value="20">20</option>
                                <option value="30">30</option>
                                <option value="40">40</option>
                                <option value="50">50</option>
                                <option value="100">100</option>
                                <option value="200">200</option>
                                <option value="300">300</option>
                                <option value="400">400</option>
                                <option value="500">500</option>
                                <option value="1000">1000</option>
                            </select>                                
                        </div> <!-- form group [rows] -->
                        <div class="form-group">
                            <label class="filter-col" style="margin-right:0;" for="pref-search">Search:</label>
                            <input type="text" class="form-control input-sm" id="pref-search">
                        </div><!-- form group [search] -->
                        <div class="form-group">
                            <label class="filter-col" style="margin-right:0;" for="pref-orderby">Order by:</label>
                            <select id="pref-orderby" class="form-control">
                                <option>Descendent</option>
                            </select>                                
                        </div> <!-- form group [order by] --> 
                        <div class="form-group">    
                            <div class="checkbox" style="margin-left:10px; margin-right:10px;">
                                <label><input type="checkbox"> Remember parameters</label>
                            </div>
                            <button type="submit" class="btn btn-default filter-col">
                                <span class="glyphicon glyphicon-record"></span> Save Settings
                            </button>  
                        </div>
                    </form>
                </div>
            </div>
        </div>    
        <button type="button" class="btn btn-primary" data-toggle="collapse" data-target="#filter-panel">
            <span class="glyphicon glyphicon-cog"></span> Advanced Search
        </button>
	</div>
	
	<g:each in="${apartments}" var="apartment">
	<!-- debut table Info1-->
		<div class="container">
	    <div class="row user-menu-container square">
	        <div class="col-md-7 user-details">
	            <div class="row coralbg white">
	                <div class="col-md-6 no-pad">
	                    <div class="user-pad">
	                        <h3>${apartment.rue}</h3>
	                        <h4 class="white"><i class="fa fa-check-circle-o"></i> ${apartment.Ville}</h4>
	                        <h4 class="white"><i class="fa fa-twitter"></i> ${apartment.codePostal}</h4>
	                        <button type="button" class="btn btn-labeled btn-info" href="#">
	                           Mise-a-jour</button>
							<a type="button" class="btn btn-labeled btn-info" href="voirAppart?id=${apartment.id}">
	                           Consulter</a>  
	                    </div>
	                </div>
	                <div class="col-md-6 no-pad">
	                    <div class="user-image">
	                        <g:img dir="images" file="${apartment.pathPhoto}" class="img-responsive thumbnail"/>
	                    </div>
	                </div>
	            </div>
	            <div class="row overview">
	                <div class="col-md-4 user-pad text-center">
	                    <h3>  Isolation: </h3>
	                    <h4>${apartment.getMoyenneNoteIsolation()}/5</h4>
	                </div>
	                <div class="col-md-4 user-pad text-center">
	                    <h3>Proprete</h3>
	                    <h4>${apartment.getMoyenneNoteProprete()}/5</h4>
	                </div>
	                <div class="col-md-4 user-pad text-center">
	                    <h3>Satisfaction</h3>
	                    <h4>${apartment.getMoyenneNoteSatisfaction()}/5</h4>
	                </div>
	            </div>
	        </div>
	         <div class="span8">
	        	<iframe width="485" height="332" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="https://maps.google.co.uk/maps?f=q&source=s_q&hl=en&geocode=&q=15+Springfield+Way,+Hythe,+CT21+5SH&aq=t&sll=52.8382,-2.327815&sspn=8.047465,13.666992&ie=UTF8&hq=&hnear=15+Springfield+Way,+Hythe+CT21+5SH,+United+Kingdom&t=m&z=14&ll=51.077429,1.121722&output=embed"></iframe>
	    	    </div>
		</div>
		</div>
	</g:each>	

<asset:javascript src="table.js"/>
	</div>
</div>



</body>
</html>