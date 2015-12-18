<!DOCTYPE html>
<html lang="fr">
<head>
  <title>Rate My Appartement</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
  <asset:stylesheet href="login.css"/>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</head>
<body>

<nav class="navbar navbar-default navbar-inverse" id="yoyo" role="navigation">
  <div class="container-fluid" >
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
        <li><p class="navbar-text">Already have an account?</p></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown"><b>Login</b> <span class="caret"></span></a>
			<ul id="login-dp" class="dropdown-menu">
				<li>
					 <div class="row">
							<div class="col-md-12">
								Login via
								<div class="social-buttons">
									<a href="#" class="btn btn-fb"><i class="fa fa-facebook"></i> Facebook</a>
									<a href="#" class="btn btn-tw"><i class="fa fa-twitter"></i> Twitter</a>
								</div>
                                or
								 <form class="form" role="form" method="post" action="login" accept-charset="UTF-8" id="login-nav">
										<div class="form-group">
											 <label class="sr-only" for="exampleInputEmail2">Email address</label>
											 <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Email address" required>
										</div>
										<div class="form-group">
											 <label class="sr-only" for="exampleInputPassword2">Password</label>
											 <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password" required>
                                             <div class="help-block text-right"><a href="">Forget the password ?</a></div>
										</div>
										<div class="form-group">
											 <button type="submit" class="btn btn-primary btn-block">Sign in</button>
										</div>
										<div class="checkbox">
											 <label>
											 <input type="checkbox"> keep me logged-in
											 </label>
										</div>
								 </form>
							</div>
							<div class="bottom text-center">
								New here ? <a href="#"><b>Join Us</b></a>
							</div>
					 </div>
				</li>
			</ul>
        </li>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>


	



<div class="container" >
	<div class="row">
        <div class="col-sm-6 col-sm-offset-3">
            <div id="imaginary_container"> 
				<form method="GET" action="/RateMyApp/bienImmobilier/recherche">
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
	
	
<h1 id="titre" style="padding-left:30px" >${apartment.rue} </h1>
<g:img dir="images" file="${apartment.pathPhoto}" style="width:100%;height:400px;padding-left:30px;" />


<div class="container" >
    <div class="col-lg-4 col-sm-6 text-center"">
    <div class="well" id ="comments">
        <h4>Commentaires</h4>

    <hr data-brackets-id="12673">
    <ul data-brackets-id="12674" id="sortable" class="list-unstyled ui-sortable">
		 <strong class="pull-left primary-font"> Francois</strong>
		        <small class="pull-right text-muted">
		           <span class="glyphicon glyphicon-time"></span>Il y a 2 jours</small>
		        </br>
		        <li class="ui-state-default">Appartement mal isolé</li>
		 <strong class="pull-left primary-font"> Francoise</strong>
		        <small class="pull-right text-muted">
		           <span class="glyphicon glyphicon-time"></span>Il y a 2 jours</small>
		        </br>
		        <li class="ui-state-default">L'éclairage est très bon!!!! 
		        Je le recommande vivement 
		        </li>
		 <strong class="pull-left primary-font"> Siva</strong>
		        <small class="pull-right text-muted">
		           <span class="glyphicon glyphicon-time"></span>Il y a 2 jours</small>
		        </br>
		        <li class="ui-state-default">Bel appartement très spacieux
		        </li>
		 <strong class="pull-left primary-font"> Cyril</strong>
		        <small class="pull-right text-muted">
		           <span class="glyphicon glyphicon-time"></span>Il y a 2 jours</small>
		        </br>
		        <li class="ui-state-default">Le meilleur!!! 
		        </li>
		 <strong class="pull-left primary-font"> Samuel</strong>
		        <small class="pull-right text-muted">
		           <span class="glyphicon glyphicon-time"></span>Il y a 2 jours</small>
		        </br>
		        <li class="ui-state-default"> Non moi je vous suis pas y avait des punaises 
		        </li>
    <g:each in="${commentaires}" var="commentaire">
		 <strong class="pull-left primary-font">${commentaire.auteur}</strong>
		        <small class="pull-right text-muted">
		           <span class="glyphicon glyphicon-time"></span>${commentaire.date}</small>
		        </br>
		        <li class="ui-state-default">${commentaire.message}</li>
    </g:each>    
    </ul>
    </div>
</div>


</div>

<div class="container">
	<div class="row" id="comments">
		<div class="span4 well" style="padding-bottom:0" id="messagepost">
            <form accept-charset="UTF-8" action="/RateMyApp/bienImmobilier/addComment" method="POST">
                <textarea class="span4" id="new_message" name="message"
                placeholder="Type in your message" rows="6" cols="50"></textarea>
                <input type="hidden" name="id" value="${apartment.id}"><br>
                <h6 class="pull-right" id="cLeft"></h6>
                
                <button class="btn btn-info" type="submit">Post New Message</button>
            </form>
        </div>
	</div>
</div>
	
<div class="container" style="color:white;" id="droiteplease" >
	<div class="row">
		<h2>note generale</h2>
	</div>
    <div class="row lead">
        <div id="stars" class="starrr" data-rating='${note.noteGlobal}'></div>
		<span>${note.noteGlobal}/5</span>
	</div>
    
    <div class="row lead">
        <p>Proprete</p>
        <div id="stars-existing4" class="starrr" data-rating='${note.noteProprete }'></div>
    </div>
	    <div class="row lead">
        <p>Isolation</p>
        <div id="stars-existing2" class="starrr" data-rating='${note.noteIsolation }'></div>
    </div>
	    <div class="row lead">
        <p>Satisfaction</p>
        <div id="stars-existing3" class="starrr" data-rating='${note.noteSatisfaction }'></div>
    </div>
    <form action="/RateMyApp/bienImmobilier/addNote" method="GET" id="form-notation">
    	<input id="noteProprete" name="proprete" type="hidden" value="3">
    	<input id="noteIsolation" name="isolation" type="hidden" value="3">
    	<input id="noteSatisfaction" name="satisfaction" type="hidden" value="3">
    	<input type="hidden" name="id" value='${apartment.id}'>
    	<button  type="submit" class="btn btn-default" id="noter">Noter</button>
    </form>
    
</div>




<asset:javascript src="table2.js"/>


</body>


</html>