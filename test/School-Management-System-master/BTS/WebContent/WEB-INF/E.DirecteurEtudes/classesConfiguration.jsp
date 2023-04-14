<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
  <head>
  	<title>Configurations des classes</title>
  	
    <meta http-equiv="content-type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/all.min.css" type="text/css" >
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css" type="text/css" >
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/dataTables.bootstrap.css" type="text/css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery.dataTables.min.css" type="text/css" >
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/fontawesome.min.css" type="text/css" >
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstap.min.css" type="text/css" >
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/jquery-ui.min.css" type="text/css" >
		
	<style type="text/css">
	body{
			background-color:#fff;
		}
	/***************** Modal confirm **********************/
	.modal-confirm {		
		color: #636363;
		width: 325px;
	}
	.modal-confirm .modal-content {
		padding: 20px;
		border-radius: 5px;
		border: none;
	}
	.modal-confirm .modal-header {
		border-bottom: none;   
        position: relative;
	}
	.modal-confirm h4 {
		width:100%;
		text-align: center;
		font-size: 26px;
		margin: 30px 0 -15px;
	}
	.modal-confirm .form-control, .modal-confirm .btn {
		min-height: 40px;
		border-radius: 3px; 
	}
	.modal-confirm .close {
        position: absolute;
		top: -5px;
		right: -5px;
	}	
	.modal-confirm .modal-footer {
		border: none;
		text-align: center;
		border-radius: 5px;
		font-size: 13px;
	}	
	.modal-confirm .icon-box {
		color: #fff;		
		position: absolute;
		margin: 0 auto;
		left: 0;
		right: 0;
		top: -70px;
		width: 95px;
		height: 95px;
		border-radius: 50%;
		z-index: 9;
		/* background: #82ce34; */
		padding: 15px;
		text-align: center;
		box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.1);
	}
	.modal-confirm .icon-box i {
		font-size: 58px;
		position: relative;
		top: 3px;
	}
	.modal-confirm.modal-dialog {
		margin-top: 80px;
	}
    .modal-confirm .btn {
        color: #fff;
        border-radius: 4px;
		text-decoration: none;
		transition: all 0.4s;
        line-height: normal;
        border: none;
        width:100%;
    }

/********************************************************************/
		.page-header h3{
		padding:10px;
		}
		.panel-primary{
		border:1px solid #3071a9 !important;
		}
		.panel-body{
			padding:20px;
		}
		.panel.with-nav-tabs .panel-heading{
		    padding: 5px 5px 0 5px;
		    background-color: #3071a9;
		}
		.panel.with-nav-tabs.panel-body{
		    padding: 10px 15px;
		}
		.panel.with-nav-tabs .nav-tabs{
			border-bottom: none;
		}
		.panel.with-nav-tabs .nav-justified{
			margin-bottom: -1px;
		}
		/*** PANEL PRIMARY ***/
		.with-nav-tabs.panel-primary .nav-tabs > a,
		.with-nav-tabs.panel-primary .nav-tabs > a:hover,
		.with-nav-tabs.panel-primary .nav-tabs > a:focus {
		    color: #fff;
		}
		.with-nav-tabs.panel-primary .nav-tabs > .open > a,
		.with-nav-tabs.panel-primary .nav-tabs > .open > a:hover,
		.with-nav-tabs.panel-primary .nav-tabs > .open > a:focus,
		.with-nav-tabs.panel-primary .nav-tabs > a:hover,
		.with-nav-tabs.panel-primary .nav-tabs >  a:focus {
			color: #fff;
			background-color: #3071a9;
			border-color: transparent;
		}
		.with-nav-tabs.panel-primary .nav-tabs > a.active,
		.with-nav-tabs.panel-primary .nav-tabs > a.active > a:hover,
		.with-nav-tabs.panel-primary .nav-tabs > a.active > a:focus {
			color: #428bca;
			background-color: #fff;
			border-color: #428bca;
			border-bottom-color: transparent;
		}
		.with-nav-tabs.panel-primary .nav-tabs > li.dropdown .dropdown-menu {
		    background-color: #428bca;
		    border-color: #3071a9;
		}
		.with-nav-tabs.panel-primary .nav-tabs > li.dropdown .dropdown-menu > li > a {
		    color: #fff;   
		}
		.with-nav-tabs.panel-primary .nav-tabs > li.dropdown .dropdown-menu > li > a:hover,
		.with-nav-tabs.panel-primary .nav-tabs > li.dropdown .dropdown-menu > li > a:focus {
		    background-color: #3071a9;
		}
		.with-nav-tabs.panel-primary .nav-tabs > li.dropdown .dropdown-menu > .active > a,
		.with-nav-tabs.panel-primary .nav-tabs > li.dropdown .dropdown-menu > .active > a:hover,
		.with-nav-tabs.panel-primary .nav-tabs > li.dropdown .dropdown-menu > .active > a:focus {
		    background-color: #4a9fe9;
		}
		/********************************************************************/
			input.error {
		    border-color: #f00 !important;
			}
			small.required {
			    color:#f00;
			}
.modal-backdrop {
   /* display: none; */
}
	/**************** Data Table *******************/
	
		</style>	
  </head>
 <body>
	<div class="wrapper d-flex align-items-stretch">
		<nav id="sidebar" class="active">
			<h1><a href="index.html" class="logo"><span class="fa fa-cubes"></span></a></h1>
	      	<%@include file="MenuDirecteurEtudes.jsp" %>
		</nav>
	<!-- Page Content  -->
	<div id="content" class="container">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
          <div class="container-fluid">

            <button type="button" id="sidebarCollapse" class="btn btn-primary">
              <i class="fa fa-bars"></i>
              <span class="sr-only">Toggle Menu</span>
            </button>
            <button class="btn btn-dark d-inline-block d-lg-none ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <i class="fa fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
              <ul class="nav navbar-nav ml-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#"><span class="fa fa-home mr-2"></span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><span class="fa fa-envelope mr-2"></span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#"><span class="fa fa-bell mr-2"></span></a>
                </li>
                <li class="nav-item">
                    <div class="dropdown">
					    <button class="btn btn-default dropdown-toggle" type="button" id="menu1" data-toggle="dropdown">
					     <img src="${pageContext.request.contextPath}/Document/Download?file=${sessionScope.userPhoto}" class="rounded-circle" style="width:20px;height:20px;">
					       
					    </button>
					    <div class="dropdown-menu dropdown-menu-right" role="menu" >
					      <div class="dropdown-item text-center">
					      <img src="${pageContext.request.contextPath}/Document/Download?file=${sessionScope.userPhoto}" class="rounded-circle" style="width:60px;height:60px;">
					       
					      </div>
					      <h5 class="dropdown-header text-primary text-center">${sessionScope.userFirstName_Fr} &nbsp; ${sessionScope.userLastName_Fr}</h5>
					      <h5 class="dropdown-header text-muted text-center">${sessionScope.userRole}</h5>
					      <div class="dropdown-divider"></div>
					      <a class="dropdown-item" href="${pageContext.request.contextPath}/E.DirecteurEtudes/Profile?userId=${sessionScope.userID}">
					      		<span class="fa fa-id-card mr-2"></span>
					      		Profile
					      </a>
					      <div class="dropdown-divider"></div>
						  <a class="dropdown-item" href="${pageContext.request.contextPath}/Logout"> 
						      	<span class="fa fa-external-link-square-alt mr-2"></span>
						      	Déconnexion
						  </a>
					    </div>
					  </div>
                </li>
     
              </ul>
            </div>
          </div>
        </nav>
