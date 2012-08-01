<#assign security=JspTaglibs["http://www.springframework.org/security/tags"] />
<#assign contextPath=springMacroRequestContext.getContextPath()>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title><@spring.message "layout.welcome"/></title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="author" content="Cognicap Team">
<meta
    name="Description"
    content="Apprendre le JAVA facilement et rapidement. Cognicap vous permets de booster votre carri&egrave;re. Essayez-nous!" />
<meta
    name="keywords"
    content="Rabat, Maroc, Casablanca, Fromation Java, Spring, Hibernate, Linux, Struts, PIC, Sonar, Hudson, Certification, SCJP, SJWCD, web site management, wcms, open source, java, java cms" />
<meta name="viewport" content="width=device-width">
<meta name="creator" content="Cognicap Team" />
<meta name="format" content="text/html" />
<meta http-equiv="cache-control" content="no-cache" />
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="expires" content="0" />
<meta name="google-site-verification" content="aYbWg3grOwIlNwiznAS3waq2tCkuA4JuGZ39T9ShVYU" />

<!-- Le HTML5 shim, for IE6-8 support of HTML elements -->
<!--[if lt IE 9]>
      <script src="${contextPath}/static/3rdparty/bootstrap/html5.js"></script>
    <![endif]-->

<!-- Le styles -->
<link rel="stylesheet" href="${contextPath}/static/css/codemy.css" />
<link href="${contextPath}/static/css/bootstrap.min.css" rel="stylesheet">
<link href="${contextPath}/static/css/bootstrap-responsive.css" rel="stylesheet">
<link href="${contextPath}/static/css/docs.css" rel="stylesheet">
</head>

