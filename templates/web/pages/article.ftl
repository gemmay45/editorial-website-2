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
        
          <@crafter.div class="the-mag-cat" $field="categories_s">
            ${contentModel.categories_s!""}
          </@crafter.div>
          <@crafter.h1 $field="subject_t">
            ${contentModel.subject_t!""}
          </@crafter.h1>
		</div>

		<div class="the-mag-detail__content">
            <@crafter.div $field="pageSections_o">
            	<#if contentModel.pageSections_o.item??>
                    <#list contentModel.pageSections_o.item as section>
                      <#assign index = section?index />
                      <#if index == 0>
                          <@crafter.div $field="pageSections_o" $index=index>
                            <@renderComponent component=section />
                          </@crafter.div>
                      <#else>
                      </#if>
                    </#list>
                </#if>
            </@crafter.div>
        </div>

		<div class="inner the-mag-detail__content the-mag-detail__main-content">
            <@crafter.div $field="pageSections_o">
            	<#if contentModel.pageSections_o.item??>
                    <#list contentModel.pageSections_o.item as section>
                      <#assign index = section?index />
                      <#if index == 0>
                      <#else>
                          <@crafter.div $field="pageSections_o" $index=index>
                            <@renderComponent component=section />
                          </@crafter.div>
                      </#if>
                    </#list>
                </#if>
            </@crafter.div>
        
            <ul class="the-mag-detail__content__info">
                <#setting time_zone = siteConfig.getString("timeZone")>
                <li><i aria-hidden="true" class="fas fa-clock"> </i>${contentModel.date_dt?date?string['dd MMM yyyy']}</li>
            </ul>
                
            <p class="the-mag-detail__content__tags">
                <i aria-hidden="true" class="fas fa-tag"></i>
                          <@crafter.a href="javascript:searchByTag('tag:${contentModel.categories_s}')">
            ${contentModel.categories_s!""}
          </@crafter.a>

                <a href="javascript:searchByTag('tag:${contentModel.categories_s}')">${contentModel.categories_s}</a>
            </p>
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