<!-- Start content -->
	
	<div class="container"> 
		<!-- Col 0 -->
		  <div class="alert bg-light text-muted">
		  	<div class="row align-items-center h-100">
			    <div class="col-md-2 ">
			      <span class="fa fa-chalkboard-teacher " style="font-size:5vw;"></span>
			    </div>
			    <div class="col-md-10">
			      <div style="font-size:3vw;">Classes</div>
			      <div>Création et configuration des classes.</div>
			    </div>
			</div>
		  </div> 
		<!--/ Col 0 -->
		<div class="row">
		<div class="col-md-9"> <!-- Col 1 -->
		<div class="panel with-nav-tabs panel-primary">
		     <div class="panel-heading">
					<nav class="nav nav-tabs flex-column flex-sm-row"  id="Tab-Content" role="tablist">
					    <a id="tab_AnneeScolaires" href="#content-tab-AnneeScolaires" class="nav-item nav-link active" data-toggle="tab" role="tab" aria-controls="content-tab-AnneeScolaires" aria-selected="false">
					        <i class="fa fa-calendar-alt mr-2"></i> Année Scolaire
					    </a>
					    <a id="tab_Classes" href="#content-tab-Classes" class="nav-item nav-link" data-toggle="tab" role="tab" aria-controls="content-css" aria-selected="false">
					        <i class="fa fa-chalkboard-teacher mr-2"></i> Classes
					    </a>
					    <a id="tab_ClasseGeneriques" href="#content-tab-ClasseGeneriques" class="nav-item nav-link" data-toggle="tab" role="tab" aria-controls="content-tab-ClasseGeneriques" aria-selected="false">
					        <i class="fa fa-chalkboard mr-2"></i> Classes Génériques
					    </a>
					    <a id="tab_Cycles" href="#content-tab-Cycles" class="nav-item nav-link" data-toggle="tab" role="tab" aria-controls="content-absence" aria-selected="false">
					        <i class="fa fa-list-ol mr-2"></i> Cycles
					    </a>
					    <a id="tab_Filieres" href="#content-tab-Filieres" class="nav-item nav-link" data-toggle="tab" role="tab" aria-controls="content-absence" aria-selected="false">
					        <i class="fa fa-sitemap mr-2"></i> Filières
					    </a>
					    <a id="tab_Niveaux" href="#content-tab-Niveaux" class="nav-item nav-link" data-toggle="tab" role="tab" aria-controls="content-absence" aria-selected="false">
					        <i class="fa fa-cubes mr-2"></i> Niveaux
					    </a>
					</nav>
			</div>
		    <div class="panel-body">
		    	<!-- Tab content -->
				<div class="tab-content" id="Tab-Content">
						<!-- Content tab 1 	: Année Scolaire-->
					  	<div id="content-tab-AnneeScolaires" class="tab-pane active" role="tabpanel" aria-labelledby="content-tab-AnneeScolaires">
					   		
					   		<div class="alert alert-warning">
							  <button type="button" data-dismiss="alert" aria-hidden="true" class="close">×</button>
							  <div class="row">  
							    <div class="col-md-2">
							      <i class="fa fa-exclamation-triangle text-danger" style="font-size:6vw;"></i>
							    </div>
							    <div class="col-md-10">
							      <strong>Important !</strong>
							      <p>
							      	Au début de chaque année scolaire la personne habilité à accéder à cet espace, 
							      	doit choisir l'année scolaire courante. 
							      	Tout le fontionnement de la plate-forme est tributaire de ce choix.
							      </p>
							    </div>
							   </div>
							    
							  </div>
					   		
					   		<div class="alert bg-light text-secondary" role="alert">
					   		
					   			<div class="form-group row">
									    <label for="anneScolaireCourante" class="col-sm-5 col-form-label">
									    	<i class="fa fa-calendar-alt mr-2"></i>
					   						Année scolaire courante
									    </label>
									    <div class="col-sm-7">
									    	<div class="input-group mb-3">
											  	<div class="input-group-prepend">
											    <button id="lock_anneeScolaireCourante_Selector" class="btn btn-outline-info"><span class="fa fa-unlock" title="Déverouiller"></span></button>
											  	</div>
											  		<select id="anneeScolaireCourante_Selector" class="form-control" name="anneScolaireCourante" disabled required>
														<!-- On inserre ici dynamiquement l'année scolaire courante et autres annnées scolaire -->
													</select>
											</div>
									    </div>
								 </div> 
							</div>
							
							<div class="panel panel-primary">
							      <div class="panel-heading text-white clearfix">
							      		
								      		<i class="fa fa-calendar-alt mr-2"></i>
								      		Gerer les années scolaires 
							      		
							      		<span class="float-right" >
							      			<a id="btn_toggle_anneeScolaire_panel" class="accordion-toggle text-white" href="#anneeScolaire_panel" data-toggle="collapse" data-parent="#anneeScolaire_panel">
												   <strong><i class="fa fa-caret-down mr-2"></i></strong>
											</a>
							      		</span>
							 
							      </div>
							      <div class="panel-body accordion-body collapse" id="anneeScolaire_panel">
										<div class="alert bg-light text-secondary" role="alert">
								   			<i class="fa fa-calendar-alt mr-2"></i>
								   			Années Scolaires
									        <a href="#" data-toggle="modal" data-target="#anneeScolaire_Add_Modal" class="btn btn-outline-info float-right" title="Ajouter un anneeScolaire"><i class="fa fa-plus"></i></a>
									        
										</div>
										<table id="data_table_anneeScolaires" class="table table-striped table-bordered" cellspacing="0" width="100%">
											<thead>
												<tr>
													<th>N°</th>
													<th>Année Scolaire</th>
													<th>Action</th>
												</tr>
											</thead>
											<tbody>
											</tbody>
										</table>
										<!-- Début : Modal Add New AnneeScolaire -->
											<div id="anneeScolaire_Add_Modal" class="modal" tabindex="-1" role="dialog">
												<div class="modal-dialog">
												<form id="anneeScolaire_Add_Form" method="POST" action="../AnneeScolaire/Add" autocomplete="off" >
											      	<div class="modal-content shadow-lg p-3 mb-5 bg-white rounded">
											          	<div class="modal-header bg-info">
				        									<h4 class="modal-title text-white">
											        			Ajouter un année scolaire
											        		</h4>
											        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										    					<span aria-hidden="true">&times;</span>
										  					</button>
											        	</div>
											          	<div class="modal-body">
											          		<div class="form-group row">
													    		<label for="anneeScolaire_code" class="col-sm-3 control-label">Code</label>
															    <div class="col-sm-9">
															      <input id="anneeScolaire_code" type="text" class="form-control" name="code" placeholder="Exemple : 2019/2020" required/>
															    </div>
													  		</div>
															<div class="form-group row">
															  <label for="anneeScolaire_Date_Debut" class="col-sm-3 control-label">Date début</label>
															  <div class="col-sm-9">
															    <input id="anneeScolaire_Date_Debut" type="text" class="form-control text-field" name="dateDebut" placeholder="Date de début" required/>
															  </div>
															</div>
													  		<div class="form-group row">
															  <label for="anneeScolaire_Date_Fin" class="col-sm-3 control-label">Date fin</label>
															  <div class="col-sm-9">
															    <input id="anneeScolaire_Date_Fin" type="text" class="form-control" name="dateFin" placeholder="Date de fin" required/>
															  </div>
															</div>
											      	</div>
											        <div class="modal-footer ">
										        		<input type="submit" class="btn btn-primary" value="Enregistrer" />
												        <button type="button" class="btn btn-secondary" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Annuler</button>
										      		</div>
											        </div>
											   	</form>
												</div>
										    </div>
										 <!-- Fin : Modal Add New AnneeScolaire -->
										 <!-- Début : Modal Update AnneeScolaire -->
											<div id="anneeScolaire_Update_Modal" class="modal" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true" data-backdrop="false">
												<div class="modal-dialog">
												<form id="anneeScolaire_Update_Form" method="POST" action="../AnneeScolaire/Update" >
											      	<div class="modal-content shadow-lg p-3 mb-5 bg-white rounded">
											          	<div class="modal-header bg-info">
				        									<h4 class="modal-title text-white">
											        			Modifier l'année scolaire
											        		</h4>
											        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										    					<span aria-hidden="true">&times;</span>
										  					</button>
											        	</div>
											          	<div class="modal-body">
											          		<div class="form-group row">
													    		<label for="anneeScolaire_code" class="col-sm-3 control-label">Code</label>
															    <div class="col-sm-9">
															      <input  type="hidden" class="form-control" name="id" />
															      <input id="anneeScolaire_code" type="text" class="form-control" name="code" placeholder="Exemple : 2019/2020" required/>
															    </div>
													  		</div>
															<div class="form-group row">
															  <label for="anneeScolaire_Date_Debut_Update" class="col-sm-3 control-label">Date début</label>
															  <div class="col-sm-9">
															    <input id="anneeScolaire_Date_Debut_Update" type="text" class="form-control text-field" name="dateDebut" placeholder="Date de début" required/>
															  </div>
															</div>
													  		<div class="form-group row">
															  <label for="anneeScolaire_Date_Fin_Update" class="col-sm-3 control-label">Date fin</label>
															  <div class="col-sm-9">
															    <input id="anneeScolaire_Date_Fin_Update" type="text" class="form-control text-field" name="dateFin" placeholder="Date de fin" required/>
															  </div>
															</div>
											      	</div>
											        <div class="modal-footer ">
										        		<input type="submit" class="btn btn-primary" value="Enregistrer" />
												        <button type="button" class="btn btn-secondary" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Annuler</button>
										      		</div>
											        </div>
											   	</form>
												</div>
										    </div>
										 <!-- Fin : Modal Update AnneeScolaire -->
										 
										 <!-- Début : Modal Details AnneeScolaire -->
											<div id="anneeScolaire_Details_Modal" class="modal" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true" data-backdrop="false">
												<div class="modal-dialog">
											      	<div class="modal-content shadow-lg p-3 mb-5 bg-white rounded">
											          	<div class="modal-header bg-info">
				        									<h4 class="modal-title text-white">
											        			Détails de l'année scolaire
											        		</h4>
											        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
										    					<span aria-hidden="true">&times;</span>
										  					</button>
											        	</div>
											          	<div class="modal-body">
											          		<ul class="list-group">
																<!-- Affichage dynamique des détails du anneeScolaire-->
															</ul>
														</div>
														<div class="modal-footer ">
															<button type="button" class="btn btn-secondary" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Fermer</button>
														</div>
											        </div>
												</div>
										    </div>
										 <!-- Fin : Modal Details AnneeScolaire -->
								</div>
						    </div>
						</div>
						<!-- /Content tab 1 : Année Scolaire-->
						<!-- Content tab 2 	: Classes-->
						<div id="content-tab-Classes" class="tab-pane"  role="tabpanel" aria-labelledby="tab-css">
						    
							<div class="alert bg-light text-secondary" role="alert">
					   			<i class="fa fa-chalkboard-teacher mr-2"></i>
					   			Classes
						        <a href="#" data-toggle="modal" data-target="#classe_Add_Modal" class="btn btn-outline-info float-right" title="Ajouter une classe"><i class="fa fa-plus"></i></a>
						        
							</div>
							<table id="data_table_classes" class="table table-striped table-bordered" cellspacing="0" width="100%">
								<thead>
									<tr>
										<th>N°</th>
										<th>Nom</th>
							            <th>Action</th>
									</tr>
								</thead>
								<tbody>
								</tbody>
							</table>
							<!-- Début : Modal Add New Classe -->
								<div id="classe_Add_Modal" class="modal" tabindex="-1" role="dialog">
									<div class="modal-dialog">
									<form id="classe_Add_Form" method="POST" action="../Classe/Add" >
								      	<div class="modal-content shadow-lg p-3 mb-5 bg-white rounded">
								          	<div class="modal-header bg-info">
				        						<h4 class="modal-title text-white">
								        			Ajouter une classe 
								        		</h4>
								        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							    					<span aria-hidden="true">&times;</span>
							  					</button>
								        	</div>
								          	<div class="modal-body">
								          		<div class="form-group row">
										    		<label for="classe_code" class="col-sm-3 control-label">Cycle</label>
												    <div class="col-sm-9">
												      <select id="classe_code" class="form-control" name="cycle"  required>
												      </select>
												    </div>
										  		</div>
												<div class="form-group row">
												  <label for="classe_Filiere" class="col-sm-3 control-label">Filière</label>
												  <div class="col-sm-9">
												    <select id="classe_Filiere" class="form-control" name="filiere" required>
												    </select>
												  </div>
												</div>
										  		<div class="form-group row">
												  <label for="classe_Niveau" class="col-sm-3 control-label">Niveau</label>
												  <div class="col-sm-9">
												    <select id="classe_Niveau" class="form-control" name="niveau" required>
												    </select>
												  </div>
												</div>
												<div class="form-group row">
												  <label for="classe_AnneeScolaire" class="col-sm-3 control-label">Année Scolaire</label>
												  <div class="col-sm-9">
												    <select id="classe_AnneeScolaire" class="form-control" name="annneescolaire" required>
												    </select>
												  </div>
												</div>
												<div class="form-group row">
												  <label for="classe_Label" class="col-sm-3 control-label">Label</label>
												  <div class="col-sm-9">
												    <input id="classe_Label"  type="text" class="form-control" name="label" placeholder="Exemple: 1 , 2, .. A, B, ...  " required/>
												  </div>
												</div>
								      	</div>
								        <div class="modal-footer ">
							        		<input type="submit" class="btn btn-primary" value="Enregistrer" />
									        <button type="button" class="btn btn-secondary" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Annuler</button>
							      		</div>
								        </div>
								   	</form>
									</div>
							    </div>
							 <!-- Fin : Modal Add New Classe -->
							 <!-- Début : Modal Update Classe -->
								<div id="classe_Update_Modal" class="modal" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true" data-backdrop="false">
									<div class="modal-dialog">
									<form id="classe_Update_Form" method="POST" action="../Classe/Update" >
								      	<div class="modal-content shadow-lg p-3 mb-5 bg-white rounded">
								          	<div class="modal-header bg-info">
				        						<h4 class="modal-title text-white">
								        			Modifier la classe 
								        		</h4>
								        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							    					<span aria-hidden="true">&times;</span>
							  					</button>
								        	</div>
								          	<div class="modal-body">
								          		<div class="form-group row">
										    		<label for="classe_code" class="col-sm-3 control-label">Cycle</label>
										    		<input  type="hidden" class="form-control" name="id" />
												    <div class="col-sm-9">
												      <select id="classe_code" class="form-control" name="cycle" required>
												      </select>
												    </div>
										  		</div>
												<div class="form-group row">
												  <label for="classe_Filiere" class="col-sm-3 control-label">Filière</label>
												  <div class="col-sm-9">
												    <select id="classe_Filiere" class="form-control" name="filiere" required>
												    </select>
												  </div>
												</div>
										  		<div class="form-group row">
												  <label for="classe_Niveau" class="col-sm-3 control-label">Niveau</label>
												  <div class="col-sm-9">
												    <select id="classe_Niveau" class="form-control" name="niveau" required >
												    </select>
												  </div>
												</div>
												<div class="form-group row">
												  <label for="classe_AnneeScolaire" class="col-sm-3 control-label">Année Scolaire</label>
												  <div class="col-sm-9">
												    <select id="classe_AnneeScolaire" class="form-control" name="anneescolaire" required>
												    </select>
												  </div>
												</div>
												<div class="form-group row">
												  <label for="classe_Label" class="col-sm-3 control-label">Label</label>
												  <div class="col-sm-9">
												    <input id="classe_Label"  type="text" class="form-control" name="label" placeholder="Exemple: 1 , 2, .. A, B, ...  " required/>
												  </div>
												</div>
								      		</div>
								        <div class="modal-footer ">
							        		<input type="submit" class="btn btn-primary" value="Enregistrer" />
									        <button type="button" class="btn btn-secondary" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Annuler</button>
							      		</div>
								        </div>
								   	</form>
									</div>
							    </div>
							 <!-- Fin : Modal Update Classe -->
							 
							 <!-- Début : Modal Details Classe -->
								<div id="classe_Details_Modal" class="modal" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true" data-backdrop="false">
									<div class="modal-dialog">
								      	<div class="modal-content shadow-lg p-3 mb-5 bg-white rounded">
								          	<div class="modal-header bg-info">
				        						<h4 class="modal-title text-white">
								        			Détails de la classe 
								        		</h4>
								        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							    					<span aria-hidden="true">&times;</span>
							  					</button>
								        	</div>
								          	<div class="modal-body">
								          		<ul class="list-group">
													<!-- ici on Affiche dynamiquement  les détails de classe-->
												</ul>
											</div>
											<div class="modal-footer ">
												<button type="button" class="btn btn-secondary" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Fermer</button>
											</div>
								        </div>
									</div>
							    </div>
							 <!-- Fin : Modal Details Classe -->
						</div>
						<!-- /Content tab 2	: Classes-->
						<!-- Content tab 3	: Classes Géneriques-->
						<div id="content-tab-ClasseGeneriques" class="tab-pane" role="tabpanel" aria-labelledby="tab-bootstrap">
					   		<div class="alert bg-light text-secondary" role="alert">
					   			<i class="fa fa-chalkboard mr-2"></i>
					   			Classes Générique
						        <a href="#" data-toggle="modal" data-target="#classeGenerique_Add_Modal" class="btn btn-outline-info float-right" title="Ajouter une Classe génirique"><i class="fa fa-plus"></i></a>
						        
							</div>
							<table id="data_table_classeGeneriques" class="table table-striped table-bordered" cellspacing="0" width="100%">
								<thead>
									<tr>
										<th>N°</th>
										<th>Nom</th>
							            <th>Action</th>
									</tr>
								</thead>
								<tbody>
								</tbody>
							</table>
							<!-- Début : Modal Add New ClasseGenerique -->
								<div id="classeGenerique_Add_Modal" class="modal" tabindex="-1" role="dialog">
									<div class="modal-dialog">
									<form id="classeGenerique_Add_Form" method="POST" action="../ClasseGenerique/Add" >
								      	<div class="modal-content shadow-lg p-3 mb-5 bg-white rounded">
								          	<div class="modal-header bg-info">
				        						<h4 class="modal-title text-white">
								        			Ajouter une classe générique
								        		</h4>
								        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							    					<span aria-hidden="true">&times;</span>
							  					</button>
								        	</div>
								          	<div class="modal-body">
								          		<div class="form-group row">
										    		<label for="classeGenerique_code" class="col-sm-3 control-label">Cycle</label>
												    <div class="col-sm-9">
												      <select id="classeGenerique_code" class="form-control" name="cycle"  required>
												      </select>
												    </div>
										  		</div>
												<div class="form-group row">
												  <label for="classeGenerique_Filiere" class="col-sm-3 control-label">Filière</label>
												  <div class="col-sm-9">
												    <select id="classeGenerique_Filiere" class="form-control" name="filiere" required>
												    </select>
												  </div>
												</div>
										  		<div class="form-group row">
												  <label for="classeGenerique_Niveau" class="col-sm-3 control-label">Niveau</label>
												  <div class="col-sm-9">
												    <select id="classeGenerique_Niveau" class="form-control" name="niveau" required>
												    </select>
												  </div>
												</div>
												<div class="form-group row">
												  <label for="classeGenerique_Description" class="col-sm-3 control-label">Description</label>
												  <div class="col-sm-9">
												    <textarea id="classeGenerique_Description" class="form-control" name="description">
												    </textarea>
												  </div>
												</div>
								      	</div>
								        <div class="modal-footer ">
							        		<input type="submit" class="btn btn-primary" value="Enregistrer" />
									        <button type="button" class="btn btn-secondary" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Annuler</button>
							      		</div>
								        </div>
								   	</form>
									</div>
							    </div>
							 <!-- Fin : Modal Add New ClasseGenerique -->
							 <!-- Début : Modal Update ClasseGenerique -->
								<div id="classeGenerique_Update_Modal" class="modal" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true" data-backdrop="false">
									<div class="modal-dialog">
									<form id="classeGenerique_Update_Form" method="POST" action="../ClasseGenerique/Update" >
								      	<div class="modal-content shadow-lg p-3 mb-5 bg-white rounded">
								          	<div class="modal-header bg-info">
				        						<h4 class="modal-title text-white">
								        			Modifier la classe générique
								        		</h4>
								        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							    					<span aria-hidden="true">&times;</span>
							  					</button>
								        	</div>
								          	<div class="modal-body">
								          		<div class="form-group row">
										    		<label for="classeGenerique_code" class="col-sm-3 control-label">Cycle</label>
										    		<input  type="hidden" class="form-control" name="id" />
												    <div class="col-sm-9">
												      <select id="classeGenerique_code" class="form-control" name="cycle" required>
												      </select>
												    </div>
										  		</div>
												<div class="form-group row">
												  <label for="classeGenerique_Filiere" class="col-sm-3 control-label">Filière</label>
												  <div class="col-sm-9">
												    <select id="classeGenerique_Filiere" class="form-control" name="filiere" required>
												    </select>
												  </div>
												</div>
										  		<div class="form-group row">
												  <label for="classeGenerique_Niveau" class="col-sm-3 control-label">Niveau</label>
												  <div class="col-sm-9">
												    <select id="classeGenerique_Niveau" class="form-control" name="niveau" required>
												    </select>
												  </div>
												</div>
												<div class="form-group row">
												  <label for="classeGenerique_Description" class="col-sm-3 control-label">Description</label>
												  <div class="col-sm-9">
												    <textarea id="classeGenerique_Description" class="form-control" name="description">
												    </textarea>
												  </div>
												</div>
								      		</div>
								        <div class="modal-footer ">
							        		<input type="submit" class="btn btn-primary" value="Enregistrer" />
									        <button type="button" class="btn btn-secondary" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Annuler</button>
							      		</div>
								        </div>
								   	</form>
									</div>
							    </div>
							 <!-- Fin : Modal Update ClasseGenerique -->
							 
							 <!-- Début : Modal Details ClasseGenerique -->
								<div id="classeGenerique_Details_Modal" class="modal" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true" data-backdrop="false">
									<div class="modal-dialog">
								      	<div class="modal-content shadow-lg p-3 mb-5 bg-white rounded">
								          	<div class="modal-header bg-info">
				        						<h4 class="modal-title text-white">
								        			Détails de la classe générique
								        		</h4>
								        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							    					<span aria-hidden="true">&times;</span>
							  					</button>
								        	</div>
								          	<div class="modal-body">
								          		<ul class="list-group">
													<!-- ici on Affiche dynamiquement  les détails de classeGenerique-->
												</ul>
											</div>
											<div class="modal-footer ">
												<button type="button" class="btn btn-secondary" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Fermer</button>
											</div>
								        </div>
									</div>
							    </div>
							 <!-- Fin : Modal Details ClasseGenerique -->
						</div>
						<!-- /Content tab 3	: Classes Géneriques-->
						<!-- Content tab 4	: Cycles-->
						<div id="content-tab-Cycles" class="tab-pane" role="tabpanel" aria-labelledby="tab-bootstrap">
					   		<div class="alert bg-light text-secondary" role="alert">
					   			<i class="fa fa-list-ol mr-2"></i>
					   			Cycles
						        <a href="#" data-toggle="modal" data-target="#cycle_Add_Modal" class="btn btn-outline-info float-right" title="Ajouter un cycle"><i class="fa fa-plus"></i></a>
						    </div>
							<table id="data_table_cycles" class="table table-striped table-bordered" cellspacing="0" width="100%">
								<thead>
									<tr>
										<th>N°</th>
										<th>Code</th>
										<th>Nom</th>
							            <th>Action</th>
									</tr>
								</thead>
								<tbody>
								</tbody>
							</table>
							<!-- Début : Modal Add New Cycle -->
								<div id="cycle_Add_Modal" class="modal" tabindex="-1" role="dialog">
									<div class="modal-dialog">
									<form id="cycle_Add_Form" method="POST" action="../Cycle/Add" >
								      	<div class="modal-content shadow-lg p-3 mb-5 bg-white rounded">
								          	<div class="modal-header bg-info">
				        						<h4 class="modal-title text-white">
								        			Ajouter un cycle
								        		</h4>
								        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							    					<span aria-hidden="true">&times;</span>
							  					</button>
								        	</div>
								          	<div class="modal-body">
								          		<div class="form-group row">
										    		<label for="cycle_code" class="col-sm-3 control-label">Code du cycle</label>
												    <div class="col-sm-9">
												      <input id="cycle_code" type="text" class="form-control" name="code" placeholder="Code du cycle" required/>
												    </div>
										  		</div>
												<div class="form-group row">
												  <label for="cycle_Nom_Fr" class="col-sm-3 control-label">Nom du cycle</label>
												  <div class="col-sm-9">
												    <input id="cycle_Nom_Fr" type="text" class="form-control" name="nom_Fr" placeholder="Nom du cycle en français" required/>
												  </div>
												</div>
										  		<div class="form-group row">
												  <label for="cycle_Nom_Ar" class="col-sm-3 control-label">إسم السلك</label>
												  <div class="col-sm-9">
												    <input id="cycle_Nom_Ar" type="text" class="form-control" name="nom_Ar" dir="rtl" placeholder="إسم السلك بالعربية"/>
												  </div>
												</div>
								      	</div>
								        <div class="modal-footer ">
							        		<input type="submit" class="btn btn-primary" value="Enregistrer" />
									        <button type="button" class="btn btn-secondary" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Annuler</button>
							      		</div>
								        </div>
								   	</form>
									</div>
							    </div>
							 <!-- Fin : Modal Add New Cycle -->
							 <!-- Début : Modal Update Cycle -->
								<div id="cycle_Update_Modal" class="modal" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true" data-backdrop="false">
									<div class="modal-dialog">
									<form id="cycle_Update_Form" method="POST" action="../Cycle/Update" >
								      	<div class="modal-content shadow-lg p-3 mb-5 bg-white rounded">
								          	<div class="modal-header bg-info">
				        						<h4 class="modal-title text-white">
								        			Modifier le cycle
								        		</h4>
								        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							    					<span aria-hidden="true">&times;</span>
							  					</button>
								        	</div>
								          	<div class="modal-body">
								          		<div class="form-group row">
										    		<label for="cycle_code" class="col-sm-3 control-label">Code</label>
												    <div class="col-sm-9">
												      <input  type="hidden" class="form-control" name="id" />
												      <input id="cycle_code" type="text" class="form-control" name="code" placeholder="Code du cycle" required/>
												    </div>
										  		</div>
												<div class="form-group row">
												  <label for="cycle_Nom_Fr" class="col-sm-3 control-label">Nom du cycle</label>
												  <div class="col-sm-9">
												    <input id="cycle_Nom_Fr" type="text" class="form-control" name="nom_Fr" placeholder="Nom du cycle" required/>
												  </div>
												</div>
										  		<div class="form-group row">
												  <label for="cycle_Nom_Ar" class="col-sm-3 control-label">إسم السلك</label>
												  <div class="col-sm-9">
												    <input id="cycle_Nom_Ar" type="text" class="form-control" name="nom_Ar" dir="rtl" placeholder="إسم السلك بالعربية"/>
												  </div>
												</div>
								      	</div>
								        <div class="modal-footer ">
							        		<input type="submit" class="btn btn-primary" value="Enregistrer" />
									        <button type="button" class="btn btn-secondary" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Annuler</button>
							      		</div>
								        </div>
								   	</form>
									</div>
							    </div>
							 <!-- Fin : Modal Update Cycle -->
							 <!-- Début : Modal Details Cycle -->
								<div id="cycle_Details_Modal" class="modal" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true" data-backdrop="false">
									<div class="modal-dialog">
								      	<div class="modal-content shadow-lg p-3 mb-5 bg-white rounded">
								          	<div class="modal-header bg-info">
				        						<h4 class="modal-title text-white">
								        			Détails du cycle
								        		</h4>
								        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							    					<span aria-hidden="true">&times;</span>
							  					</button>
								        	</div>
								          	<div class="modal-body">
								          		<ul class="list-group">
													<!-- Affichage dynamique des détails du cycle-->
												</ul>
											</div>
											<div class="modal-footer ">
												<button type="button" class="btn btn-secondary" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Fermer</button>
											</div>
								        </div>
									</div>
							    </div>
							 <!-- Fin : Modal Details Cycle -->
						</div>
						<!-- /Content tab 4	: Cycles-->
						<!-- Content tab 5	: Filières-->
						<div id="content-tab-Filieres" class="tab-pane" role="tabpanel" aria-labelledby="tab-bootstrap">
							<div class="alert bg-light text-secondary" role="alert">
					   			<i class="fa fa-sitemap mr-2"></i>
					   			Filières
						        <a href="#" data-toggle="modal" data-target="#filiere_Add_Modal" class="btn btn-outline-info float-right" title="Ajouter un filière"><i class="fa fa-plus"></i></a>
						        
							</div>
							<table id="data_table_filieres" class="table table-striped table-bordered" cellspacing="0" width="100%">
								<thead>
									<tr>
										<th>N°</th>
										<th>Code</th>
										<th>Nom</th>
							            <th>Action</th>
									</tr>
								</thead>
								<tbody>
								</tbody>
							</table>
							<!-- Début : Modal Add New Filiere -->
								<div id="filiere_Add_Modal" class="modal" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
									<div class="modal-dialog">
									<form id="filiere_Add_Form" method="POST" action="../Filiere/Add" >
								      	<div class="modal-content shadow-lg p-3 mb-5 bg-white rounded">
								          	<div class="modal-header bg-info">
				        						<h4 class="modal-title text-white">
								        			Ajouter une filière
								        		</h4>
								        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							    					<span aria-hidden="true">&times;</span>
							  					</button>
								        	</div>
								          	<div class="modal-body">
								          		<div class="form-group row">
										    		<label for="filiere_code" class="col-sm-3 control-label">Code</label>
												    <div class="col-sm-9">
												      <input id="filiere_code" type="text" class="form-control" name="code" placeholder="Code de la filière" required/>
												    </div>
										  		</div>
												<div class="form-group row">
												  <label for="filiere_Nom_Fr" class="col-sm-3 control-label">Nom de la filière</label>
												  <div class="col-sm-9">
												    <input id="filiere_Nom_Fr" type="text" class="form-control" name="nom_Fr" placeholder="Nom de la filière" required/>
												  </div>
												</div>
										  		<div class="form-group row">
												  <label for="filiere_Nom_Ar" class="col-sm-3 control-label">إسم الشعبة</label>
												  <div class="col-sm-9">
												    <input id="filiere_Nom_Ar" type="text" class="form-control" name="nom_Ar" dir="rtl" placeholder="إسم الشعبة بالعربية"/>
												  </div>
												</div>
								      	</div>
								        <div class="modal-footer ">
							        		<input type="submit" class="btn btn-primary" value="Enregistrer" />
									        <button type="button" class="btn btn-secondary" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Annuler</button>
							      		</div>
								        </div>
								   	</form>
									</div>
							    </div>
							 <!-- Fin : Modal Add New Filiere -->
							 <!-- Début : Modal Update Filiere -->
								<div id="filiere_Update_Modal" class="modal" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true" data-backdrop="false">
									<div class="modal-dialog">
									<form id="filiere_Update_Form" method="POST" action="../Filiere/Update" >
								      	<div class="modal-content shadow-lg p-3 mb-5 bg-white rounded">
								          	<div class="modal-header bg-info">
				        						<h4 class="modal-title text-white">
								        			Modifier la filière
								        		</h4>
								        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							    					<span aria-hidden="true">&times;</span>
							  					</button>
								        	</div>
								          	<div class="modal-body">
								          		<div class="form-group row">
										    		<label for="filiere_code" class="col-sm-3 control-label">Code</label>
												    <div class="col-sm-9">
												      <input  type="hidden" class="form-control" name="id" />
												      <input id="filiere_code" type="text" class="form-control" name="code" placeholder="Code de la filière" required/>
												    </div>
										  		</div>
												<div class="form-group row">
												  <label for="filiere_Nom_Fr" class="col-sm-3 control-label">Nom de la filière</label>
												  <div class="col-sm-9">
												    <input id="filiere_Nom_Fr" type="text" class="form-control" name="nom_Fr" placeholder="Nom de la filière" required/>
												  </div>
												</div>
										  		<div class="form-group row">
												  <label for="filiere_Nom_Ar" class="col-sm-3 control-label">إسم الشعبة</label>
												  <div class="col-sm-9">
												    <input id="filiere_Nom_Ar" type="text" class="form-control" name="nom_Ar" dir="rtl" placeholder="إسم الشعبة بالعربية"/>
												  </div>
												</div>
								      	</div>
								        <div class="modal-footer ">
							        		<input type="submit" class="btn btn-primary" value="Enregistrer" />
									        <button type="button" class="btn btn-secondary" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Annuler</button>
							      		</div>
								        </div>
								   	</form>
								</div>
							</div>
							<!-- Début : Modal Details Filiere -->
								<div id="filiere_Details_Modal" class="modal" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true" data-backdrop="false">
									<div class="modal-dialog">
								      	<div class="modal-content shadow-lg p-3 mb-5 bg-white rounded">
								          	<div class="modal-header bg-info">
				        						<h4 class="modal-title text-white">
								        			Détails de la filière
								        		</h4>
								        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							    					<span aria-hidden="true">&times;</span>
							  					</button>
								        	</div>
								          	<div class="modal-body">
								          		<ul class="list-group">
													<!-- Affichage dynamique des détails de la filiere-->
												</ul>
											</div>
											<div class="modal-footer ">
												<button type="button" class="btn btn-secondary" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Fermer</button>
											</div>
								        </div>
									</div>
							    </div>
							 <!-- Fin : Modal Details Filiere -->
						</div>
						<!-- /Content tab 5	: Filières-->
						<!-- Content tab 6	: Niveaux-->
						<div id="content-tab-Niveaux" class="tab-pane" role="tabpanel" aria-labelledby="content-tab-Niveaux">
					   		<div class="alert bg-light text-secondary" role="alert">
					   			<i class="fa fa-cubes mr-2"></i>
					   			Niveaux
						        <a href="#" data-toggle="modal" data-target="#niveau_Add_Modal" class="btn btn-outline-info float-right" title="Ajouter un niveau"><i class="fa fa-plus"></i></a>
						        
							</div>
							<table id="data_table_niveaux" class="table table-striped table-bordered" cellspacing="0" width="100%">
								<thead>
									<tr>
										<th>N°</th>
										<th>Code</th>
										<th>Nom</th>
							            <th>Action</th>
									</tr>
								</thead>
								<tbody>
								</tbody>
							</table>
							<!-- Début : Modal Add New Niveau -->
								<div id="niveau_Add_Modal" class="modal" tabindex="-1" role="dialog">
									<div class="modal-dialog">
									<form id="niveau_Add_Form" method="POST" action="../Niveau/Add" >
								      	<div class="modal-content shadow-lg p-3 mb-5 bg-white rounded">
								          	<div class="modal-header bg-info">
				        						<h4 class="modal-title text-white">
								        			Ajouter un niveau
								        		</h4>
								        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							    					<span aria-hidden="true">&times;</span>
							  					</button>
								        	</div>
								          	<div class="modal-body">
								          		<div class="form-group row">
										    		<label for="niveau_code" class="col-sm-3 control-label">Code</label>
												    <div class="col-sm-9">
												      <input id="niveau_code" type="text" class="form-control" name="code" placeholder="Code du niveau" required/>
												    </div>
										  		</div>
												<div class="form-group row">
												  <label for="niveau_Nom_Fr" class="col-sm-3 control-label">Nom du niveau</label>
												  <div class="col-sm-9">
												    <input id="niveau_Nom_Fr" type="text" class="form-control" name="nom_Fr" placeholder="Nom du niveau" required/>
												  </div>
												</div>
										  		<div class="form-group row">
												  <label for="niveau_Nom_Ar" class="col-sm-3 control-label">إسم المستوى</label>
												  <div class="col-sm-9">
												    <input id="niveau_Nom_Ar" type="text" class="form-control" name="nom_Ar" dir="rtl" placeholder="إسم المستوى بالعربية"/>
												  </div>
												</div>
								      	</div>
								        <div class="modal-footer ">
							        		<input type="submit" class="btn btn-primary" value="Enregistrer" />
									        <button type="button" class="btn btn-secondary" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Annuler</button>
							      		</div>
								        </div>
								   	</form>
									</div>
							    </div>
							 <!-- Fin : Modal Add New Niveau -->
							 <!-- Début : Modal Update Niveau -->
								<div id="niveau_Update_Modal" class="modal" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true" data-backdrop="false">
									<div class="modal-dialog">
									<form id="niveau_Update_Form" method="POST" action="../Niveau/Update" >
								      	<div class="modal-content shadow-lg p-3 mb-5 bg-white rounded">
								          	<div class="modal-header bg-info">
				        						<h4 class="modal-title text-white">
								        			Modifier le niveau
								        		</h4>
								        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							    					<span aria-hidden="true">&times;</span>
							  					</button>
								        	</div>
								          	<div class="modal-body">
								          		<div class="form-group row">
										    		<label for="niveau_code" class="col-sm-3 control-label">Code</label>
												    <div class="col-sm-9">
												      <input  type="hidden" class="form-control" name="id" />
												      <input id="niveau_code" type="text" class="form-control" name="code" placeholder="Code du niveau" required/>
												    </div>
										  		</div>
												<div class="form-group row">
												  <label for="niveau_Nom_Fr" class="col-sm-3 control-label">Nom du niveau</label>
												  <div class="col-sm-9">
												    <input id="niveau_Nom_Fr" type="text" class="form-control" name="nom_Fr" placeholder="Nom du niveau" required/>
												  </div>
												</div>
										  		<div class="form-group row">
												  <label for="niveau_Nom_Ar" class="col-sm-3 control-label">إسم المستوى</label>
												  <div class="col-sm-9">
												    <input id="niveau_Nom_Ar" type="text" class="form-control" name="nom_Ar" dir="rtl" placeholder="إسم المستوى بالعربية"/>
												  </div>
												</div>
								      	</div>
								        <div class="modal-footer ">
							        		<input type="submit" class="btn btn-primary" value="Enregistrer" />
									        <button type="button" class="btn btn-secondary" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Annuler</button>
							      		</div>
								        </div>
								   	</form>
									</div>
							    </div>
							 <!-- Fin : Modal Update Niveau -->
							 <!-- Début : Modal Details Niveau -->
								<div id="niveau_Details_Modal" class="modal" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true" data-backdrop="false">
									<div class="modal-dialog">
								      	<div class="modal-content shadow-lg p-3 mb-5 bg-white rounded">
								          	<div class="modal-header bg-info">
				        						<h4 class="modal-title text-white">
								        			Détails du niveau
								        		</h4>
								        		<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							    					<span aria-hidden="true">&times;</span>
							  					</button>
								        	</div>
								          	<div class="modal-body">
								          		<ul class="list-group">
													<!-- Affichage dynamique des détails du niveau-->
												</ul>
											</div>
											<div class="modal-footer ">
												<button type="button" class="btn btn-secondary" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Fermer</button>
											</div>
								        </div>
									</div>
							    </div>
							 <!-- Fin : Modal Details Niveau -->
						</div>
						<!-- /Content tab 6	: Niveaux-->
				</div>
				<!-- /Tab content -->
			 </div>
		  </div>
		</div> <!-- /Col 1 -->
		<div class="col-md-3"> <!-- Col 2 -->
			<div class="panel with-nav-tabs panel-primary">
		     <div class="panel-heading">
					<nav class="nav nav-tabs flex-column flex-sm-row"  id="Tab-Content-2" role="tablist">
					    <a id="tab_Annonces" href="#content-tab-Annonces" class="nav-item nav-link active" data-toggle="tab" role="tab" aria-controls="content-tab-Annonces" aria-selected="false">
					        <span class="fa fa-bullhorn"></span> Annonces
					    </a>
					    <a  id="tab_Actualites" href="#content-tab-Actualites" class="nav-item nav-link" data-toggle="tab" role="tab" aria-controls="content-tab-Actualites" aria-selected="false">
					        <span class="fa fa-newspaper"></span> Actualites
					    </a>
					</nav>
			</div>
		    <div class="panel-body">
		    	<!-- Début : Tab content  2-->
				<div class="tab-content" id="Tab-Content-Communication">
						<!-- Content tab 1 	: Annonces-->
					  	<div id="content-tab-Annonces" class="tab-pane active" role="tabpanel" aria-labelledby="content-tab-Annonces">
					     <ul>
							<li>Annonce 1</li>
							<li>Annonce 2</li>
							<li>Annonce 3</li>
						 </ul>
					  	</div>
						<!-- /Content tab 1 : Annonces-->
						<!-- Content tab 2 	: Actualites-->
						<div id="content-tab-Actualites" class="tab-pane" role="tabpanel" aria-labelledby="content-tab-Actualites">
						 <ul>	
							<li>Actualité 1</li>
							<li>Actualité 2</li>
							<li>Actualité 3</li>
							<li>Actualite 4</li>
							<li>Actualité 5</li>
						 </ul>
						</div>
						<!-- /Content tab 2	: Actualites-->
				</div>
				<!-- Fin : Tab content 2 -->
			 </div>
		</div>
		</div> <!-- Col 2 -->
	</div><!-- /row 1 -->
	
	<!-- /Page Content  -->