<body class="preview" data-offset="50" data-target=".subnav"
	data-spy="scroll">
	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container-fluid">
				<a class="btn btn-navbar" data-toggle="collapse"
					data-target=".nav-collapse"> <span class="icon-bar"></span> <span
					class="icon-bar"></span> <span class="icon-bar"></span>
				</a> 
				<a class="brand" href="#">Cognicap</a>
				<div class="btn-group pull-right">
					<@security.authorize ifNotGranted="ROLE_USER">
						<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
							<@spring.message "layout.getin"/>
						</a>
						<ul class="dropdown-menu">
							<li><a href="${contextPath}/login/"><@spring.message "layout.login"/></a></li>
							<li><a href="${contextPath}/Registration/"><@spring.message "layout.register"/></a></li>
						</ul>						
					</@security.authorize>
					<@security.authorize ifAllGranted="ROLE_USER">	
						<a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
								<i class="icon-user"></i> ${userContext.username} <span class="caret"></span>
						</a>
						<ul class="dropdown-menu">
							<li><a href="#">Profile</a></li>
							<li class="divider"></li>
							<li><a href="#"><a href="${contextPath}/logout"><@spring.message "layout.logout"/></a></a></li>
						</ul>
					</@security.authorize>
				</div>
				<div class="nav-collapse">
					<ul class="nav">						
						<li class="active"><a href="Trainings"><@spring.message "nav-menu.alltraining"/></a></li>
						<li class="active"><a href="NewTraining"><@spring.message "nav-menu.createtraining"/></a></li>
						<li class="active"><a href="NewTraining"><@spring.message "nav-menu.posttraining"/></a></li>
						<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown"><@spring.message "nav-menu.about"/><b class="caret"></b></a>
							<ul class="dropdown-menu">
								<li><a href="About#values">Nos Valeurs</a></li>
								<li><a href="About#mission">Notre mission</a></li>
								<li><a href="Contact">Contactez-nous!</a></li>
								<li class="divider"></li>
								<li><a href="Ourstudio">Comment venir?</a></li>
							</ul>
						</li>
						<form class="navbar-search pull-left" action="">
							<input class="search-query span2" type="text" placeholder="<@spring.message "nav-menu.searchfieldlabel"/>">
						</form>						
					</ul>
				</div>
				<!--/.nav-collapse -->
			</div>
		</div>
	</div>
	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span4">
				<img src="${contextPath}/static/img/logo.gif" alt="Cognicap"/>
			</div>
			<div class="span8">
				<header class="jumbotron subhead" id="overview">
					<h2><@spring.message "layout.headline"/></h2>
					<p class="lead"><@spring.message "layout.shortline"/></p>			
				</header>
			</div>
		</div>
		<div class="row-fluid">
			<div class="span12"></div>
		</div>
		<div class="row-fluid">
			<div class="span9">
			    <div id="navWrap">					
					<div id="slider" class="hero-unit">
					    <div class="slides"><!-- Début premier slide -->
					        <div class="features">
					            <div class="mainCopy">
					                <h3>Des formations et pr&eacute;paration &agrave; la certification
					                    JAVA par des Experts pour booster ta carri&egrave;re!</h3>
					                <p>Cognicap rends l'apprentissage du JAVA facile et accessible &agrave;
					                    tous. Nous sommes des experts en JAVA et Technologies Web, tu es
					                    gagnant sur toute la ligne.
					                    <br/><br/>Nous te pr&eacute;parons pour passer la certification
					                    JAVA 5!</p>
					                <p>Click sur les boutons 2 et 3 pour Booster ta
					                    carri&egrave;re!</p>
					            </div>
					            <div class="clientPics"><img src="${contextPath}/static/img/lemondeestavous.jpg" alt="Le monde est &agrave; vous"/></div>
					        </div>
					        <!-- Début slide 2 -->
					        <div class="features">
					            <div class="mainCopy">
					                <h3>Chez Cognicap les formations sont donn&eacute;es par des
					                    Experts JAVA certifi&eacute;!</h3>
					                <p>Choisis ta formation parmis la <a href="formations.ftl">liste des formations</a> disponibles et
					                    booste ta carri&egrave;re! <br/>					
					                </p>
					                <div class="trialButton">
					                    <a href="inscription.ftl" title="Inscrit toi gratuitement">
					                        <img src="${contextPath}/static/img/jeMinscrit.png" alt="Inscrit toi gratuitement"/></a></div>
					            </div>
					            <div class="clientPics">
					                <img src="${contextPath}/static/img/booste-ta-carriere-final.jpg"
					                     alt="Booster!"/></div>
					        </div>
					        <!-- Début slide 3 -->
					        <div class="features">
					            <div class="mainCopy">
					                <h3>Les horaires des formations sont flexibles. Consulte le
					                    calendrier et choisis l'horaire qui te convient!</h3>
					                <p>Les formateurs Cognicap vous booste pour que chaque formation soit une
					                    bonne pr&eacute;paration &agrave; la certification.</p>
					                <div class="trialButton"><a href="inscription.ftl"
					                                            title="Inscrit toi gratuitement"><img src="${contextPath}/static/img/jeMinscrit.png"
					                                                          alt="Inscrit toi gratuitement"/></a></div>
					            </div>
					            <div class="clientPics"><img src="${contextPath}/static/img/apprenezviteetbien2.jpg"
					                                         alt="S'inscrire"/></div>
					        </div>
					    </div>
					</div>
					<div id="sliderNav"><span class="slide1"><a
					            href="javascript:" title="D&eacute;couvrez le JAVA"
					            class="slide1 active" rel="1"></a></span> <span class="slide2"><a
					            href="javascript:" title="Expert Formation JAVA The Cognicap Way"
					            class="slide2" rel="2"></a></span> <span class="slide3"><a
					            href="javascript:" title="Formation donnant des r&eacute;sultats!"
					            class="slide3" rel="3"></a></span> <span class="slide4"></span> <span
					        class="slide5"></span> <span class="slide6"></span></div>
					</div>
				</div>	
			<div class="span3">
				<div class="well sidebar-nav">
					<ul class="nav nav-list">
						<li class="nav-header">Active training!</li>
						<li class="active"><a href="#">Java Preparation certification, Rabat</a></li>
						<li><a href="#">JEE, Web component developer, Rabat</a></li>
						<li><a href="#">Android, Rabat</a></li>
						<li><a href="#">HTML5, Tanger</a></li>
						<li><a href="#">More active training...</a></li>
						<li class="nav-header">Pending groups!</li>
						<li><a href="#">Link</a>Weblogic, Casablanca</li>
						<li><a href="#">Link</a>UML, Rabat</li>
						<li><a href="#">Link</a>Scala, Casablanca</li>
						<li><a href="#">More pending groups...</a></li>
						<li class="nav-header">Latest Tutorials...</li>
						<li><a href="#">Spring MVC</a></li>
						<li><a href="#">Spring Webflow JSF Integration</a></li>
						<li><a href="#">HTML5</a></li>
						<li><a href="#">JQuery</a></li>
						<li><a href="#">More tutorials...</a></li>
					</ul>
				</div>
			</div>
		</div>
		<div class="row-fluid">
			<!-- Masthead ================================================== -->
			<h1>Boost your self, join a training</h1>
			<p class="lead">Search for training, enrol, Meet new people, share</p>
			<div class="subnav">
				<ul class="nav nav-pills">
					<li><a href="#typography">Create your training</a></li>
					<li><a href="#navbar">Post a training request</a></li>
					<li><a href="#buttons">Start a group training, look for a trainer and get discount</a></li>
					<li><a href="#forms">Search for tutorials</a></li>
					<li><a href="#miscellaneous">Be social! Post a tutorial!</a></li>
				</ul>
			</div>	
		</div>
	</div>				
	<div class="container-fluid">
		<section id="global">
			<div class="row-fluid">
				<div class="span12">
					<div class="hero-unit">
						<p>
							<a class="btn btn-primary btn-large">Learn more &raquo;</a>
						</p>
					</div>
					<div class="row-fluid">
						<div class="span4">
							<h2>Heading</h2>
							<p>Donec id elit non mi porta gravida at eget metus. Fusce
								dapibus, tellus ac cursus commodo, tortor mauris condimentum
								nibh, ut fermentum massa justo sit amet risus. Etiam porta sem
								malesuada magna mollis euismod. Donec sed odio dui.</p>
							<p>
								<a class="btn" href="#">View details &raquo;</a>
							</p>
						</div>
						<!--/span-->
						<div class="span4">
							<h2>Heading</h2>
							<p>Donec id elit non mi porta gravida at eget metus. Fusce
								dapibus, tellus ac cursus commodo, tortor mauris condimentum
								nibh, ut fermentum massa justo sit amet risus. Etiam porta sem
								malesuada magna mollis euismod. Donec sed odio dui.</p>
							<p>
								<a class="btn" href="#">View details &raquo;</a>
							</p>
						</div>
						<!--/span-->
						<div class="span4">
							<h2>Heading</h2>
							<p>Donec id elit non mi porta gravida at eget metus. Fusce
								dapibus, tellus ac cursus commodo, tortor mauris condimentum
								nibh, ut fermentum massa justo sit amet risus. Etiam porta sem
								malesuada magna mollis euismod. Donec sed odio dui.</p>
							<p>
								<a class="btn" href="#">View details &raquo;</a>
							</p>
						</div>
						<!--/span-->
					</div>
					<!--/row-->
					<div class="row-fluid">
						<div class="span4">
							<h2>Heading</h2>
							<p>Donec id elit non mi porta gravida at eget metus. Fusce
								dapibus, tellus ac cursus commodo, tortor mauris condimentum
								nibh, ut fermentum massa justo sit amet risus. Etiam porta sem
								malesuada magna mollis euismod. Donec sed odio dui.</p>
							<p>
								<a class="btn" href="#">View details &raquo;</a>
							</p>
						</div>
						<!--/span-->
						<div class="span4">
							<h2>Heading</h2>
							<p>Donec id elit non mi porta gravida at eget metus. Fusce
								dapibus, tellus ac cursus commodo, tortor mauris condimentum
								nibh, ut fermentum massa justo sit amet risus. Etiam porta sem
								malesuada magna mollis euismod. Donec sed odio dui.</p>
							<p>
								<a class="btn" href="#">View details &raquo;</a>
							</p>
						</div>
						<!--/span-->
						<div class="span4">
							<h2>Heading</h2>
							<p>Donec id elit non mi porta gravida at eget metus. Fusce
								dapibus, tellus ac cursus commodo, tortor mauris condimentum
								nibh, ut fermentum massa justo sit amet risus. Etiam porta sem
								malesuada magna mollis euismod. Donec sed odio dui.</p>
							<p>
								<a class="btn" href="#">View details &raquo;</a>
							</p>
						</div>
						<!--/span-->
					</div>
					<!--/row-->
				</div>
				<!--/span-->
			</div>
			<!--/row-->
		</section>
		<hr>
		<footer>
			<p>&copy; Company 2012</p>
		</footer>
		<!-- Typography
