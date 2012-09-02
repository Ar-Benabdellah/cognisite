<#include "header.ftl">

<#assign someOptions = ["As des notions","D&eacute;butant", "Confortable", "Intermedaire", "Experimente"]>
<form action="/cognicap.com/Cours/edit"  method="post" accept-charset="UTF-8" >

	<div class="container-fluid">
		<div class="row-fluid">
			<div class="span1"></div>
			<div class="span10">
				<div class="page-title">Edition d'un cours!</div>
				<div class="content-wrapper rounded">
					<br /><br /><br />
					<div class="content">
						<h3>&nbsp;&nbsp;Information du Cours</h3>
						<div class="row-fluid">
							<div class="span6">
								<div class="fields">
									<label for="courseAttribute.sigle">Sigle<sup
										class="requiredstar">*</sup>:</label> 
										<@spring.formInput "courseAttribute.sigle" />
								</div>
								<div class="fields">
										<@spring.formInput "courseAttribute.id","","hidden"/>
								</div>								
								<div class="fields">
									<label for="courseAttribute.icon">Icon<sup
										class="requiredstar">*</sup>:</label> 
										<@spring.formInput "courseAttribute.icon" />
								</div>
								<div class="fields">
									<label for="courseAttribute.title">Title<sup
										class="requiredstar">*</sup>:</label> 
										<@spring.formInput "courseAttribute.title" />
								</div>
								<div class="fields">
									<label for="courseAttribute.level">Level<sup
										class="requiredstar">*</sup>:</label> 
										<@spring.formSingleSelect "courseAttribute.level", someOptions, " "/>

								</div>								
								<div class="fields">
									<label for="courseAttribute.format">Format<sup
										class="requiredstar">*</sup>:</label> 
										<@spring.formInput "courseAttribute.format" />
								</div>								
							</div>
							<div class="span6">
								<div class="fields">
									<label for="courseAttribute.duration">Dur&eacute;e<sup
										class="requiredstar">*</sup>:</label> 
										<@spring.formInput "courseAttribute.duration" />
								</div>
								<div class="fields">
									<label for="courseAttribute.niveau">Niveau<sup
										class="requiredstar">*</sup>:</label> 
										<@spring.formInput "courseAttribute.niveau" />
								</div>
								<div class="fields">
									<label for="courseAttribute.objectif">Objectif<sup
										class="requiredstar">*</sup>:</label> 
										<@spring.formInput "courseAttribute.objectif" />
								</div>
								<div class="fields">
									<label for="courseAttribute.prerequisite">Prerequies<sup
										class="requiredstar">*</sup>:</label> 
										<@spring.formInput "courseAttribute.prerequisite" />
								</div>
								<div class="fields">
									<label for="courseAttribute.description">Description<sup
										class="requiredstar">*</sup>:</label> 
										<@spring.formTextarea "courseAttribute.description", "rows=10 cols=30"/>
										
								</div>								
							</div>
					</div>
					<div class="row-fluid">
						<div class="span12">
							<div>
								<input class="btn" style="position:relative; left:40px;bottom:10px; width:80px; height:40px;" type="submit" value="Save" />
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="span1"></div>
		</div>
	</div>
</form>
<#include "footer.ftl">