</div>
</div>
</div>
<!-- Modal Success -->
	<div id="modalSuccess" class="modal" tabindex="-1" role="dialog">
	  <div class="modal-dialog modal-dialog-centered modal-confirm">
		<div class="modal-content">
			<div class="modal-header">
				<div class="icon-box bg-success">
					<i class="material-icons fa fa-check"></i>
				</div>				
				<h4 class="modal-title text-center">Succès !</h4>	
			</div>
			<div class="modal-body">
				<p class="text-center">
					<!-- On affiche ici le message obtenu du coté serveur -->
				</p>
			</div>
			<div class="modal-footer">
				<button class="btn btn-success btn-block" data-dismiss="modal">Fermer</button>
			</div>
		</div>
	  </div>
	</div>
<!-- Fin : Moad Success -->
<!-- Début : Modal error -->
	<div id="modalError" class="modal" tabindex="-1" role="dialog">
	  <div class="modal-dialog modal-dialog-centered modal-confirm">
		<div class="modal-content">
			<div class="modal-header">
				<div class="icon-box bg-danger">
					<i class="material-icons fa fa-exclamation-triangle"></i>
				</div>				
				<h4 class="modal-title text-center">Echec !</h4>	
			</div>
			<div class="modal-body">
				<p class="text-center">
					<!-- On affiche ici le message obtenu du coté serveur -->
				</p>
			</div>
			<div class="modal-footer">
				<button class="btn btn-secondary btn-block" data-dismiss="modal">Fermer</button>
			</div>
		</div>
	  </div>
	</div>
<!-- Fin : Moad Error -->
<!-- Début : Moad Confirmation -->
<div id="modalConfirm" class="modal" tabindex="-1" role="dialog">
	<div class="modal-dialog modal-dialog-centered modal-confirm " role="document">
		<div class="modal-content">
		  <div class="modal-header">
				<div class="icon-box bg-warning">
					<i class="material-icons fa fa-exclamation-triangle"></i>
				</div>				
				<h4 class="modal-title text-center">Supprimer ?</h4>	
		  </div>
		  <div class="modal-body">
				<p class="text-center">
					Etes vous sûre de vouloir supprimer cet enregistrement ?
				</p>
		  </div>
		  <div class="modal-footer">
		    <button type="button" data-dismiss="modal" class="btn btn-warning  mr-auto" id="delete">Supprimer</button>
		    <button type="button" data-dismiss="modal" class="btn btn-secondary  ">Annuler</button>
		  </div>
		 </div>
  	</div>
</div>
<!-- Fin : Moad Confirmation-->
<!-- Début : Moad Loading Ajax -->
<div id="loading-image" class="modal" tabindex="-1" role="dialog">
    <div class="modal-dialog modal-dialog-centered modal-sm" >
        <div class="modal-content" style="width: 48px; color:orange;">
            <span class="fa fa-spinner fa-spin fa-3x"></span>
        </div>
    </div>