================================================== -->
		<section id="typography">
			<div class="page-header">
				<h1>Typography</h1>
			</div>

			<!-- Headings & Paragraph Copy -->
			<div class="row">

				<div class="span4">
					<div class="well">
						<h1>h1. Heading 1</h1>
						<h2>h2. Heading 2</h2>
						<h3>h3. Heading 3</h3>
						<h4>h4. Heading 4</h4>
						<h5>h5. Heading 5</h5>
						<h6>h6. Heading 6</h6>
					</div>
				</div>

				<div class="span4">
					<h3>Example body text</h3>
					<p>Nullam quis risus eget urna mollis ornare vel eu leo. Cum
						sociis natoque penatibus et magnis dis parturient montes, nascetur
						ridiculus mus. Nullam id dolor id nibh ultricies vehicula ut id
						elit.</p>
					<p>Vivamus sagittis lacus vel augue laoreet rutrum faucibus
						dolor auctor. Duis mollis, est non commodo luctus, nisi erat
						porttitor ligula, eget lacinia odio sem nec elit. Donec sed odio
						dui.</p>
				</div>

				<div class="span4">
					<h3>Example addresses</h3>
					<address>
						<strong>Cognicap.</strong><br> 44, Aguelmane Sidi Ali, Br. Suite. 14<br>
						Rabat, Morocco 10090<br> <abbr title="Phone">P:</abbr>
						(212) 537 
					</address>
					<address>
						<strong>Cognicap Team</strong><br> <a href="mailto:#">contact at cognicap.com</a>
					</address>
				</div>
			</div>
		</section>

		<!-- Navbar
