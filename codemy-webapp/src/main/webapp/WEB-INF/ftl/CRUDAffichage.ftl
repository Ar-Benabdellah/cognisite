<#include "header.ftl">
<#list courses as course>
<#if course_index %3 == 0>
<div class="row-fluid">
	<div class="span4">
			<div class="description-text enterleave">
				<div class="btn-group pull-right">
					<a href="${contextPath}/Cours" > <i class=" icon-heart"></i> </a>
					<a href="${contextPath}/Cours" > <i class="icon-comment"></i> </a>
					<a href="${contextPath}/Cours/delete?id=${course.id}" > <i class="icon-remove"></i> </a>
					<a href="${contextPath}/Cours/edit?id=${course.id}" > <i class="icon-pencil"></i> </a>
				</div>
				<p><img ALIGN=LEFT src=${course.icon} /><br/><h3>${course.title}</h3></p>
				<p>${course.description}</p>
				<a href="${contextPath}/Cours" ><img src="${contextPath}/static/img/facebookshare.jpg" style="position:absolute; right:5px;"/></a>
				<a href="${contextPath}/Cours" ><img src="${contextPath}/static/img/twittershare.png" style="position:absolute; right:22px;" /></a>
				<a href="${contextPath}/Cours" ><img src="${contextPath}/static/img/GooglePlusshare.png" style="position:absolute; right:39px;" /></a>
				<p>${course.level}</p>
				<p>${course.prerequisite}</p>
				<br/><br/><br/><br/>
			</div> <!-- description-text -->
			<div class="description-fadeout"></div>
	   	 	<button class="showhide" type="button" onClick="return false;" role="button"><span class="showhide-text">Show more</span></button>
	</div>
</#if>
<!--/span-->
<#if course_index %3 == 1>
	<div class="span4">
			<div class="description-text enterleave">
							<div class="btn-group pull-right">
					<a href="${contextPath}/Cours" > <i class=" icon-heart"></i> </a>
					<a href="${contextPath}/Cours" > <i class="icon-comment"></i> </a>
					<a href="${contextPath}/Cours/delete?id=${course.id}" > <i class="icon-remove"></i> </a>
					<a href="${contextPath}/Cours/edit?id=${course.id}" > <i class="icon-pencil"></i> </a>
				</div>
				<p><img ALIGN=LEFT src=${course.icon} /><br/><h3>${course.title}</h3></p>
				<p>${course.description}</p>
				<a href="${contextPath}/Cours" ><img src="${contextPath}/static/img/facebookshare.jpg" style="position:absolute; right:5px;"/></a>
				<a href="${contextPath}/Cours" ><img src="${contextPath}/static/img/twittershare.png" style="position:absolute; right:22px;" /></a>
				<a href="${contextPath}/Cours" ><img src="${contextPath}/static/img/GooglePlusshare.png" style="position:absolute; right:39px;" /></a>
				<p>${course.level}</p>
				<p>${course.prerequisite}</p>
				<br/><br/><br/><br/>
				</div> <!-- description-text -->
			<div class="description-fadeout"></div>
	   	 	<button class="showhide" type="button" onClick="return false;" role="button"><span class="showhide-text">Show more</span></button>
	</div>
</#if>
<!--/span-->
<#if course_index %3 == 2>
	<div class="span4">
			<div class="description-text enterleave">				
				<div class="btn-group pull-right">
					<a href="${contextPath}/Cours" > <i class=" icon-heart"></i> </a>
					<a href="${contextPath}/Cours" > <i class="icon-comment"></i> </a>
					<a href="${contextPath}/Cours/delete?id=${course.id}" > <i class="icon-remove"></i> </a>
					<a href="${contextPath}/Cours/edit?id=${course.id}" > <i class="icon-pencil"></i> </a>
				</div>
				<p><img ALIGN=LEFT src=${course.icon} /><br/><h3>${course.title}</h3></p>
				<p>${course.description}</p>
				<a href="${contextPath}/Cours" ><img src="${contextPath}/static/img/facebookshare.jpg" style="position:absolute; right:5px;"/></a>
				<a href="${contextPath}/Cours" ><img src="${contextPath}/static/img/twittershare.png" style="position:absolute; right:22px;" /></a>
				<a href="${contextPath}/Cours" ><img src="${contextPath}/static/img/GooglePlusshare.png" style="position:absolute; right:39px;" /></a>
				<p>${course.level}</p>
				<p>${course.prerequisite}</p>
				<br/><br/><br/><br/>
				</div><!-- description-text -->
			
			<div class="description-fadeout"></div>
	   	 	<button class="showhide" type="button" onClick="return false;" role="button"><span class="showhide-text">Show more</span></button>
		</div>
</div>
</#if>
</#list>
<input type="hidden" id="showMoreHash" value="${page!}">
<#include "footer.ftl">
<script type="text/javascript" language="javascript">
    $(document).ready(function() {
    $(".enterleave").children('div').children('a').each(function(){
      		$(this).hide();
      	});
      $(".enterleave").mouseenter(function(){
      	$(this).children('div').children('a').each(function(){
      		$(this).show();
      	});
   	 }).mouseleave(function(){
   	 	$(this).children('div').children('a').each(function(){
      		$(this).hide();
      	});
   	 });
     $('.span4 .showhide').click(function() {
			var showHideButton = $(this), description = showHideButton.parent(), showHideText = showHideButton.children('span');
				
				description.toggleClass('expanded');
				showHideText.text(showHideText.text() == 'Show more' ? 'Show less' : 'Show more');			
		});
    });
   

</script>