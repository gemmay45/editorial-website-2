<#import "/templates/system/common/crafter.ftl" as crafter />

<!DOCTYPE HTML>
<!--
	Editorial by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html lang="en">
    <head>
        <#include "/templates/web/fragments/head.ftl">
        <@crafter.head/>
    </head>
    
    <body>
    <@crafter.body_top/>
    <!-- Wrapper -->
    <div id="wrapper">
    
        <div id="main">
            <div class="inner">
    
              <!-- Header -->
              <@renderComponent component=contentModel.header_o.item />
            </div>
            <section>
                <@crafter.h1 $field="name_s">
                    ${contentModel.name_s!""}
                </@crafter.h1>
                <@crafter.div $field="category_s">
                    ${contentModel.category_s!""}
                </@crafter.div>
${contentModel.description_html}
${contentModel.address_s}<br/>
${contentModel.openingHours_html}
${contentModel.contactNumber_s}<br/>
${contentModel.websiteURL_s}<br/>
${contentModel.quote_t}<br/>
${contentModel.quoteBy_s}<br/>
${contentModel.opinion_t}<br/>
${contentModel.hashtags_o}<br/>
${contentModel.googleMapsDirection_s}<br/>
${contentModel.appleMapsDirection_s}<br/>
${contentModel.citymapperDirections_s}<br/>

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
        
          <#list articles as article>
            <@crafter.article $model=article>

                <@crafter.div $field="subject_t">${article.subject_t}</@crafter.div>
</@crafter.article>
            						</#list>


            </section>
        </div>
    </div>
    <#include "/templates/web/fragments/scripts.ftl">

<@crafter.body_bottom/>

</body>
</html>