================================================== -->
		<section id="navbar">
			<div class="page-header">
				<h1>Navbar</h1>
			</div>
			<div class="navbar">
				<div class="navbar-inner">
					<div class="container" style="width: auto;">
						<a class="btn btn-navbar" data-toggle="collapse"
							data-target=".nav-collapse"> <span class="icon-bar"></span> <span
							class="icon-bar"></span> <span class="icon-bar"></span>
						</a> <a class="brand" href="#">Project name</a>
						<div class="nav-collapse">
							<ul class="nav">
								<li class="active"><a href="#">Home</a></li>
								<li><a href="#">Link</a></li>
								<li><a href="#">Link</a></li>
								<li><a href="#">Link</a></li>
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown">Dropdown <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="#">Action</a></li>
										<li><a href="#">Another action</a></li>
										<li><a href="#">Something else here</a></li>
										<li class="divider"></li>
										<li><a href="#">Separated link</a></li>
									</ul></li>
							</ul>
							<form class="navbar-search pull-left" action="">
								<input type="text" class="search-query span2"
									placeholder="Search">
							</form>
							<ul class="nav pull-right">
								<li><a href="#">Link</a></li>
								<li class="divider-vertical"></li>
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown">Dropdown <b class="caret"></b></a>
									<ul class="dropdown-menu">
										<li><a href="#">Action</a></li>
										<li><a href="#">Another action</a></li>
										<li><a href="#">Something else here</a></li>
										<li class="divider"></li>
										<li><a href="#">Separated link</a></li>
									</ul></li>
							</ul>
						</div>
						<!-- /.nav-collapse -->
					</div>
				</div>
				<!-- /navbar-inner -->
			</div>
			<!-- /navbar -->

		</section>

		<!-- Buttons