</div>
<!-- Fin : Moad Loading Ajax -->

	<script src="${pageContext.request.contextPath}/js/jquery.min.js" ></script>
	<script src="${pageContext.request.contextPath}/js/jquery-ui.min.js" ></script>
	
	<script src="${pageContext.request.contextPath}/js/popper.js" type="text/javascript"></script>
	
	
	<script src="${pageContext.request.contextPath}/js/jquery.dataTables.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/js/dataTables.bootstrap.js" type="text/javascript"></script>
    <script src="${pageContext.request.contextPath}/js/main.js" type="text/javascript"></script>
    
    
    <script src="${pageContext.request.contextPath}/js/dataTables.buttons.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/js/buttons.flash.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/js/jszip.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/js/pdfmake.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/js/vfs_fonts.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/js/buttons.html5.min.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/js/buttons.print.min.js" type="text/javascript"></script>
    
    
  	<script type="text/javascript">
  	
  	$(document).ready(function() {
  		/**************** Début : Ajax Load Animation *************************/
  		$(document).ajaxStart(function(){
  			$('#loading-image').show();
		 });
  		$(document).ajaxStop(function(){
  			$('#loading-image').hide();
		 });
		/*******************Fin : Ajax Load Animation *************************/
		
		/************ chargement de l'année scolaire courante *************/
		function loadAnneeScolaireCourante(){
			//Effacer le contenu du select
			$("#anneeScolaireCourante_Selector").html("");
           //Chargement de toutes les années scolaires dans le Select : anneeScolaireCourante_Selector
 				$.ajax({
				url : "../AnneeScolaire/List",
				type: "GET",
				dataType: 'json',
				contentType: "application/json; charset=UTF-8",
				success: function(response,textStatus ,jqXHR){
					for(i=0;i<response.length;i++){
						var item  ='<option value="'+response[i].id+'">'+response[i].code+'</option>';
						$("#anneeScolaireCourante_Selector").append(item);       
					}	
			    },
			    error: function(response,textStatus ,jqXHR){
			    	$("#modalError .modal-body p").html("");
					$("#modalError .modal-body p").html(jqXHR.responseText);
			   		$('#modalError .modal-body p').modal('show'); 
			        }
			});
 		    //Chargement de L'année scolaire courante dans la première option du Select : anneeScolaireCourante_Selector
 				$.ajax({
				url : "../AnneeScolaireCourante/List",
				type: "GET",
				dataType: 'json',
				contentType: "application/json; charset=UTF-8",
				success: function(response,textStatus ,jqXHR){
					for(i=0;i<response.length;i++){
						var item  ='<option class="bg-danger text-white" value="'+response[i].anneeScolaire.id+'">'+response[i].anneeScolaire.code+'</option>';
						$("#anneeScolaireCourante_Selector").prepend(item); 
						$("#anneeScolaireCourante_Selector").val(response[i].anneeScolaire.id);
					}	
			    },
			    error: function(response,textStatus ,jqXHR){
			    	$("#modalError .modal-body p").html("");
					$("#modalError .modal-body p").html(jqXHR.responseText);
			   		$('#modalError .modal-body p').modal('show'); 
			        }
			});
		};
		loadAnneeScolaireCourante();
		/********** Fin : Chargement de l'année scolaire courante **********/
		/****** Au changement du Select : anneeScolaireCourante_Selector, on Update l'année Scolaire Courante */
		$('#anneeScolaireCourante_Selector').change(function(){
			
			//On recupere l Id de l'année selectionnée
			var id=$(this).val();
			//On appelle le controleur de modification de l'annnée Scolaire courante
			$.ajax({
				url : "../AnneeScolaireCourante/Update?id="+id,
				type: "GET",
				dataType: 'json',
				contentType: "application/json; charset=UTF-8",
				success: function(response,textStatus ,jqXHR){
					$("#modalSuccess .modal-body p").html("");
					$("#modalSuccess .modal-body p").html(response);
			   		$('#modalSuccess').modal('show');
			    },
			    error: function(response,textStatus ,jqXHR){
			    	$("#modalError .modal-body p").html("");
					$("#modalError .modal-body p").html(jqXHR.responseText);
			   		$('#modalError .modal-body p').modal('show'); 
			        },
				complete: function (response,textStatus ,jqXHR) {
			    	//Reactiualiser le select
					loadAnneeScolaireCourante();  
			    }
			    
			    
			});
			// Verouillage du Select du choix de l'année scolaire
			$("#anneeScolaireCourante_Selector" ).prop( "disabled", true );
		});
		/******* Verouillage et déverouillage du select anneeScolaireCouranteSelector ****/
		/***  Etant donnée l'importance du choix de l'année scolaire courante : 
		/**	 J ai ajouter un bouton de Verouillage/Deverouiialde du Select du choix
		/** de l'année scolaire courante pour eviter de la modifier par inadvertance
		**/
		$('#lock_anneeScolaireCourante_Selector').on('click', function(e){
			var  select = $("#anneeScolaireCourante_Selector");
			if($("#anneeScolaireCourante_Selector" ).prop("disabled")){
				$("#anneeScolaireCourante_Selector" ).prop( "disabled", false );
				$("#lock_anneeScolaireCourante_Selector").prop( "title", "Verouiller" );
				$("#lock_anneeScolaireCourante_Selector span").removeClass("fa-lock");
				$("#lock_anneeScolaireCourante_Selector span").addClass("fa-unlock");
				
			}else{
				$("#anneeScolaireCourante_Selector" ).prop( "disabled", true );
				$("#lock_anneeScolaireCourante_Selector").prop( "title", "Déverouiller" );
				$("#lock_anneeScolaireCourante_Selector span").removeClass("fa-unlock");
				$("#lock_anneeScolaireCourante_Selector span").addClass("fa-lock");
			}
			
			e.preventDefault();
		});
  		/************** DataTable du Tab : AnneeScolaires **************/
  		// Initialisation du DataTable AnneeScolaires
  		$('#data_table_anneeScolaires').DataTable(
  			{	
  				"paging": true,
  				"autoWidth": true,
  				"columnDefs": [
  			  					{ "orderable": false, "targets": 2 }
  			  				],
  				dom: 'Bfrtip',
  		        buttons: [
  		            'copy', 
  		            'csv', 
  		            'excel', 
  		            'pdf', 
  		            'print'
  		        ]
  			}
  		);
  		/******* fonction pour charger la liste des AnneeScolaires dans la TableData AnneeScolaires ******/
		function populateAnneeScolaireDataTable(){
			var tableData = $('#data_table_anneeScolaires').DataTable();
			//tableData.DataTable().rows().remove().draw();		// Vider la TableData 
			$.ajax({
				url : "../AnneeScolaire/List",
				type: "GET",
				dataType: 'json',
				success: function(response,textStatus ,jqXHR){
					for(i=0;i<response.length;i++){
						var rang =i+1;
						var btns='<div class="btn-group dropleft"> \
							  <button type="button" class="btn btn-outline-info btn-sm" title="Actions"><span class="fa fa-ellipsis-h"></span></button> \
							  <button type="button" class="btn btn-outline-info btn-sm dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> \
							    <span class="sr-only">Toggle Dropdown</span> \
							  </button> \
							  <div class="dropdown-menu shadow p-3 mb-5 bg-white rounded" id="dropdownCycle"> \
							    <div class="bg-info text-white px-3 py-1"><span class="fa fa-ellipsis-h mr-4"></span> Actions</div> \
						        <div class="dropdown-divider"></div> \
							  	<a class="dropdown-item anneeScolaire-details text-primary" href="#" anneeScolaireId="'+response[i].id+'"><span class="fa fa-info-circle mr-4"></span>Détails</a> \
							  	<a class="dropdown-item anneeScolaire-update text-primary" href="#"  anneeScolaireId="'+response[i].id+'"><span class="fa fa-pen mr-4"></span>Modifier</a> \
							  	<a class="dropdown-item anneeScolaire-delete text-primary" href="#" anneeScolaireId="'+response[i].id+'"><span class="fa fa-trash mr-4"></span>Supprimer</a> \
							  </div> \
							</div> ';
						tableData.row.add( [
						             rang,
						             response[i].code,
						             btns
						         ] ).draw( false );
					}
			    },
			    error: function(response,textStatus ,jqXHR){
			    	$("#modalError .modal-body p").html("");
					$("#modalError .modal-body p").html(jqXHR.responseText);
			   		$('#modalError .modal-body p').modal('show'); 
			        }
			});
		};
		
		/*
		/* Au chargement de la page en charge la liste des années scolaires 
		/*d ans le DataTable AnnéesScolaires
		*/
		
		populateAnneeScolaireDataTable();
	
		/* Au click sur le tab AnneeScolaires : 
		/* On charger la liste des AnneeScolaires dans la TableData AnneeScolaires
		*/
		
		$('#btn_toggle_anneeScolaire_panel').on('click', function(e){
				// Effacer le DataTable AnneeScolaires
				$('#data_table_anneeScolaires').DataTable().rows().remove().draw();
				// Charger la liste des anneeScolaires dans le DataTable AnneeScolaires
	  			populateAnneeScolaireDataTable();
				e.preventDefault();
		});
		
			/********** Ajouter une nouvelle AnneeScolaire **********************/
			//Effacer dabord le formulaire
			$('#anneeScolaire_Add_Modal').on('shown.bs.modal', function(evt){
				$('#anneeScolaire_Add_Form').trigger('reset');
			});
			//Envoyer le formulaire via ajax
			$("#anneeScolaire_Add_Form").submit(function(event){ 
			var post_url = $(this).attr("action"); 			//Lire l'action (URL) du formulaire
			var request_method = $(this).attr("method"); 	//Lire la méthode du formulaire  GET/POST 
			var form_data = $(this).serialize(); 			//Encoder les données du formulaire pour envoie
			$('#anneeScolaire_Add_Modal').modal('hide');			//Fermer la fenetre modal apres envoie du formulaire
			$.ajax({
				url : post_url,
				type: request_method,
				data : form_data,
				dataType: 'json',
				contentType: "application/x-www-form-urlencoded;charset=UTF-8",
				success: function(response,textStatus ,jqXHR){
					$("#modalSuccess .modal-body p").html("");
					$("#modalSuccess .modal-body p").html(response);
			   		$('#modalSuccess').modal('show');
			    	//setTimeout(function() { $('#modalSuccess').modal('hide'); }, 5000);
			    },
			    error: function(response,textStatus ,jqXHR){
                    $("#modalError .modal-body p").html("");
					$("#modalError .modal-body p").html(jqXHR.responseText);
			   		$('#modalError').modal('show'); 
			        },
				complete: function (response,textStatus ,jqXHR) {
			    	
					//Effacer le DataTable AnneeScolaires
					$('#data_table_anneeScolaires').DataTable().rows().remove().draw();
		  			//Raffrichir le DataTable AnneeScolaires
					populateAnneeScolaireDataTable();    
			    }
			});
			return false;
		});	
			
			/*********** Modification d'un AnneeScolaire ****************
			/* 1 - Récuperer l' Id du AnneeScolaire séléctionner sur la DataTable AnneeScolaires
			/* 2 - Charger par ajax le AnneeScolaire concerné
			/* 3 - Remplir les champs de formulaire de modification avec les données du AnneeScolaire concerné
			/* 4 - Afficher le formulaire de modification
			*****************************************************/
			
			$('#data_table_anneeScolaires').on('click','.anneeScolaire-update', function(evt){
			$this = $(this);
			var id= $this.attr('anneeScolaireId');
			$.ajax({
				url : "../AnneeScolaire/Details?id="+id,
				type: "GET",
				dataType: 'json',
				contentType: "application/json; charset=UTF-8",
				success: function(response,textStatus ,jqXHR){
									
					$("#anneeScolaire_Update_Form input[name=id]").val(response.id);
					$("#anneeScolaire_Update_Form input[name=code]").val(response.code);
					$("#anneeScolaire_Update_Form input[name=dateDebut]").val(response.dateDebut);
					$("#anneeScolaire_Update_Form input[name=dateFin]").val(response.dateFin);
					$('#anneeScolaire_Update_Modal').modal('show');
			    },
			    error: function(response,textStatus ,jqXHR){
			    	$("#modalError .modal-body p").html("");
					$("#modalError .modal-body p").html(jqXHR.responseText);
			   		$('#modalError .modal-body p').modal('show'); 
			        }
			});
			
			return false;
		});
			/* 5- Envoie du formulaire de modification */
			
			$("#anneeScolaire_Update_Form").submit(function(event){ 
			var post_url = $(this).attr("action"); 			//Lire l'action (URL) du formulaire
			var request_method = $(this).attr("method"); 	//Lire la méthode du formulaire  GET/POST 
			var form_data = $(this).serialize(); 			//Encoder les données du formulaire pour envoie
			$('#anneeScolaire_Update_Modal').modal('hide');			//Fermer la fenetre modal apres envoie du formulaire
			$.ajax({
				url : post_url,
				type: request_method,
				data : form_data,
				dataType: 'json',
				contentType: "application/x-www-form-urlencoded;charset=UTF-8",
				success: function(response,textStatus ,jqXHR){
					$("#modalSuccess .modal-body p").html("");
					$("#modalSuccess .modal-body p").html(response);
			   		$('#modalSuccess').modal('show');
			    	//setTimeout(function() { $('#modalSuccess').modal('hide'); }, 5000);
					
			    },
			    error: function(response,textStatus ,jqXHR){
                    $("#modalError .modal-body p").html("");
					$("#modalError .modal-body p").html(response);
			   		$('#modalError').modal('show'); 
			        },
			    complete: function (response,textStatus ,jqXHR) {
			    	
					//Effacer le DataTable AnneeScolaires
					$('#data_table_anneeScolaires').DataTable().rows().remove().draw();
		  			//Raffrichir le DataTable AnneeScolaires
					populateAnneeScolaireDataTable();    
			    }   
			});
			return false;
		});	
			/*********** Suppression d'un AnneeScolaire ****************
			/* 1 - Récuperer l' Id du AnneeScolaire séléctionner sur la DataTable AnneeScolaires
			/* 2 - Supprimer par ajax le AnneeScolaire concerné
			*****************************************************/
			
			$('#data_table_anneeScolaires').on('click','.anneeScolaire-delete', function(evt){
			$this = $(this);
			var id= $this.attr('anneeScolaireId');
			$('#modalConfirm').modal('show');
			$('#modalConfirm').on('click', '#delete', function(e) {
				
					$.ajax({
						url : "../AnneeScolaire/Delete?id="+id,
						type: "GET",
						dataType: 'json',
						success: function(response,textStatus ,jqXHR){
							$("#modalSuccess .modal-body p").html("");
							$("#modalSuccess .modal-body p").html(response);
					   		$('#modalSuccess').modal('show');
					    	//setTimeout(function() { $('#modalSuccess').modal('hide'); }, 5000);
					    	
					    },
					    error: function(response,textStatus ,jqXHR){
					    	$("#modalError .modal-body p").html("");
							$("#modalError .modal-body p").html(jqXHR.responseText);
					   		$('#modalError').modal('show'); 
					    },
					    complete: function (response,textStatus ,jqXHR) {
					    	
							//Effacer le DataTable AnneeScolaires
							$('#data_table_anneeScolaires').DataTable().rows().remove().draw();
				  			//Raffrichir le DataTable AnneeScolaires
							populateAnneeScolaireDataTable();    
					    }
					});
			  });
			
			
			return false;
		});
			
			/*********** Affichage des détails d'un AnneeScolaire ****************
			/* 1 - Récuperer l' Id du AnneeScolaire séléctionner sur la DataTable AnneeScolaires
			/* 2 - Charger par ajax le AnneeScolaire concerné
			/* 3 - Afficher les détails du AnneeScolaire concerné 
			*****************************************************/
			
			$('#data_table_anneeScolaires').on('click','.anneeScolaire-details', function(evt){
			$this = $(this);
			var id= $this.attr('anneeScolaireId');
			$.ajax({
				url : "../AnneeScolaire/Details?id="+id,
				type: "GET",
				dataType: 'json',
				contentType: "application/json; charset=UTF-8",
				success: function(response,textStatus ,jqXHR){
					var codeItem ='<li class="list-group-item"><span><strong>Code  </strong></span><span class="float-right">'+response.code+'</span></li>';
					var nom_FrItem ='<li class="list-group-item"><span><strong>Date début  </strong></span><span class="float-right">'+response.dateDebut+'</span></li>';
					var nom_ArItem ='<li class="list-group-item"><span><strong>Date fin  </strong></span><span class="float-right">'+response.dateFin+'</span></li>';
					$("#anneeScolaire_Details_Modal .list-group").html("");
					$("#anneeScolaire_Details_Modal .list-group").append(codeItem);
					$("#anneeScolaire_Details_Modal .list-group").append(nom_FrItem);
					$("#anneeScolaire_Details_Modal .list-group").append(nom_ArItem);
					$('#anneeScolaire_Details_Modal').modal('show');
			    },
			    error: function(response,textStatus ,jqXHR){
			    	$("#modalError .modal-body p").html("");
					$("#modalError .modal-body p").html(jqXHR.responseText);
			   		$('#modalError .modal-body p').modal('show'); 
			        }
			});
			
			return false;
		});
			
		/****************** Commande des Jquery DatePicker année scolaire : date début et date fin*********************/
		
		  
			    $( "#anneeScolaire_Date_Debut" ).datepicker({
			    	 maxDate: 0,
			    	   changeMonth: true,
			    	   changeYear: true,
			    	   dateFormat: 'dd-mm-yy',
			    	   yearRange: '2000:2040'
			    	   
			    });
		 
			    $( "#anneeScolaire_Date_Fin" ).datepicker({
			    	 	maxDate: 0,
			    	   changeMonth: true,
			    	   changeYear: true,
			    	   dateFormat: 'dd-mm-yy',
			    	   yearRange: '2000:2040'
			    });
			    
			    $( "#anneeScolaire_Date_Debut_Update" ).datepicker({
			    	 maxDate: 0,
			    	   changeMonth: true,
			    	   changeYear: true,
			    	   dateFormat: 'dd-mm-yy',
			    	   yearRange: '2000:2040'
			    	   
			    });
		 
			    $( "#anneeScolaire_Date_Fin_Update" ).datepicker({
			    	 	maxDate: 0,
			    	   changeMonth: true,
			    	   changeYear: true,
			    	   dateFormat: 'dd-mm-yy',
			    	   yearRange: '2000:2040'
			    });
			      
			
  		/************** DataTable du Tab : Cycles **************/
	  		// Initialisation du DataTable Cycles
	  		$('#data_table_cycles').DataTable(
	  			{	
	  				"paging": true,
	  				"autoWidth": true,
	  				"columnDefs": [
	  					{ "orderable": false, "targets": 3 }
	  				],
	  				dom: 'Bfrtip',
	  		        buttons: [
	  		            'copy', 
	  		            'csv', 
	  		            'excel', 
	  		            'pdf', 
	  		            'print'
	  		        ]
	  			}
	  		);
	  		/******* fonction pour charger la liste des Cycles dans la TableData Cycles ******/
			function populateCycleDataTable(){
				var tableData = $('#data_table_cycles').DataTable();
				//tableData.DataTable().rows().remove().draw();		// Vider la TableData 
				$.ajax({
					url : "../Cycle/List",
					type: "GET",
					dataType: 'json',
					success: function(response,textStatus ,jqXHR){
						for(i=0;i<response.length;i++){
							var rang =i+1;
							var btns='<div class="btn-group dropleft"> \
										  <button type="button" class="btn btn-outline-info btn-sm" title="Actions"><span class="fa fa-ellipsis-h"></span></button> \
										  <button type="button" class="btn btn-outline-info btn-sm dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> \
										    <span class="sr-only">Toggle Dropdown</span> \
										  </button> \
										  <div class="dropdown-menu shadow p-3 mb-5 bg-white rounded" id="dropdownCycle"> \
										    <div class="bg-info text-white px-3 py-1"><span class="fa fa-ellipsis-h mr-4"></span> Actions</div> \
									        <div class="dropdown-divider"></div> \
										  	<a class="dropdown-item cycle-details text-primary" href="#" cycleId="'+response[i].id+'"><span class="fa fa-info-circle mr-4"></span>Détails</a> \
										  	<a class="dropdown-item cycle-update text-primary" href="#" cycleId="'+response[i].id+'"><span class="fa fa-pen mr-4"></span>Modifier</a> \
										  	<a class="dropdown-item cycle-delete text-primary" href="#" cycleId="'+response[i].id+'"><span class="fa fa-trash mr-4"></span>Supprimer</a> \
										  </div> \
										</div> ';
							tableData.row.add( [
							             rang,
							             response[i].code,
							             response[i].nom_Fr,
							             btns
							         ] ).draw( false );
						}
				    },
				    error: function(response,textStatus ,jqXHR){
				    	$("#modalError .modal-body p").html("");
						$("#modalError .modal-body p").html(jqXHR.responseText);
				   		$('#modalError .modal-body p').modal('show'); 
				        }
				});
			};
			/* Au click sur le tab Cycles : 
			/* On charger la liste des Cycles dans la TableData Cycles
			*/
			
			$('#tab_Cycles').on('click', function(e){
					// Effacer le DataTable Cycles
					$('#data_table_cycles').DataTable().rows().remove().draw();
					// Charger la liste des cycles dans le DataTable Cycles
		  			populateCycleDataTable();
					e.preventDefault();
			});
			
  			/********** Ajouter un nouveau Cycle **********************/
  			//Effacer dabord le formulaire
  			$('#cycle_Add_Modal').on('shown.bs.modal', function(evt){
  				$('#cycle_Add_Form').trigger('reset');
  			});
  			//Envoyer le formulaire via ajax
  			$("#cycle_Add_Form").submit(function(event){ 
				var post_url = $(this).attr("action"); 			//Lire l'action (URL) du formulaire
				var request_method = $(this).attr("method"); 	//Lire la méthode du formulaire  GET/POST 
				var form_data = $(this).serialize(); 			//Encoder les données du formulaire pour envoie
				$('#cycle_Add_Modal').modal('hide');			//Fermer la fenetre modal apres envoie du formulaire
				$.ajax({
					url : post_url,
					type: request_method,
					data : form_data,
					dataType: 'json',
					contentType: "application/x-www-form-urlencoded;charset=UTF-8",
					success: function(response,textStatus ,jqXHR){
						$("#modalSuccess .modal-body p").html("");
						$("#modalSuccess .modal-body p").html(response);
				   		$('#modalSuccess').modal('show');
				    	//setTimeout(function() { $('#modalSuccess').modal('hide'); }, 5000);
				    },
				    error: function(response,textStatus ,jqXHR){
	                    $("#modalError .modal-body p").html("");
						$("#modalError .modal-body p").html(jqXHR.responseText);
				   		$('#modalError').modal('show'); 
				        },
					complete: function (response,textStatus ,jqXHR) {
				    	
						//Effacer le DataTable Cycles
						$('#data_table_cycles').DataTable().rows().remove().draw();
			  			//Raffrichir le DataTable Cycles
						populateCycleDataTable();    
				    }
				});
				return false;
			});	
  			
  			/*********** Modification d'un Cycle ****************
  			/* 1 - Récuperer l' Id du Cycle séléctionner sur la DataTable Cycles
  			/* 2 - Charger par ajax le Cycle concerné
  			/* 3 - Remplir les champs de formulaire de modification avec les données du Cycle concerné
  			/* 4 - Afficher le formulaire de modification
  			*****************************************************/
  			
  			$('#data_table_cycles').on('click','.cycle-update', function(evt){
				$this = $(this);
				var id= $this.attr('cycleId');
				$.ajax({
					url : "../Cycle/Details?id="+id,
					type: "GET",
					dataType: 'json',
					contentType: "application/json; charset=UTF-8",
					success: function(response,textStatus ,jqXHR){
						$("#cycle_Update_Form input[name=id]").val(response.id);
						$("#cycle_Update_Form input[name=code]").val(response.code);
						$("#cycle_Update_Form input[name=nom_Fr]").val(response.nom_Fr);
						$("#cycle_Update_Form input[name=nom_Ar]").val(response.nom_Ar);
						$('#cycle_Update_Modal').modal('show');
				    },
				    error: function(response,textStatus ,jqXHR){
				    	$("#modalError .modal-body p").html("");
						$("#modalError .modal-body p").html(jqXHR.responseText);
				   		$('#modalError .modal-body p').modal('show'); 
				        }
				});
				
				return false;
			});
  			/* 5- Envoie du formulaire de modification */
  			
  			$("#cycle_Update_Form").submit(function(event){ 
				var post_url = $(this).attr("action"); 			//Lire l'action (URL) du formulaire
				var request_method = $(this).attr("method"); 	//Lire la méthode du formulaire  GET/POST 
				var form_data = $(this).serialize(); 			//Encoder les données du formulaire pour envoie
				$('#cycle_Update_Modal').modal('hide');			//Fermer la fenetre modal apres envoie du formulaire
				$.ajax({
					url : post_url,
					type: request_method,
					data : form_data,
					dataType: 'json',
					contentType: "application/x-www-form-urlencoded;charset=UTF-8",
					success: function(response,textStatus ,jqXHR){
						$("#modalSuccess .modal-body p").html("");
						$("#modalSuccess .modal-body p").html(response);
				   		$('#modalSuccess').modal('show');
				    	//setTimeout(function() { $('#modalSuccess').modal('hide'); }, 5000);
						
				    },
				    error: function(response,textStatus ,jqXHR){
	                    $("#modalError .modal-body p").html("");
						$("#modalError .modal-body p").html(response);
				   		$('#modalError').modal('show'); 
				        },
				    complete: function (response,textStatus ,jqXHR) {
				    	
						//Effacer le DataTable Cycles
						$('#data_table_cycles').DataTable().rows().remove().draw();
			  			//Raffrichir le DataTable Cycles
						populateCycleDataTable();    
				    }   
				});
				return false;
			});	
  			/*********** Suppression d'un Cycle ****************
  			/* 1 - Récuperer l' Id du Cycle séléctionner sur la DataTable Cycles
  			/* 2 - Supprimer par ajax le Cycle concerné
  			*****************************************************/
  			
  			$('#data_table_cycles').on('click','.cycle-delete', function(evt){
				$this = $(this);
				var id= $this.attr('cycleId');
				$('#modalConfirm').modal('show');
				$('#modalConfirm').on('click', '#delete', function(e) {
					
						$.ajax({
							url : "../Cycle/Delete?id="+id,
							type: "GET",
							dataType: 'json',
							success: function(response,textStatus ,jqXHR){
								$("#modalSuccess .modal-body p").html("");
								$("#modalSuccess .modal-body p").html(response);
						   		$('#modalSuccess').modal('show');
						    	//setTimeout(function() { $('#modalSuccess').modal('hide'); }, 5000);
						    	
						    },
						    error: function(response,textStatus ,jqXHR){
						    	$("#modalError .modal-body p").html("");
								$("#modalError .modal-body p").html(jqXHR.responseText);
						   		$('#modalError').modal('show'); 
						    },
						    complete: function (response,textStatus ,jqXHR) {
						    	
								//Effacer le DataTable Cycles
								$('#data_table_cycles').DataTable().rows().remove().draw();
					  			//Raffrichir le DataTable Cycles
								populateCycleDataTable();    
						    }
						});
				  });
				
				
				return false;
			});
  			
  			/*********** Affichage des détails d'un Cycle ****************
  			/* 1 - Récuperer l' Id du Cycle séléctionner sur la DataTable Cycles
  			/* 2 - Charger par ajax le Cycle concerné
  			/* 3 - Afficher les détails du Cycle concerné 
  			*****************************************************/
  			
  			$('#data_table_cycles').on('click','.cycle-details', function(evt){
				$this = $(this);
				var id= $this.attr('cycleId');
				$.ajax({
					url : "../Cycle/Details?id="+id,
					type: "GET",
					dataType: 'json',
					contentType: "application/json; charset=UTF-8",
					success: function(response,textStatus ,jqXHR){
						var codeItem ='<li class="list-group-item"><span><strong>Code  </strong></span><span class="float-right">'+response.code+'</span></li>';
						var nom_FrItem ='<li class="list-group-item"><span><strong>Nom du cycle  </strong></span><span class="float-right">'+response.nom_Fr+'</span></li>';
						var nom_ArItem ='<li class="list-group-item"><span><strong>إسم السلك  </strong></span><span class="float-right" dir="rtl">'+response.nom_Ar+'</span></li>';
						$("#cycle_Details_Modal .list-group").html("");
						$("#cycle_Details_Modal .list-group").append(codeItem);
						$("#cycle_Details_Modal .list-group").append(nom_FrItem);
						$("#cycle_Details_Modal .list-group").append(nom_ArItem);
						$('#cycle_Details_Modal').modal('show');
				    },
				    error: function(response,textStatus ,jqXHR){
				    	$("#modalError .modal-body p").html("");
						$("#modalError .modal-body p").html(jqXHR.responseText);
				   		$('#modalError .modal-body p').modal('show'); 
				        }
				});
				
				return false;
			});
  			
  			
  			
  			/************** DataTable du Tab : Filieres **************/
	  		// Initialisation du DataTable Filieres
	  		$('#data_table_filieres').DataTable(
	  			{	
	  				"paging": true,
	  				"autoWidth": true,
	  				"columnDefs": [
	  					{ "orderable": false, "targets": 3 }
	  				],
	  				"columnDefs": [
			             {
			                 "targets": [ 0 ],
			                 "visible": true,
			                 "searchable": false,
			                 "orderable": true
			             },
			             {
			                 "targets": [ 2 ],
			                 "visible": true
			                 
			             }
	  				 ],
	  				dom: 'Bfrtip',
	  		        buttons: [
	  		            'copy', 
	  		            'csv', 
	  		            'excel', 
	  		            'pdf', 
	  		            'print'
	  		        ]
	  			}
	  		);
	  		/******* fonction pour charger la liste des Filieres dans la TableData Filieres ******/
			function populateFiliereDataTable(){
				var tableData = $('#data_table_filieres').DataTable();
				//tableData.DataTable().rows().remove().draw();		// Vider la TableData 
				$.ajax({
					url : "../Filiere/List",
					type: "GET",
					dataType: 'json',
					success: function(response,textStatus ,jqXHR){
						for(i=0;i<response.length;i++){
							var rang=i+1;
							var btns='<div class="btn-group dropleft"> \
								  <button type="button" class="btn btn-outline-info btn-sm" title="Actions"><span class="fa fa-ellipsis-h"></span></button> \
								  <button type="button" class="btn btn-outline-info btn-sm dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> \
								    <span class="sr-only">Toggle Dropdown</span> \
								  </button> \
								  <div class="dropdown-menu shadow p-3 mb-5 bg-white rounded" id="dropdownCycle"> \
								    <div class="bg-info text-white px-3 py-1"><span class="fa fa-ellipsis-h mr-4"></span> Actions</div> \
							        <div class="dropdown-divider"></div> \
								  	<a class="dropdown-item filiere-details text-primary" href="#" filiereId="'+response[i].id+'"><span class="fa fa-info-circle mr-4"></span>Détails</a> \
								  	<a class="dropdown-item filiere-update text-primary" href="#" filiereId="'+response[i].id+'"><span class="fa fa-pen mr-4"></span>Modifier</a> \
								  	<a class="dropdown-item filiere-delete text-primary" href="#" filiereId="'+response[i].id+'"><span class="fa fa-trash mr-4"></span>Supprimer</a> \
								  </div> \
								</div> ';
							tableData.row.add( [
							             rang,
							             response[i].code,
							             response[i].nom_Fr,
							             btns
							         ] ).draw( false );
						}
				    },
				    error: function(response,textStatus ,jqXHR){
				    	$("#modalError .modal-body p").html("");
						$("#modalError .modal-body p").html(jqXHR.responseText);
				   		$('#modalError .modal-body p').modal('show'); 
				        }
				});
			};
			
			/* Au click sur le tab Filieres : 
			/* On charger la liste des Filieres dans la TableData Filieres
			*/
			
			$('#tab_Filieres').on('click', function(e){
					// Effacer le DataTable Filieres
		  			$('#data_table_filieres').DataTable().rows().remove().draw();
		  			// Charger la liste des filieres dans le DataTable Filieres
		  			populateFiliereDataTable();
					e.preventDefault();
			});
  			
  			/********** Ajouter une nouvelle Filiere **********************/
  			//Effacer dabord le formulaire
  			$('#filiere_Add_Modal').on('shown.bs.modal', function(evt){
  				$('#filiere_Add_Form').trigger('reset');
  			});
  			
  			$("#filiere_Add_Form").submit(function(event){ 
				var post_url = $(this).attr("action"); 			//Lire l'action (URL) du formulaire
				var request_method = $(this).attr("method"); 	//Lire la méthode du formulaire  GET/POST 
				var form_data = $(this).serialize(); 			//Encoder les données du formulaire pour envoie
				$('#filiere_Add_Modal').modal('hide');			//Fermer la fenetre modal apres envoie du formulaire
				$.ajax({
					url : post_url,
					type: request_method,
					data : form_data,
					dataType: 'json',
					contentType: "application/x-www-form-urlencoded;charset=UTF-8",
					success: function(response,textStatus ,jqXHR){
						$("#modalSuccess .modal-body p").html("");
						$("#modalSuccess .modal-body p").html(response);
				   		$('#modalSuccess').modal('show');
				    	//setTimeout(function() { $('#modalSuccess').modal('hide'); }, 5000);
				    },
				    error: function(response,textStatus ,jqXHR){
	                    $("#modalError .modal-body p").html("");
						$("#modalError .modal-body p").html(jqXHR.responseText);
				   		$('#modalError').modal('show'); 
				   },
				   complete: function (response,textStatus ,jqXHR) {
					 	//Effacer le DataTable Filieres
						$('#data_table_filieres').DataTable().rows().remove().draw();
			  			//Raffrichir le DataTable Filieres
						populateFiliereDataTable();
			  			    
				    }
				});
				return false;
			});	
  			
  			/*********** Modification d'une Filiere ****************
  			/* 1 - Récuperer l' Id de la Filiere séléctionner sur la DataTable Filieres
  			/* 2 - Charger par ajax le Filiere concerné
  			/* 3 - Remplir les champs de formulaire de modification avec les données du Filiere concerné
  			/* 4 - Afficher le formulaire de modification
  			*****************************************************/
  			
  			$('#data_table_filieres').on('click','.filiere-update', function(evt){
				$this = $(this);
				var id= $this.attr('filiereId');
				$.ajax({
					url : "../Filiere/Details?id="+id,
					type: "GET",
					dataType: 'json',
					success: function(response,textStatus ,jqXHR){
						$("#filiere_Update_Form input[name=id]").val(response.id);
						$("#filiere_Update_Form input[name=code]").val(response.code);
						$("#filiere_Update_Form input[name=nom_Fr]").val(response.nom_Fr);
						$("#filiere_Update_Form input[name=nom_Ar]").val(response.nom_Ar);
						$('#filiere_Update_Modal').modal('show');
				    },
				    error: function(response,textStatus ,jqXHR){
				    	$("#modalError .modal-body p").html("");
						$("#modalError .modal-body p").html(jqXHR.responseText);
				   		$('#modalError .modal-body p').modal('show'); 
				        }
				});
			});
  			/* 5- Envoie du formulaire de modification */
  			
  			$("#filiere_Update_Form").submit(function(event){ 
				var post_url = $(this).attr("action"); 			//Lire l'action (URL) du formulaire
				var request_method = $(this).attr("method"); 	//Lire la méthode du formulaire  GET/POST 
				var form_data = $(this).serialize(); 			//Encoder les données du formulaire pour envoie
				$('#filiere_Update_Modal').modal('hide');		//Fermer la fenetre modal apres envoie du formulaire
				$.ajax({
					url : post_url,
					type: request_method,
					data : form_data,
					dataType: 'json',
					contentType: "application/x-www-form-urlencoded;charset=UTF-8",
					success: function(response,textStatus ,jqXHR){
						
						$("#modalSuccess .modal-body p").html("");
						$("#modalSuccess .modal-body p").html(response);
				   		$('#modalSuccess').modal('show');
				    	//setTimeout(function() { $('#modalSuccess').modal('hide'); }, 5000);
				    },
				    error: function(response,textStatus ,jqXHR){
	                    $("#modalError .modal-body p").html("");
						$("#modalError .modal-body p").html(response);
				   		$('#modalError').modal('show'); 
				    },
				   complete: function (response,textStatus ,jqXHR) {
					 	//Effacer le DataTable Filieres
						$('#data_table_filieres').DataTable().rows().remove().draw();
			  			//Raffrichir le DataTable Filieres
						populateFiliereDataTable();
			  			    
				    }
				});
				return false;
			});
  			
  			/*********** Suppression d'une Filiere ****************
  			/* 1 - Récuperer l' Id du Filiere séléctionner sur la DataTable Filieres
  			/* 2 - Supprimer via ajax le Filiere concerné
  			*****************************************************/
  			
  			$('#data_table_filieres').on('click','.filiere-delete', function(evt){
				$this = $(this);
				var id= $this.attr('filiereId');
				$('#modalConfirm').modal('show');
				$('#modalConfirm').on('click', '#delete', function(e) {
						$.ajax({
							url : "Filiere/Delete?id="+id,
							type: "GET",
							dataType: 'json',
							success: function(response,textStatus ,jqXHR){
								
								$("#modalSuccess .modal-body p").html("");
								$("#modalSuccess .modal-body p").html(response);
						   		$('#modalSuccess').modal('show');
						    	//setTimeout(function() { $('#modalSuccess').modal('hide'); }, 5000);
						    },
						    error: function(response,textStatus ,jqXHR){
						    
						    	$("#modalError .modal-body p").html("");
								$("#modalError .modal-body p").html(jqXHR.responseText);
						   		$('#modalError').modal('show'); 
						    },
						    complete: function (response,textStatus ,jqXHR) {
							 	//Effacer le DataTable Filieres
								$('#data_table_filieres').DataTable().rows().remove().draw();
					  			//Raffrichir le DataTable Filieres
								populateFiliereDataTable();
					  			    
						    }
						});
				  });
				return false;
			});
  			
  			/*********** Affichage des détails d'une Filiere****************
  			/* 1 - Récuperer l' Id de la filière séléctionner sur la DataTable Filiers
  			/* 2 - Charger par ajax la filière concernée
  			/* 3 - Afficher les détails la filière concernée
  			*****************************************************/
  			
  			$('#data_table_filieres').on('click','.filiere-details', function(evt){
				$this = $(this);
				var id= $this.attr('filiereId');
				$.ajax({
					url : "../Filiere/Details?id="+id,
					type: "GET",
					dataType: 'json',
					contentType: "application/json; charset=UTF-8",
					success: function(response,textStatus ,jqXHR){
						var codeItem ='<li class="list-group-item"><span><strong>Code </strong></span><span class="float-right">'+response.code+'</span></li>';
						var nom_FrItem ='<li class="list-group-item"><span><strong>Nom de la filière  </strong></span><span class="float-right">'+response.nom_Fr+'</span></li>';
						var nom_ArItem ='<li class="list-group-item"><span class="float-right"><strong>إسم الشعبة</strong></span><span class="float-left" dir="rtl">'+response.nom_Ar+'</span></li>';
						$("#filiere_Details_Modal .list-group").html("");
						$("#filiere_Details_Modal .list-group").append(codeItem);
						$("#filiere_Details_Modal .list-group").append(nom_FrItem);
						$("#filiere_Details_Modal .list-group").append(nom_ArItem);
						$('#filiere_Details_Modal').modal('show');
				    },
				    error: function(response,textStatus ,jqXHR){
				    	$("#modalError .modal-body p").html("");
						$("#modalError .modal-body p").html(jqXHR.responseText);
				   		$('#modalError .modal-body p').modal('show'); 
				        }
				});
				
				return false;
			});
  			
  			/************** DataTable du Tab : Niveaux **************/
	  		// Initialisation du DataTable Niveaux
	  		$('#data_table_niveaux').DataTable(
	  			{	
	  				"paging": true,
	  				"autoWidth": true,
	  				"columnDefs": [
	  					{ "orderable": false, "targets": 3 }
	  				],
	  				dom: 'Bfrtip',
	  		        buttons: [
	  		            'copy', 
	  		            'csv', 
	  		            'excel', 
	  		            'pdf', 
	  		            'print'
	  		        ]
	  			}
	  		);
	  		/******* fonction pour charger la liste des Niveaux dans la TableData Niveaux ******/
			function populateNiveauDataTable(){
				var tableData = $('#data_table_niveaux').DataTable();
				//tableData.DataTable().rows().remove().draw();		// Vider la TableData 
				$.ajax({
					url : "../Niveau/List",
					type: "GET",
					dataType: 'json',
					success: function(response,textStatus ,jqXHR){
						for(i=0;i<response.length;i++){
							var rang =i+1;
							var btns='<div class="btn-group dropleft"> \
								  <button type="button" class="btn btn-outline-info btn-sm" title="Actions"><span class="fa fa-ellipsis-h"></span></button> \
								  <button type="button" class="btn btn-outline-info btn-sm dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> \
								    <span class="sr-only">Toggle Dropdown</span> \
								  </button> \
								  <div class="dropdown-menu shadow p-3 mb-5 bg-white rounded" id="dropdownCycle"> \
								    <div class="bg-info text-white px-3 py-1"><span class="fa fa-ellipsis-h mr-4"></span> Actions</div> \
							        <div class="dropdown-divider"></div> \
								  	<a class="dropdown-item niveau-details text-primary" href="#" niveauId="'+response[i].id+'"><span class="fa fa-info-circle mr-4"></span>Détails</a> \
								  	<a class="dropdown-item niveau-update text-primary" href="#" niveauId="'+response[i].id+'"><span class="fa fa-pen mr-4"></span>Modifier</a> \
								  	<a class="dropdown-item niveau-delete text-primary" href="#" niveauId="'+response[i].id+'"><span class="fa fa-trash mr-4"></span>Supprimer</a> \
								  </div> \
								</div> ';
							tableData.row.add( [
							             rang,
							             response[i].code,
							             response[i].nom_Fr,
							             btns
							         ] ).draw( false );
						}
				    },
				    error: function(response,textStatus ,jqXHR){
				    	$("#modalError .modal-body p").html("");
						$("#modalError .modal-body p").html(jqXHR.responseText);
				   		$('#modalError .modal-body p').modal('show'); 
				        }
				});
			};
			/* Au click sur le tab Niveaux : 
			/* On charger la liste des Niveaux dans la TableData Niveaux
			*/
			
			$('#tab_Niveaux').on('click', function(e){
					// Effacer le DataTable Niveaux
					$('#data_table_niveaux').DataTable().rows().remove().draw();
					// Charger la liste des niveaux dans le DataTable Niveaux
		  			populateNiveauDataTable();
					e.preventDefault();
			});
			
  			/********** Ajouter un nouveau Niveau **********************/
  			//Effacer dabord le formulaire
  			$('#niveau_Add_Modal').on('shown.bs.modal', function(evt){
  				$('#niveau_Add_Form').trigger('reset');
  			});
  			//Envoyer le formulaire via ajax
  			$("#niveau_Add_Form").submit(function(event){ 
				var post_url = $(this).attr("action"); 			//Lire l'action (URL) du formulaire
				var request_method = $(this).attr("method"); 	//Lire la méthode du formulaire  GET/POST 
				var form_data = $(this).serialize(); 			//Encoder les données du formulaire pour envoie
				$('#niveau_Add_Modal').modal('hide');			//Fermer la fenetre modal apres envoie du formulaire
				$.ajax({
					url : post_url,
					type: request_method,
					data : form_data,
					dataType: 'json',
					contentType: "application/x-www-form-urlencoded;charset=UTF-8",
					success: function(response,textStatus ,jqXHR){
						$("#modalSuccess .modal-body p").html("");
						$("#modalSuccess .modal-body p").html(response);
				   		$('#modalSuccess').modal('show');
				    	//setTimeout(function() { $('#modalSuccess').modal('hide'); }, 5000);
				    },
				    error: function(response,textStatus ,jqXHR){
	                    $("#modalError .modal-body p").html("");
						$("#modalError .modal-body p").html(jqXHR.responseText);
				   		$('#modalError').modal('show'); 
				        },
					complete: function (response,textStatus ,jqXHR) {
				    	
						//Effacer le DataTable Niveaux
						$('#data_table_niveaux').DataTable().rows().remove().draw();
			  			//Raffrichir le DataTable Niveaux
						populateNiveauDataTable();    
				    }
				});
				return false;
			});	
  			
  			/*********** Modification d'un Niveau ****************
  			/* 1 - Récuperer l' Id du Niveau séléctionner sur la DataTable Niveaux
  			/* 2 - Charger par ajax le Niveau concerné
  			/* 3 - Remplir les champs de formulaire de modification avec les données du Niveau concerné
  			/* 4 - Afficher le formulaire de modification
  			*****************************************************/
  			
  			$('#data_table_niveaux').on('click','.niveau-update', function(evt){
				$this = $(this);
				var id= $this.attr('niveauId');
				$.ajax({
					url : "../Niveau/Details?id="+id,
					type: "GET",
					dataType: 'json',
					contentType: "application/json; charset=UTF-8",
					success: function(response,textStatus ,jqXHR){
						$("#niveau_Update_Form input[name=id]").val(response.id);
						$("#niveau_Update_Form input[name=code]").val(response.code);
						$("#niveau_Update_Form input[name=nom_Fr]").val(response.nom_Fr);
						$("#niveau_Update_Form input[name=nom_Ar]").val(response.nom_Ar);
						$('#niveau_Update_Modal').modal('show');
				    },
				    error: function(response,textStatus ,jqXHR){
				    	$("#modalError .modal-body p").html("");
						$("#modalError .modal-body p").html(jqXHR.responseText);
				   		$('#modalError .modal-body p').modal('show'); 
				        }
				});
				
				return false;
			});
  			/* 5- Envoie du formulaire de modification */
  			
  			$("#niveau_Update_Form").submit(function(event){ 
				var post_url = $(this).attr("action"); 			//Lire l'action (URL) du formulaire
				var request_method = $(this).attr("method"); 	//Lire la méthode du formulaire  GET/POST 
				var form_data = $(this).serialize(); 			//Encoder les données du formulaire pour envoie
				$('#niveau_Update_Modal').modal('hide');			//Fermer la fenetre modal apres envoie du formulaire
				$.ajax({
					url : post_url,
					type: request_method,
					data : form_data,
					dataType: 'json',
					contentType: "application/x-www-form-urlencoded;charset=UTF-8",
					success: function(response,textStatus ,jqXHR){
						$("#modalSuccess .modal-body p").html("");
						$("#modalSuccess .modal-body p").html(response);
				   		$('#modalSuccess').modal('show');
				    	//setTimeout(function() { $('#modalSuccess').modal('hide'); }, 5000);
						
				    },
				    error: function(response,textStatus ,jqXHR){
	                    $("#modalError .modal-body p").html("");
						$("#modalError .modal-body p").html(response);
				   		$('#modalError').modal('show'); 
				        },
				    complete: function (response,textStatus ,jqXHR) {
				    	
						//Effacer le DataTable Niveaux
						$('#data_table_niveaux').DataTable().rows().remove().draw();
			  			//Raffrichir le DataTable Niveaux
						populateNiveauDataTable();    
				    }   
				});
				return false;
			});	
  			/*********** Suppression d'un Niveau ****************
  			/* 1 - Récuperer l' Id du Niveau séléctionner sur la DataTable Niveaux
  			/* 2 - Supprimer par ajax le Niveau concerné
  			*****************************************************/
  			
  			$('#data_table_niveaux').on('click','.niveau-delete', function(evt){
				$this = $(this);
				var id= $this.attr('niveauId');
				$('#modalConfirm').modal('show');
				$('#modalConfirm').on('click', '#delete', function(e) {
					
						$.ajax({
							url : "../Niveau/Delete?id="+id,
							type: "GET",
							dataType: 'json',
							success: function(response,textStatus ,jqXHR){
								$("#modalSuccess .modal-body p").html("");
								$("#modalSuccess .modal-body p").html(response);
						   		$('#modalSuccess').modal('show');
						    	//setTimeout(function() { $('#modalSuccess').modal('hide'); }, 5000);
						    	
						    },
						    error: function(response,textStatus ,jqXHR){
						    	$("#modalError .modal-body p").html("");
								$("#modalError .modal-body p").html(jqXHR.responseText);
						   		$('#modalError').modal('show'); 
						    },
						    complete: function (response,textStatus ,jqXHR) {
						    	
								//Effacer le DataTable Niveaux
								$('#data_table_niveaux').DataTable().rows().remove().draw();
					  			//Raffrichir le DataTable Niveaux
								populateNiveauDataTable();    
						    }
						});
				  });
				
				
				return false;
			});
  			
  			/*********** Affichage des détails d'un Niveau ****************
  			/* 1 - Récuperer l' Id du Niveau séléctionné sur la DataTable Niveaux
  			/* 2 - Charger par ajax le Niveau concerné
  			/* 3 - Afficher les détails du Niveau concerné 
  			*****************************************************/
  			
  			$('#data_table_niveaux').on('click','.niveau-details', function(evt){
				$this = $(this);
				var id= $this.attr('niveauId');
				$.ajax({
					url : "../Niveau/Details?id="+id,
					type: "GET",
					dataType: 'json',
					contentType: "application/json; charset=UTF-8",
					success: function(response,textStatus ,jqXHR){
						var codeItem ='<li class="list-group-item"><span><strong>Code  </strong></span><span class="float-right">'+response.code+'</span></li>';
						var nom_FrItem ='<li class="list-group-item"><span><strong>Nom du niveau  </strong></span><span class="float-right">'+response.nom_Fr+'</span></li>';
						var nom_ArItem ='<li class="list-group-item"><span><strong>إسم المستوى</strong></span><span class="float-right" dir="rtl">'+response.nom_Ar+'</span></li>';
						$("#niveau_Details_Modal .list-group").html("");
						$("#niveau_Details_Modal .list-group").append(codeItem);
						$("#niveau_Details_Modal .list-group").append(nom_FrItem);
						$("#niveau_Details_Modal .list-group").append(nom_ArItem);
						$('#niveau_Details_Modal').modal('show');
				    },
				    error: function(response,textStatus ,jqXHR){
				    	$("#modalError .modal-body p").html("");
						$("#modalError .modal-body p").html(jqXHR.responseText);
				   		$('#modalError .modal-body p').modal('show'); 
				        }
				});
				
				return false;
			});
  		
  			
  			/************** DataTable du Tab : ClasseGeneriques **************/
	  		// Initialisation du DataTable ClasseGeneriques
	  		$('#data_table_classeGeneriques').DataTable(
	  			{	
	  				"paging": true,
	  				"autoWidth": true,
	  				"columnDefs": [
	  					{ "orderable": false, "targets": 2 }
	  				],
	  				"columnDefs": [
			             {
			                 "targets": [ 0 ],
			                 "visible": true,
			                 "searchable": false,
			                 "orderable": true
			             },
			             {
			                 "targets": [ 2 ],
			                 "visible": true
			                 
			             }
	  				 ],
	  				dom: 'Bfrtip',
	  		        buttons: [
	  		            'copy', 
	  		            'csv', 
	  		            'excel', 
	  		            'pdf', 
	  		            'print'
	  		        ]
	  			}
	  		);
	  		/******* fonction pour charger la liste des ClasseGeneriques dans la TableData ClasseGeneriques ******/
			function populateClasseGeneriqueDataTable(){
				var tableData = $('#data_table_classeGeneriques').DataTable();
				//tableData.DataTable().rows().remove().draw();		// Vider la TableData 
				$.ajax({
					url : "../ClasseGenerique/List",
					type: "GET",
					dataType: 'json',
					success: function(response,textStatus ,jqXHR){
						for(i=0;i<response.length;i++){
							var rang=i+1;
							var btns='<div class="btn-group dropleft"> \
								  <button type="button" class="btn btn-outline-info btn-sm" title="Actions"><span class="fa fa-ellipsis-h"></span></button> \
								  <button type="button" class="btn btn-outline-info btn-sm dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> \
								    <span class="sr-only">Toggle Dropdown</span> \
								  </button> \
								  <div class="dropdown-menu shadow p-3 mb-5 bg-white rounded" id="dropdownCycle"> \
								    <div class="bg-info text-white px-3 py-1"><span class="fa fa-ellipsis-h mr-4"></span> Actions</div> \
							        <div class="dropdown-divider"></div> \
								  	<a class="dropdown-item classeGenerique-details text-primary" href="#" classeGeneriqueId="'+response[i].id+'"><span class="fa fa-info-circle mr-4"></span>Détails</a> \
								  	<a class="dropdown-item classeGenerique-update text-primary" href="#" classeGeneriqueId="'+response[i].id+'"><span class="fa fa-pen mr-4"></span>Modifier</a> \
								  	<a class="dropdown-item classeGenerique-delete text-primary" href="#" classeGeneriqueId="'+response[i].id+'"><span class="fa fa-trash mr-4"></span>Supprimer</a> \
								  </div> \
								</div> ';
							tableData.row.add( [
							             rang,
							             response[i].code,
							             btns
							         ] ).draw( false );
						}
				    },
				    error: function(response,textStatus ,jqXHR){
				    	$("#modalError .modal-body p").html("");
						$("#modalError .modal-body p").html(jqXHR.responseText);
				   		$('#modalError .modal-body p').modal('show'); 
				        }
				});
			};
			
			/* Au click sur le tab ClasseGeneriques : 
			/* On charger la liste des ClasseGeneriques dans la TableData ClasseGeneriques
			*/
			
			$('#tab_ClasseGeneriques').on('click', function(e){
					// Effacer le DataTable ClasseGeneriques
		  			$('#data_table_classeGeneriques').DataTable().rows().remove().draw();
		  			// Charger la liste des classeGeneriques dans le DataTable ClasseGeneriques
		  			populateClasseGeneriqueDataTable();
					e.preventDefault();
			});
  			
  			/********** Ajouter une nouvelle ClasseGenerique **********************/
  			
  			$('#classeGenerique_Add_Modal').on('shown.bs.modal', function(evt){
  				//Réinitialiser le formulaire d'ajout et de modéfication des classes génériques
  				//Effacer dabord le formulaire
  				$('#classeGenerique_Add_Form').trigger('reset');
  				//Chargement des Cycles dans Select cycle
  				$.ajax({
					url : "../Cycle/List",
					type: "GET",
					dataType: 'json',
					contentType: "application/json; charset=UTF-8",
					success: function(response,textStatus ,jqXHR){
						$("#classeGenerique_Add_Form select[name=cycle]").html("");
						for(i=0;i<response.length;i++){
							var item  ='<option value="'+response[i].id+'">'+response[i].code+'</option>';
							$("#classeGenerique_Add_Form select[name=cycle]").append(item);       
						}	
				    },
				    error: function(response,textStatus ,jqXHR){
				    	$("#modalError .modal-body p").html("");
						$("#modalError .modal-body p").html(jqXHR.responseText);
				   		$('#modalError .modal-body p').modal('show'); 
				        }
				});
  				//Chargement des Filiers dans Select filiere
  				$.ajax({
					url : "../Filiere/List",
					type: "GET",
					dataType: 'json',
					contentType: "application/json; charset=UTF-8",
					success: function(response,textStatus ,jqXHR){
						$("#classeGenerique_Add_Form select[name=filiere]").html("");
						for(i=0;i<response.length;i++){
							var item  ='<option value="'+response[i].id+'">'+response[i].code+'</option>';
							$("#classeGenerique_Add_Form select[name=filiere]").append(item);       
						}	
				    },
				    error: function(response,textStatus ,jqXHR){
				    	$("#modalError .modal-body p").html("");
						$("#modalError .modal-body p").html(jqXHR.responseText);
				   		$('#modalError .modal-body p').modal('show'); 
				        }
				});
  				//Chargement des Niveaux dans Select niveau
  				$.ajax({
					url : "../Niveau/List",
					type: "GET",
					dataType: 'json',
					contentType: "application/json; charset=UTF-8",
					success: function(response,textStatus ,jqXHR){
						$("#classeGenerique_Add_Form select[name=niveau]").html("");
						for(i=0;i<response.length;i++){
							var item  ='<option value="'+response[i].id+'">'+response[i].code+'</option>';
							$("#classeGenerique_Add_Form select[name=niveau]").append(item);       
						}	
				    },
				    error: function(response,textStatus ,jqXHR){
				    	$("#modalError .modal-body p").html("");
						$("#modalError .modal-body p").html(jqXHR.responseText);
				   		$('#modalError .modal-body p').modal('show'); 
				        }
				});
  			});
  			//Envoie du formulaire d'ajout de la ClasseGenerique
  			$("#classeGenerique_Add_Form").submit(function(event){ 
				var post_url = $(this).attr("action"); 			//Lire l'action (URL) du formulaire
				var request_method = $(this).attr("method"); 	//Lire la méthode du formulaire  GET/POST 
				var form_data = $(this).serialize(); 			//Encoder les données du formulaire pour envoie
				$('#classeGenerique_Add_Modal').modal('hide');			//Fermer la fenetre modal apres envoie du formulaire
				$.ajax({
					url : post_url,
					type: request_method,
					data : form_data,
					dataType: 'json',
					contentType: "application/x-www-form-urlencoded;charset=UTF-8",
					success: function(response,textStatus ,jqXHR){
						$("#modalSuccess .modal-body p").html("");
						$("#modalSuccess .modal-body p").html(response);
				   		$('#modalSuccess').modal('show');
				    	//setTimeout(function() { $('#modalSuccess').modal('hide'); }, 5000);
				    },
				    error: function(response,textStatus ,jqXHR){
	                    $("#modalError .modal-body p").html("");
						$("#modalError .modal-body p").html(jqXHR.responseText);
				   		$('#modalError').modal('show'); 
				   },
				   complete: function (response,textStatus ,jqXHR) {
					 	//Effacer le DataTable ClasseGeneriques
						$('#data_table_classeGeneriques').DataTable().rows().remove().draw();
			  			//Raffrichir le DataTable ClasseGeneriques
						populateClasseGeneriqueDataTable();
			  			    
				    }
				});
				return false;
			});	
  			
  			/*********** Modification d'une ClasseGenerique ****************
  			/* 1 - Récuperer l' Id de la ClasseGenerique séléctionner sur la DataTable ClasseGeneriques
  			/* 2 - Charger par ajax le ClasseGenerique concerné
  			/* 3 - Remplir les champs de formulaire de modification avec les données du ClasseGenerique concerné
  			/* 4 - Afficher le formulaire de modification
  			*****************************************************/
  			
  			$('#data_table_classeGeneriques').on('click','.classeGenerique-update', function(evt){
  				//Effacer dabord le formulaire
  				$('#classeGenerique_Update_Form').trigger('reset');
  				$("#classeGenerique_Update_Form select[name=cycle]").html('');
				$("#classeGenerique_Update_Form select[name=filiere]").html('');
				$("#classeGenerique_Update_Form select[name=niveau]").html('');
				$("#classeGenerique_Update_Form textarea[name=description]").html('');
				
				$this = $(this);
				var id= $this.attr('classeGeneriqueId');
				//Ajouter les valeur initiales du Cycle, Filiere et Niveau dans les selects
				$.ajax({
					url : "../ClasseGenerique/Details?id="+id,
					type: "GET",
					dataType: 'json',
					success: function(response,textStatus ,jqXHR){
						var itemCycle  	='<option class="bg-danger text-white" value="'+response.cycle.id+'">'+response.cycle.code+'</option>';
						var itemFiliere ='<option class="bg-danger text-white" value="'+response.filiere.id+'">'+response.filiere.code+'</option>';
						var itemNiveau  ='<option class="bg-danger text-white" value="'+response.niveau.id+'">'+response.niveau.code+'</option>';
						$("#classeGenerique_Update_Form input[name=id]").val(response.id);
						$("#classeGenerique_Update_Form select[name=cycle]").prepend(itemCycle);
						$("#classeGenerique_Update_Form select[name=filiere]").prepend(itemFiliere);
						$("#classeGenerique_Update_Form select[name=niveau]").prepend(itemNiveau);
						$("#classeGenerique_Update_Form textarea[name=description]").html(response.description);
						
						$('#classeGenerique_Update_Modal').modal('show');
				    },
				    error: function(response,textStatus ,jqXHR){
				    	$("#modalError .modal-body p").html("");
						$("#modalError .modal-body p").html(jqXHR.responseText);
				   		$('#modalError .modal-body p').modal('show'); 
				        },
			        complete: function (response,textStatus ,jqXHR) {
			        	//Chargement des Cycles dans Select cycle
		  				$.ajax({
							url : "../Cycle/List",
							type: "GET",
							dataType: 'json',
							contentType: "application/json; charset=UTF-8",
							success: function(response,textStatus ,jqXHR){
								for(i=0;i<response.length;i++){
									var item  ='<option value="'+response[i].id+'">'+response[i].code+'</option>';
									$("#classeGenerique_Update_Form select[name=cycle]").append(item);       
								}	
						    },
						    error: function(response,textStatus ,jqXHR){
						    	$("#modalError .modal-body p").html("");
								$("#modalError .modal-body p").html(jqXHR.responseText);
						   		$('#modalError .modal-body p').modal('show'); 
						        }
						});
		  				//Chargement des Filiers dans Select filiere
		  				$.ajax({
							url : "../Filiere/List",
							type: "GET",
							dataType: 'json',
							contentType: "application/json; charset=UTF-8",
							success: function(response,textStatus ,jqXHR){
								for(i=0;i<response.length;i++){
									var item  ='<option value="'+response[i].id+'">'+response[i].code+'</option>';
									$("#classeGenerique_Update_Form select[name=filiere]").append(item);       
								}	
						    },
						    error: function(response,textStatus ,jqXHR){
						    	$("#modalError .modal-body p").html("");
								$("#modalError .modal-body p").html(jqXHR.responseText);
						   		$('#modalError .modal-body p').modal('show'); 
						        }
						});
		  				//Chargement des Niveaux dans Select niveau
		  				$.ajax({
							url : "../Niveau/List",
							type: "GET",
							dataType: 'json',
							contentType: "application/json; charset=UTF-8",
							success: function(response,textStatus ,jqXHR){
								for(i=0;i<response.length;i++){
									var item  ='<option value="'+response[i].id+'">'+response[i].code+'</option>';
									$("#classeGenerique_Update_Form select[name=niveau]").append(item);       
								}	
						    },
						    error: function(response,textStatus ,jqXHR){
						    	$("#modalError .modal-body p").html("");
								$("#modalError .modal-body p").html(jqXHR.responseText);
						   		$('#modalError .modal-body p').modal('show'); 
						        }
						});
			  			    
				    }
				});
			});
  			/* 5- Envoie du formulaire de modification */
  			
  			$("#classeGenerique_Update_Form").submit(function(event){ 
				var post_url = $(this).attr("action"); 			//Lire l'action (URL) du formulaire
				var request_method = $(this).attr("method"); 	//Lire la méthode du formulaire  GET/POST 
				var form_data = $(this).serialize(); 			//Encoder les données du formulaire pour envoie
				$('#classeGenerique_Update_Modal').modal('hide');		//Fermer la fenetre modal apres envoie du formulaire
				$.ajax({
					url : post_url,
					type: request_method,
					data : form_data,
					dataType: 'json',
					contentType: "application/x-www-form-urlencoded;charset=UTF-8",
					success: function(response,textStatus ,jqXHR){
						
						$("#modalSuccess .modal-body p").html("");
						$("#modalSuccess .modal-body p").html(response);
				   		$('#modalSuccess').modal('show');
				    	//setTimeout(function() { $('#modalSuccess').modal('hide'); }, 5000);
				    },
				    error: function(response,textStatus ,jqXHR){
	                    $("#modalError .modal-body p").html("");
						$("#modalError .modal-body p").html(response);
				   		$('#modalError').modal('show'); 
				    },
				   complete: function (response,textStatus ,jqXHR) {
					 	//Effacer le DataTable ClasseGeneriques
						$('#data_table_classeGeneriques').DataTable().rows().remove().draw();
			  			//Raffrichir le DataTable ClasseGeneriques
						populateClasseGeneriqueDataTable();
			  			    
				    }
				});
				return false;
			});
  			
  			/*********** Suppression d'une ClasseGenerique ****************
  			/* 1 - Récuperer l' Id du ClasseGenerique séléctionner sur la DataTable ClasseGeneriques
  			/* 2 - Supprimer via ajax le ClasseGenerique concerné
  			*****************************************************/
  			
  			$('#data_table_classeGeneriques').on('click','.classeGenerique-delete', function(evt){
				$this = $(this);
				var id= $this.attr('classeGeneriqueId');
				$('#modalConfirm').modal('show');
				$('#modalConfirm').on('click', '#delete', function(e) {
						$.ajax({
							url : "../ClasseGenerique/Delete?id="+id,
							type: "GET",
							dataType: 'json',
							success: function(response,textStatus ,jqXHR){
								
								$("#modalSuccess .modal-body p").html("");
								$("#modalSuccess .modal-body p").html(response);
						   		$('#modalSuccess').modal('show');
						    	//setTimeout(function() { $('#modalSuccess').modal('hide'); }, 5000);
						    },
						    error: function(response,textStatus ,jqXHR){
						    
						    	$("#modalError .modal-body p").html("");
								$("#modalError .modal-body p").html(jqXHR.responseText);
						   		$('#modalError').modal('show'); 
						    },
						    complete: function (response,textStatus ,jqXHR) {
							 	//Effacer le DataTable ClasseGeneriques
								$('#data_table_classeGeneriques').DataTable().rows().remove().draw();
					  			//Raffrichir le DataTable ClasseGeneriques
								populateClasseGeneriqueDataTable();
					  			    
						    }
						});
				  });
				return false;
			});
  			
  			/*********** Affichage des détails d'une ClasseGenerique******************
  			/* 1 - Récuperer l' Id de la filière séléctionner sur la DataTable Filiers
  			/* 2 - Charger par ajax la filière concernée
  			/* 3 - Afficher les détails de la filière concernée
  			**************************************************************************/
  			
  			$('#data_table_classeGeneriques').on('click','.classeGenerique-details', function(evt){
				$this = $(this);
				var id= $this.attr('classeGeneriqueId');
				$.ajax({
					url : "../ClasseGenerique/Details?id="+id,
					type: "GET",
					dataType: 'json',
					//contentType: "application/json; charset=UTF-8",
					success: function(response,textStatus ,jqXHR){
						var codeItem ='<li class="list-group-item"><span><strong>Code 		</strong></span><span class="float-right">'+response.code+'</span></li>';
						var cycleItem ='<li class="list-group-item"><span><strong>Cycle 	</strong></span><span class="float-right">'+response.cycle.code+'</span></li>';
						var filiereItem ='<li class="list-group-item"><span><strong>Filière	</strong></span><span class="float-right">'+response.filiere.code+'</span></li>';
						var niveauItem ='<li class="list-group-item"><span><strong>Niveau	</strong></span><span class="float-right">'+response.niveau.code+'</span></li>';
						var descriptionItem ='<li class="list-group-item"><span><strong>Description	</strong></span><span class="float-right">'+response.description+'</span></li>';
						
						$("#classeGenerique_Details_Modal .list-group").html("");
						$("#classeGenerique_Details_Modal .list-group").append(codeItem);
						$("#classeGenerique_Details_Modal .list-group").append(cycleItem);
						$("#classeGenerique_Details_Modal .list-group").append(filiereItem);
						$("#classeGenerique_Details_Modal .list-group").append(niveauItem);
						$("#classeGenerique_Details_Modal .list-group").append(descriptionItem);
						
						$('#classeGenerique_Details_Modal').modal('show');
				    },
				    error: function(response,textStatus ,jqXHR){
				    	$("#modalError .modal-body p").html("");
						$("#modalError .modal-body p").html(jqXHR.responseText);
				   		$('#modalError .modal-body p').modal('show'); 
				        }
				});
				
				return false;
			});
  			

  			
  			/************** DataTable du Tab : Classes **************/
	  		// Initialisation du DataTable Classes
	  		$('#data_table_classes').DataTable(
	  			{	
	  				"paging": true,
	  				"autoWidth": true,
	  				"columnDefs": [
	  					{ "orderable": false, "targets": 2 }
	  				],
	  				"columnDefs": [
			             {
			                 "targets": [ 0 ],
			                 "visible": true,
			                 "searchable": false,
			                 "orderable": true
			             },
			             {
			                 "targets": [ 2 ],
			                 "visible": true
			                 
			             }
	  				 ],
	  				dom: 'Bfrtip',
	  		        buttons: [
	  		            'copy', 
	  		            'csv', 
	  		            'excel', 
	  		            'pdf', 
	  		            'print'
	  		        ]
	  			}
	  		);
	  		/******* fonction pour charger la liste des Classes dans la TableData Classes ******/
			function populateClasseDataTable(){
				var tableData = $('#data_table_classes').DataTable();
				//tableData.DataTable().rows().remove().draw();		// Vider la TableData 
				$.ajax({
					url : "../Classe/List",
					type: "GET",
					dataType: 'json',
					success: function(response,textStatus ,jqXHR){
						for(i=0;i<response.length;i++){
							var rang=i+1;
							var btns='<div class="btn-group dropleft"> \
								  <button type="button" class="btn btn-outline-info btn-sm" title="Actions"><span class="fa fa-ellipsis-h"></span></button> \
								  <button type="button" class="btn btn-outline-info btn-sm dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> \
								    <span class="sr-only">Toggle Dropdown</span> \
								  </button> \
								  <div class="dropdown-menu shadow p-3 mb-5 bg-white rounded" id="dropdownCycle"> \
								    <div class="bg-info text-white px-3 py-1"><span class="fa fa-ellipsis-h mr-4"></span> Actions</div> \
							        <div class="dropdown-divider"></div> \
								  	<a class="dropdown-item classe-details text-primary" href="#" classeId="'+response[i].id+'"><span class="fa fa-info-circle mr-4"></span>Détails</a> \
								  	<a class="dropdown-item classe-update text-primary" href="#" classeId="'+response[i].id+'"><span class="fa fa-pen mr-4"></span>Modifier</a> \
								  	<a class="dropdown-item classe-delete text-primary" href="#" classeId="'+response[i].id+'"><span class="fa fa-trash mr-4"></span>Supprimer</a> \
								  </div> \
								</div> ';
							tableData.row.add( [
							             rang,
							             response[i].code,
							             btns
							         ] ).draw( false );
						}
				    },
				    error: function(response,textStatus ,jqXHR){
				    	$("#modalError .modal-body p").html("");
						$("#modalError .modal-body p").html(jqXHR.responseText);
				   		$('#modalError .modal-body p').modal('show'); 
				        }
				});
			};
			
			/* Au click sur le tab Classes : 
			/* On charger la liste des Classes dans la TableData Classes
			*/
			
			$('#tab_Classes').on('click', function(e){
					// Effacer le DataTable Classes
		  			$('#data_table_classes').DataTable().rows().remove().draw();
		  			// Charger la liste des classes dans le DataTable Classes
		  			populateClasseDataTable();
					e.preventDefault();
			});
  			
  			/********** Ajouter une nouvelle Classe **********************/
  			
  			$('#classe_Add_Modal').on('shown.bs.modal', function(evt){
  				//Réinitialiser le formulaire d'ajout et de modéfication des classes 
  				//Effacer dabord le formulaire
  				$('#classe_Add_Form').trigger('reset');
  				//Chargement des Cycles dans Select cycle
  				$.ajax({
					url : "../Cycle/List",
					type: "GET",
					dataType: 'json',
					contentType: "application/json; charset=UTF-8",
					success: function(response,textStatus ,jqXHR){
						$("#classe_Add_Form select[name=cycle]").html("");
						for(i=0;i<response.length;i++){
							var item  ='<option value="'+response[i].id+'">'+response[i].code+'</option>';
							$("#classe_Add_Form select[name=cycle]").append(item);       
						}	
				    },
				    error: function(response,textStatus ,jqXHR){
				    	$("#modalError .modal-body p").html("");
						$("#modalError .modal-body p").html(jqXHR.responseText);
				   		$('#modalError .modal-body p').modal('show'); 
				        }
				});
  				//Chargement des Filiers dans Select filiere
  				$.ajax({
					url : "../Filiere/List",
					type: "GET",
					dataType: 'json',
					contentType: "application/json; charset=UTF-8",
					success: function(response,textStatus ,jqXHR){
						$("#classe_Add_Form select[name=filiere]").html("");
						for(i=0;i<response.length;i++){
							var item  ='<option value="'+response[i].id+'">'+response[i].code+'</option>';
							$("#classe_Add_Form select[name=filiere]").append(item);       
						}	
				    },
				    error: function(response,textStatus ,jqXHR){
				    	$("#modalError .modal-body p").html("");
						$("#modalError .modal-body p").html(jqXHR.responseText);
				   		$('#modalError .modal-body p').modal('show'); 
				        }
				});
  				//Chargement des Niveaux dans Select niveau
  				$.ajax({
					url : "../Niveau/List",
					type: "GET",
					dataType: 'json',
					contentType: "application/json; charset=UTF-8",
					success: function(response,textStatus ,jqXHR){
						$("#classe_Add_Form select[name=niveau]").html("");
						for(i=0;i<response.length;i++){
							var item  ='<option value="'+response[i].id+'">'+response[i].code+'</option>';
							$("#classe_Add_Form select[name=niveau]").append(item);       
						}	
				    },
				    error: function(response,textStatus ,jqXHR){
				    	$("#modalError .modal-body p").html("");
						$("#modalError .modal-body p").html(jqXHR.responseText);
				   		$('#modalError .modal-body p').modal('show'); 
				        }
				});
	  			//Chargement des années scolaires dans le Select : anneeScolaire
	 				$.ajax({
					url : "../AnneeScolaire/List",
					type: "GET",
					dataType: 'json',
					contentType: "application/json; charset=UTF-8",
					success: function(response,textStatus ,jqXHR){
						$("#classe_Add_Form select[name=annneescolaire]").html("");
						for(i=0;i<response.length;i++){
							var item  ='<option value="'+response[i].id+'">'+response[i].code+'</option>';
							$("#classe_Add_Form select[name=annneescolaire]").append(item);       
						}	
				    },
				    error: function(response,textStatus ,jqXHR){
				    	$("#modalError .modal-body p").html("");
						$("#modalError .modal-body p").html(jqXHR.responseText);
				   		$('#modalError .modal-body p').modal('show'); 
				        }
				});
	 			//Chargement de L'année scolaire courante dans la première option du Select : anneeScolaire
	 			
	 			$.ajax({
					url : "../AnneeScolaireCourante/List",
					type: "GET",
					dataType: 'json',
					contentType: "application/json; charset=UTF-8",
					success: function(response,textStatus ,jqXHR){
						for(i=0;i<response.length;i++){
							var item  ='<option class="bg-danger text-white" value="'+response[i].anneeScolaire.id+'">'+response[i].anneeScolaire.code+'</option>';
							$("#classe_Add_Form select[name=annneescolaire]").prepend(item); 
							//$("#classe_Add_Form select[name=annneescolaire]").val(response[i].anneeScolaire.id);
						}	
				    },
				    error: function(response,textStatus ,jqXHR){
				    	$("#modalError .modal-body p").html("");
						$("#modalError .modal-body p").html(jqXHR.responseText);
				   		$('#modalError .modal-body p').modal('show'); 
				        }
				});
  	
  			});
  			//Envoie du formulaire d'ajout de la Classe
  			$("#classe_Add_Form").submit(function(event){ 
				var post_url = $(this).attr("action"); 			//Lire l'action (URL) du formulaire
				var request_method = $(this).attr("method"); 	//Lire la méthode du formulaire  GET/POST 
				var form_data = $(this).serialize(); 			//Encoder les données du formulaire pour envoie
				$('#classe_Add_Modal').modal('hide');			//Fermer la fenetre modal apres envoie du formulaire
				$.ajax({
					url : post_url,
					type: request_method,
					data : form_data,
					dataType: 'json',
					contentType: "application/x-www-form-urlencoded;charset=UTF-8",
					success: function(response,textStatus ,jqXHR){
						if(response.success){
							$("#modalSuccess .modal-body p").html("");
							$("#modalSuccess .modal-body p").html(response.message);
					   		$('#modalSuccess').modal('show');		
						}else{
							$("#modalError .modal-body p").html("");
							$("#modalError .modal-body p").html(response.message);
					   		$('#modalError').modal('show'); 
						}
				    },
				    error: function(response,textStatus ,jqXHR){
	                    $("#modalError .modal-body p").html("");
						$("#modalError .modal-body p").html(jqXHR.responseText);
				   		$('#modalError').modal('show'); 
				   },
				   complete: function (response,textStatus ,jqXHR) {
					 	//Effacer le DataTable Classes
						$('#data_table_classes').DataTable().rows().remove().draw();
			  			//Raffrichir le DataTable Classes
						populateClasseDataTable();
			  			    
				    }
				});
				return false;
			});	
  			
  			/*********** Modification d'une Classe ****************
  			/* 1 - Récuperer l' Id de la Classe séléctionner sur la DataTable Classes
  			/* 2 - Charger par ajax le Classe concerné
  			/* 3 - Remplir les champs de formulaire de modification avec les données du Classe concerné
  			/* 4 - Afficher le formulaire de modification
  			*****************************************************/
  			
  			$('#data_table_classes').on('click','.classe-update', function(evt){
  				//Effacer dabord le formulaire
  				$('#classe_Update_Form').trigger('reset');
  				$("#classe_Update_Form select[name=cycle]").html('');
				$("#classe_Update_Form select[name=filiere]").html('');
				$("#classe_Update_Form select[name=niveau]").html('');
				$("#classe_Update_Form select[name=anneescolaire]").html('');
				$("#classe_Update_Form input[name=label]").html('');
				
				$this = $(this);
				var id= $this.attr('classeId');
				//Ajouter les valeur initiales du Cycle, Filiere et Niveau dans les selects
				$.ajax({
					url : "../Classe/Details?id="+id,
					type: "GET",
					dataType: 'json',
					success: function(response,textStatus ,jqXHR){
						var itemCycle  	='<option class="bg-danger text-white" value="'+response.classeGenerique.cycle.id+'">'+response.classeGenerique.cycle.code+'</option>';
						var itemFiliere ='<option class="bg-danger text-white" value="'+response.classeGenerique.filiere.id+'">'+response.classeGenerique.filiere.code+'</option>';
						var itemNiveau  ='<option class="bg-danger text-white" value="'+response.classeGenerique.niveau.id+'">'+response.classeGenerique.niveau.code+'</option>';
						var itemAnneScolaire  ='<option class="bg-danger text-white" value="'+response.anneeScolaire.id+'">'+response.anneeScolaire.code+'</option>';
						$("#classe_Update_Form input[name=id]").val(response.id);
						$("#classe_Update_Form select[name=cycle]").prepend(itemCycle);
						$("#classe_Update_Form select[name=filiere]").prepend(itemFiliere);
						$("#classe_Update_Form select[name=niveau]").prepend(itemNiveau);
						$("#classe_Update_Form select[name=anneescolaire]").prepend(itemAnneScolaire);
						$("#classe_Update_Form input[name=label]").val(response.label);
						
						$('#classe_Update_Modal').modal('show');
				    },
				    error: function(response,textStatus ,jqXHR){
				    	$("#modalError .modal-body p").html("");
						$("#modalError .modal-body p").html(jqXHR.responseText);
				   		$('#modalError .modal-body p').modal('show'); 
				        },
			        complete: function (response,textStatus ,jqXHR) {
			        	//Chargement des Cycles dans Select cycle
		  				$.ajax({
							url : "../Cycle/List",
							type: "GET",
							dataType: 'json',
							contentType: "application/json; charset=UTF-8",
							success: function(response,textStatus ,jqXHR){
								for(i=0;i<response.length;i++){
									var item  ='<option value="'+response[i].id+'">'+response[i].code+'</option>';
									$("#classe_Update_Form select[name=cycle]").append(item);       
								}	
						    },
						    error: function(response,textStatus ,jqXHR){
						    	$("#modalError .modal-body p").html("");
								$("#modalError .modal-body p").html(jqXHR.responseText);
						   		$('#modalError .modal-body p').modal('show'); 
						        }
						});
		  				//Chargement des Filiers dans Select filiere
		  				$.ajax({
							url : "../Filiere/List",
							type: "GET",
							dataType: 'json',
							contentType: "application/json; charset=UTF-8",
							success: function(response,textStatus ,jqXHR){
								for(i=0;i<response.length;i++){
									var item  ='<option value="'+response[i].id+'">'+response[i].code+'</option>';
									$("#classe_Update_Form select[name=filiere]").append(item);       
								}	
						    },
						    error: function(response,textStatus ,jqXHR){
						    	$("#modalError .modal-body p").html("");
								$("#modalError .modal-body p").html(jqXHR.responseText);
						   		$('#modalError .modal-body p').modal('show'); 
						        }
						});
		  				//Chargement des Niveaux dans Select niveau
		  				$.ajax({
							url : "../Niveau/List",
							type: "GET",
							dataType: 'json',
							contentType: "application/json; charset=UTF-8",
							success: function(response,textStatus ,jqXHR){
								for(i=0;i<response.length;i++){
									var item  ='<option value="'+response[i].id+'">'+response[i].code+'</option>';
									$("#classe_Update_Form select[name=niveau]").append(item);       
								}	
						    },
						    error: function(response,textStatus ,jqXHR){
						    	$("#modalError .modal-body p").html("");
								$("#modalError .modal-body p").html(jqXHR.responseText);
						   		$('#modalError .modal-body p').modal('show'); 
						        }
						});
		  				//Chargement des années scolaires dans le Select : anneeScolaire
		 				$.ajax({
						url : "../AnneeScolaire/List",
						type: "GET",
						dataType: 'json',
						contentType: "application/json; charset=UTF-8",
						success: function(response,textStatus ,jqXHR){
							for(i=0;i<response.length;i++){
								var item  ='<option value="'+response[i].id+'">'+response[i].code+'</option>';
								$("#classe_Update_Form select[name=anneescolaire]").append(item);       
							}	
					    },
					    error: function(response,textStatus ,jqXHR){
					    	$("#modalError .modal-body p").html("");
							$("#modalError .modal-body p").html(jqXHR.responseText);
					   		$('#modalError .modal-body p').modal('show'); 
					        }
					});
			  			    
				    }
				});
			});
  			/* 5- Envoie du formulaire de modification */
  			
  			$("#classe_Update_Form").submit(function(event){ 
				var post_url = $(this).attr("action"); 			//Lire l'action (URL) du formulaire
				var request_method = $(this).attr("method"); 	//Lire la méthode du formulaire  GET/POST 
				var form_data = $(this).serialize(); 			//Encoder les données du formulaire pour envoie
				$('#classe_Update_Modal').modal('hide');		//Fermer la fenetre modal apres envoie du formulaire
				$.ajax({
					url : post_url,
					type: request_method,
					data : form_data,
					dataType: 'json',
					contentType: "application/x-www-form-urlencoded;charset=UTF-8",
					success: function(response,textStatus ,jqXHR){
						if(response.success){
							$("#modalSuccess .modal-body p").html("");
							$("#modalSuccess .modal-body p").html(response.message);
					   		$('#modalSuccess').modal('show');		
						}else{
							$("#modalError .modal-body p").html("");
							$("#modalError .modal-body p").html(response.message);
					   		$('#modalError').modal('show'); 
						};
				    },
				    error: function(response,textStatus ,jqXHR){
	                    $("#modalError .modal-body p").html("");
						$("#modalError .modal-body p").html(response);
				   		$('#modalError').modal('show'); 
				    },
				   complete: function (response,textStatus ,jqXHR) {
					 	//Effacer le DataTable Classes
						$('#data_table_classes').DataTable().rows().remove().draw();
			  			//Raffrichir le DataTable Classes
						populateClasseDataTable();
			  			    
				    }
				});
				return false;
			});
  			
  			/*********** Suppression d'une Classe ****************
  			/* 1 - Récuperer l' Id du Classe séléctionner sur la DataTable Classes
  			/* 2 - Supprimer via ajax le Classe concerné
  			*****************************************************/
  			
  			$('#data_table_classes').on('click','.classe-delete', function(evt){
				$this = $(this);
				var id= $this.attr('classeId');
				$('#modalConfirm').modal('show');
				$('#modalConfirm').on('click', '#delete', function(e) {
						$.ajax({
							url : "../Classe/Delete?id="+id,
							type: "GET",
							dataType: 'json',
							success: function(response,textStatus ,jqXHR){
								
								$("#modalSuccess .modal-body p").html("");
								$("#modalSuccess .modal-body p").html(response);
						   		$('#modalSuccess').modal('show');
						    	//setTimeout(function() { $('#modalSuccess').modal('hide'); }, 5000);
						    },
						    error: function(response,textStatus ,jqXHR){
						    
						    	$("#modalError .modal-body p").html("");
								$("#modalError .modal-body p").html(jqXHR.responseText);
						   		$('#modalError').modal('show'); 
						    },
						    complete: function (response,textStatus ,jqXHR) {
							 	//Effacer le DataTable Classes
								$('#data_table_classes').DataTable().rows().remove().draw();
					  			//Raffrichir le DataTable Classes
								populateClasseDataTable();
					  			    
						    }
						});
				  });
				return false;
			});
  			
  			/*********** Affichage des détails d'une Classe******************
  			/* 1 - Récuperer l' Id de la filière séléctionner sur la DataTable Filiers
  			/* 2 - Charger par ajax la filière concernée
  			/* 3 - Afficher les détails de la filière concernée
  			**************************************************************************/
  			
  			$('#data_table_classes').on('click','.classe-details', function(evt){
				$this = $(this);
				var id= $this.attr('classeId');
				$.ajax({
					url : "../Classe/Details?id="+id,
					type: "GET",
					dataType: 'json',
					//contentType: "application/json; charset=UTF-8",
					success: function(response,textStatus ,jqXHR){
						var codeItem ='<li class="list-group-item"><span><strong>Code 		</strong></span><span class="float-right">'+response.code+'</span></li>';
						var cycleItem ='<li class="list-group-item"><span><strong>Cycle 	</strong></span><span class="float-right">'+response.classeGenerique.cycle.code+'</span></li>';
						var filiereItem ='<li class="list-group-item"><span><strong>Filière	</strong></span><span class="float-right">'+response.classeGenerique.filiere.code+'</span></li>';
						var niveauItem ='<li class="list-group-item"><span><strong>Niveau	</strong></span><span class="float-right">'+response.classeGenerique.niveau.code+'</span></li>';
						var labelItem ='<li class="list-group-item"><span><strong>Label	</strong></span><span class="float-right">'+response.label+'</span></li>';
						
						$("#classe_Details_Modal .list-group").html("");
						$("#classe_Details_Modal .list-group").append(codeItem);
						$("#classe_Details_Modal .list-group").append(cycleItem);
						$("#classe_Details_Modal .list-group").append(filiereItem);
						$("#classe_Details_Modal .list-group").append(niveauItem);
						$("#classe_Details_Modal .list-group").append(labelItem);
						
						$('#classe_Details_Modal').modal('show');
				    },
				    error: function(response,textStatus ,jqXHR){
				    	$("#modalError .modal-body p").html("");
						$("#modalError .modal-body p").html(jqXHR.responseText);
				   		$('#modalError .modal-body p').modal('show'); 
				        }
				});
				
				return false;
			});
  	});
    </script>
   
</body>
</html>