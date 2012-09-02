<#include "header.ftl">
<form action="/cognicap.com/Cours/add" method="post" accept-charset="UTF-8">
	<div>
		<label for = "code">Sigle</label>
		<@spring.formInput "courseAttribute.sigle" />
	</div>
	<div>
        <label for = "code">Icon</label>
        <@spring.formInput "courseAttribute.icon" />
    </div>
    <div>
    	<label for = "code">Title</label>
    	<@spring.formInput "courseAttribute.title" />
    </div>
    <div>
    	<label for = "code">Niveau</label>
    	<@spring.formInput "courseAttribute.level" />
    </div>
    <div>
	    <label for = "code">Format</label>
	    <@spring.formInput "courseAttribute.format" />
    </div>
    <div>
	    <label for = "code">Durée</label>
	    <@spring.formInput "courseAttribute.duration" />
    </div>
    <div>
	    <label for = "code">Niveau</label>
	    <@spring.formInput "courseAttribute.niveau" />
    </div>
    <div>
	    <label for = "code">Objectif</label>
	    <@spring.formInput "courseAttribute.objectif" />
    </div>	
    <div>
	    <label for = "code">Prerequies</label>
	    <@spring.formInput "courseAttribute.prerequisite" />
    </div>
    <div>
	    <label for = "code">Description</label>
	    <@spring.formInput "courseAttribute.description" />
    </div>
    <input type="submit" value="Save" />
</form>
<#include "footer.ftl">