================================================== -->
		<section id="buttons">
			<div class="page-header">
				<h1>Buttons</h1>
			</div>
			<table class="table table-bordered table-striped">
				<thead>
					<tr>
						<th>Button</th>
						<th>Large Button</th>
						<th>Small Button</th>
						<th>Disabled Button</th>
						<th>Button with Icon</th>
						<th>Split Button</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><a class="btn" href="#">Default</a></td>
						<td><a class="btn btn-large" href="#">Default</a></td>
						<td><a class="btn btn-small" href="#">Default</a></td>
						<td><a class="btn disabled" href="#">Default</a></td>
						<td><a class="btn" href="#"><i class="icon-cog"></i>
								Default</a></td>
						<td>
							<div class="btn-group">
								<a class="btn" href="#">Default</a> <a
									class="btn dropdown-toggle" data-toggle="dropdown" href="#"><span
									class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="#">Action</a></li>
									<li><a href="#">Another action</a></li>
									<li><a href="#">Something else here</a></li>
									<li class="divider"></li>
									<li><a href="#">Separated link</a></li>
								</ul>
							</div>
							<!-- /btn-group -->
						</td>
					</tr>
					<tr>
						<td><a class="btn btn-primary" href="#">Primary</a></td>
						<td><a class="btn btn-primary btn-large" href="#">Primary</a></td>
						<td><a class="btn btn-primary btn-small" href="#">Primary</a></td>
						<td><a class="btn btn-primary disabled" href="#">Primary</a></td>
						<td><a class="btn btn-primary" href="#"><i
								class="icon-shopping-cart icon-white"></i> Primary</a></td>
						<td>
							<div class="btn-group">
								<a class="btn btn-primary" href="#">Primary</a> <a
									class="btn btn-primary dropdown-toggle" data-toggle="dropdown"
									href="#"><span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="#">Action</a></li>
									<li><a href="#">Another action</a></li>
									<li><a href="#">Something else here</a></li>
									<li class="divider"></li>
									<li><a href="#">Separated link</a></li>
								</ul>
							</div>
							<!-- /btn-group -->
						</td>
					</tr>
					<tr>
						<td><a class="btn btn-info" href="#">Info</a></td>
						<td><a class="btn btn-info btn-large" href="#">Info</a></td>
						<td><a class="btn btn-info btn-small" href="#">Info</a></td>
						<td><a class="btn btn-info disabled" href="#">Info</a></td>
						<td><a class="btn btn-info" href="#"><i
								class="icon-exclamation-sign icon-white"></i> Info</a></td>
						<td>
							<div class="btn-group">
								<a class="btn btn-info" href="#">Info</a> <a
									class="btn btn-info dropdown-toggle" data-toggle="dropdown"
									href="#"><span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="#">Action</a></li>
									<li><a href="#">Another action</a></li>
									<li><a href="#">Something else here</a></li>
									<li class="divider"></li>
									<li><a href="#">Separated link</a></li>
								</ul>
							</div>
							<!-- /btn-group -->
						</td>
					</tr>
					<tr>
						<td><a class="btn btn-success" href="#">Success</a></td>
						<td><a class="btn btn-success btn-large" href="#">Success</a></td>
						<td><a class="btn btn-success btn-small" href="#">Success</a></td>
						<td><a class="btn btn-success disabled" href="#">Success</a></td>
						<td><a class="btn btn-success" href="#"><i
								class="icon-ok icon-white"></i> Success</a></td>
						<td>
							<div class="btn-group">
								<a class="btn btn-success" href="#">Success</a> <a
									class="btn btn-success dropdown-toggle" data-toggle="dropdown"
									href="#"><span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="#">Action</a></li>
									<li><a href="#">Another action</a></li>
									<li><a href="#">Something else here</a></li>
									<li class="divider"></li>
									<li><a href="#">Separated link</a></li>
								</ul>
							</div>
							<!-- /btn-group -->
						</td>
					</tr>
					<tr>
						<td><a class="btn btn-warning" href="#">Warning</a></td>
						<td><a class="btn btn-warning btn-large" href="#">Warning</a></td>
						<td><a class="btn btn-warning btn-small" href="#">Warning</a></td>
						<td><a class="btn btn-warning disabled" href="#">Warning</a></td>
						<td><a class="btn btn-warning" href="#"><i
								class="icon-warning-sign icon-white"></i> Warning</a></td>
						<td>
							<div class="btn-group">
								<a class="btn btn-warning" href="#">Warning</a> <a
									class="btn btn-warning dropdown-toggle" data-toggle="dropdown"
									href="#"><span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="#">Action</a></li>
									<li><a href="#">Another action</a></li>
									<li><a href="#">Something else here</a></li>
									<li class="divider"></li>
									<li><a href="#">Separated link</a></li>
								</ul>
							</div>
							<!-- /btn-group -->
						</td>
					</tr>
					<tr>
						<td><a class="btn btn-danger" href="#">Danger</a></td>
						<td><a class="btn btn-danger btn-large" href="#">Danger</a></td>
						<td><a class="btn btn-danger btn-small" href="#">Danger</a></td>
						<td><a class="btn btn-danger disabled" href="#">Danger</a></td>
						<td><a class="btn btn-danger" href="#"><i
								class="icon-remove icon-white"></i> Danger</a></td>
						<td>
							<div class="btn-group">
								<a class="btn btn-danger" href="#">Danger</a> <a
									class="btn btn-danger dropdown-toggle" data-toggle="dropdown"
									href="#"><span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="#">Action</a></li>
									<li><a href="#">Another action</a></li>
									<li><a href="#">Something else here</a></li>
									<li class="divider"></li>
									<li><a href="#">Separated link</a></li>
								</ul>
							</div>
							<!-- /btn-group -->
						</td>
					</tr>
					<tr>
						<td><a class="btn btn-inverse" href="#">Inverse</a></td>
						<td><a class="btn btn-inverse btn-large" href="#">Inverse</a></td>
						<td><a class="btn btn-inverse btn-small" href="#">Inverse</a></td>
						<td><a class="btn btn-inverse disabled" href="#">Inverse</a></td>
						<td><a class="btn btn-inverse" href="#"><i
								class="icon-random icon-white"></i> Inverse</a></td>
						<td>
							<div class="btn-group">
								<a class="btn btn-inverse" href="#">Inverse</a> <a
									class="btn btn-inverse dropdown-toggle" data-toggle="dropdown"
									href="#"><span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li><a href="#">Action</a></li>
									<li><a href="#">Another action</a></li>
									<li><a href="#">Something else here</a></li>
									<li class="divider"></li>
									<li><a href="#">Separated link</a></li>
								</ul>
							</div>
							<!-- /btn-group -->
						</td>
					</tr>
				</tbody>
			</table>

		</section>


		<!-- Forms
