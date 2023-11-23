<#import "/templates/system/common/crafter.ftl" as crafter />
import org.craftercms.sites.editorial.SearchHelper

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

<#assign tenantCategory = contentModel.queryValues("//categories_o/item/key")/>

					${tenantCategory}


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
${contentModel.citymapperDirections_s}<br/><br/>


                    <h4>Related MAG</h4>
					<#list contentModel.relatedMAGArticle_o.item as row>
					    <#assign articleItem =  siteItemService.getSiteItem(row.key) />
					    <@crafter.div $model=articleItem>
					       <#assign url = articleItem.storeUrl
                              ?replace("/site/website", "")
                              ?replace("/index.xml", "")
                            />
    					    <#assign field = "subject_t" />
    					    <#assign title = articleItem[field] />
    					    ${title}<br/>
    					    ${url}
                        </@crafter.div>
					</#list>


            </section>
        </div>
    </div>
    <#include "/templates/web/fragments/scripts.ftl">

<@crafter.body_bottom/>

</body>
</html>