<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html lang="en" data-craftercms-preview="${modePreview?c}">
<head>
	<#include "/templates/web/fragments/head.ftl">
	<@crafter.head/>
</head>
<body class="the-mag">
<@crafter.body_top/>

<!-- Wrapper -->
<div id="wrapper">
	<!-- Main -->
	<div id="main">

			<!-- Header -->
			<@renderComponent component = contentModel.header_o.item />

			<!-- Content -->
			<section>
        <div class="the-mag-detail__header">
          <div class="the-mag-cat" $field="categories_o" $index=1>${contentModel.categories_o!""}
          </div>        
          <@crafter.h1 $field="subject_t">
            ${contentModel.subject_t!""}
          </@crafter.h1>
		</div>

		<div class="inner the-mag-detail__content">
            <@crafter.div $field="pageSections_o">
        	<#if contentModel.pageSections_o.item??>
            <#list contentModel.pageSections_o.item as section>
              <#assign index = section?index />
              <@crafter.div $field="pageSections_o" $index=index>
                <@renderComponent component=section />
              </@crafter.div>
            </#list>
          </#if>
        </@crafter.div>
        </div>
        
			</section>
		</div>
	</div>

	<#assign articleCategories = contentModel.queryValues("//categories_o/item/key")/>
	<#assign articlePath = contentModel.storeUrl />
	<#assign additionalModel = {"articleCategories": articleCategories, "articlePath": articlePath }/>

	<!-- Left Rail -->
	<@renderComponent component = contentModel.left_rail_o.item additionalModel = additionalModel />

</div>

<#include "/templates/web/fragments/scripts.ftl">

<@crafter.body_bottom/>
</body>
</html>