================================================== -->
		<section id="forms">
			<div class="page-header">
				<h1>Forms</h1>
			</div>

			<div class="row">
				<div class="span7 offset1">

					<form class="well form-search">
						<input type="text" class="input-medium search-query">
						<button type="submit" class="btn">Search</button>
					</form>

					<form class="well form-search">
						<input type="text" class="input-small" placeholder="Email">
						<input type="password" class="input-small" placeholder="Password">
						<button type="submit" class="btn">Go</button>
					</form>


					<form class="form-horizontal well">
						<fieldset>
							<legend>Controls Bootstrap supports</legend>
							<div class="control-group">
								<label class="control-label" for="input01">Text input</label>
								<div class="controls">
									<input type="text" class="input-xlarge" id="input01">
									<p class="help-block">In addition to freeform text, any
										HTML5 text-based input appears like so.</p>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="optionsCheckbox">Checkbox</label>
								<div class="controls">
									<label class="checkbox"> <input type="checkbox"
										id="optionsCheckbox" value="option1"> Option one is
										this and that&mdash;be sure to include why it's great
									</label>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="select01">Select list</label>
								<div class="controls">
									<select id="select01">
										<option>something</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
									</select>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="multiSelect">Multicon-select</label>
								<div class="controls">
									<select multiple="multiple" id="multiSelect">
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
									</select>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="fileInput">File input</label>
								<div class="controls">
									<input class="input-file" id="fileInput" type="file">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="textarea">Textarea</label>
								<div class="controls">
									<textarea class="input-xlarge" id="textarea" rows="3"></textarea>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="focusedInput">Focused
									input</label>
								<div class="controls">
									<input class="input-xlarge focused" id="focusedInput"
										type="text" value="This is focused…">
								</div>
							</div>
							<div class="control-group">
								<label class="control-label">Uneditable input</label>
								<div class="controls">
									<span class="input-xlarge uneditable-input">Some value
										here</span>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="disabledInput">Disabled
									input</label>
								<div class="controls">
									<input class="input-xlarge disabled" id="disabledInput"
										type="text" placeholder="Disabled input here…" disabled>
								</div>
							</div>
							<div class="control-group">
								<label class="control-label" for="optionsCheckbox2">Disabled
									checkbox</label>
								<div class="controls">
									<label class="checkbox"> <input type="checkbox"
										id="optionsCheckbox2" value="option1" disabled> This
										is a disabled checkbox
									</label>
								</div>
							</div>
							<div class="control-group warning">
								<label class="control-label" for="inputWarning">Input
									with warning</label>
								<div class="controls">
									<input type="text" id="inputWarning"> <span
										class="help-inline">Something may have gone wrong</span>
								</div>
							</div>
							<div class="control-group error">
								<label class="control-label" for="inputError">Input with
									error</label>
								<div class="controls">
									<input type="text" id="inputError"> <span
										class="help-inline">Please correct the error</span>
								</div>
							</div>
							<div class="control-group success">
								<label class="control-label" for="inputSuccess">Input
									with success</label>
								<div class="controls">
									<input type="text" id="inputSuccess"> <span
										class="help-inline">Woohoo!</span>
								</div>
							</div>
							<div class="control-group success">
								<label class="control-label" for="selectError">Select
									with success</label>
								<div class="controls">
									<select id="selectError">
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
									</select> <span class="help-inline">Woohoo!</span>
								</div>
							</div>
							<div class="form-actions">
								<button type="submit" class="btn btn-primary">Save
									changes</button>
								<button type="reset" class="btn">Cancel</button>
							</div>
						</fieldset>
					</form>
				</div>
			</div>

		</section>


		<!-- Miscellaneous
================================================== -->
		<section id="miscellaneous">
			<div class="page-header">
				<h1>Miscellaneous</h1>
			</div>

			<div class="row">
				<div class="span5">

					<h3 id="breadcrumbs">Breadcrumbs</h3>
					<ul class="breadcrumb">
						<li class="active">Home</li>
					</ul>
					<ul class="breadcrumb">
						<li><a href="#">Home</a> <span class="divider">/</span></li>
						<li class="active">Library</li>
					</ul>
					<ul class="breadcrumb">
						<li><a href="#">Home</a> <span class="divider">/</span></li>
						<li><a href="#">Library</a> <span class="divider">/</span></li>
						<li class="active">Data</li>
					</ul>
				</div>
				<div class="span6 offset1">
					<h3 id="pagination">Pagination</h3>
					<div class="pagination">
						<ul>
							<li class="disabled"><a href="#">&laquo;</a></li>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">&raquo;</a></li>
						</ul>
					</div>
					<div class="pagination">
						<ul>
							<li><a href="#">&larr;</a></li>
							<li class="active"><a href="#">10</a></li>
							<li class="disabled"><a href="#">...</a></li>
							<li><a href="#">20</a></li>
							<li><a href="#">&rarr;</a></li>
						</ul>
					</div>
					<div class="pagination pagination-centered">
						<ul>
							<li class="active"><a href="#">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
						</ul>
					</div>
				</div>
			</div>



			<!-- Labels
================================================== -->

			<div class="row">
				<div class="span12">

					<h3 id="labels">Labels</h3>


					<span class="label">Default</span> <span
						class="label label-success">Success</span> <span
						class="label label-warning">Warning</span> <span
						class="label label-important">Important</span> <span
						class="label label-info">Info</span>

				</div>
			</div>
			<br />

			<!-- Progress bars
================================================== -->


			<h3 id="progressbars">Progress bars</h3>

			<div class="row">
				<div class="span4">
					<div class="progress">
						<div class="bar" style="width: 60%;"></div>
					</div>
				</div>
				<div class="span4">
					<div class="progress progress-info progress-striped">
						<div class="bar" style="width: 20%;"></div>
					</div>
				</div>
				<div class="span4">
					<div class="progress progress-danger progress-striped active">
						<div class="bar" style="width: 45%"></div>
					</div>
				</div>
			</div>
			<br />


			<!-- Alerts & Messages
================================================== -->


			<h3 id="alerts">Alerts</h3>

			<div class="row">
				<div class="span12">
					<div class="alert alert-block">
						<a class="close">&times;</a>
						<h4 class="alert-heading">Alert block</h4>
						<p>Best check yo self, you're not looking too good. Nulla
							vitae elit libero, a pharetra augue. Praesent commodo cursus
							magna, vel scelerisque nisl consectetur et.</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="span4">
					<div class="alert alert-error">
						<a class="close">&times;</a> <strong>Error</strong> Change a few
						things up and try submitting again.
					</div>
				</div>
				<div class="span4">
					<div class="alert alert-success">
						<a class="close">&times;</a> <strong>Success</strong> You
						successfully read this important alert message.
					</div>
				</div>
				<div class="span4">
					<div class="alert alert-info">
						<a class="close">&times;</a> <strong>Information</strong> This
						alert needs your attention, but it's not super important.
					</div>
				</div>
			</div>
		</section>

		<br>
		<br>
		<br>
		<br>

		<!-- Footer
      ================================================== -->
		<footer class="footer">
			<p class="pull-right">
				<a href="#">Back to top</a>
			</p>
		</footer>

	</div>
	<!--/.fluid-container-->

	<!-- Le javascript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<script src="${contextPath}/static/3rdparty/jquery-1.7.2.min.js"></script>
	<script src="${contextPath}/static/3rdparty/bootstrap.min.js"></script>
	<script src="${contextPath}/static/3rdparty/application.js"></script>
	<script src="${contextPath}/static/js/codemy.js"></script>

</body>
</html>
