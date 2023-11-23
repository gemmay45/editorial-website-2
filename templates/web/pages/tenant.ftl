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
                <@crafter.renderRepeatGroup
                      $field="images_o"
                      $containerTag="div";
                      item, index
                >
                    <#if index == 0>
                        <#assign image1 = item.image_s />
                    <#elseif index == 1>
                        <#assign image2 = item.image_s />
                    <#elseif index == 2>
                        <#assign image3 = item.image_s />
                    <#elseif index == 3>
                        <#assign image4 = item.image_s />
                    </#if>

                </@crafter.renderRepeatGroup>
                
                <div class="row">
                  <div class="col-md-4"><img src="${image1}" width="320" /></div>
                  <div class="col-md-8">
                    <div class="pb-3">
                        <img src="/static-assets/8f7bb38eee79b68910d9f2d0a48782249418ae6b-2000x618.webp" width="640"/>
                    </div>
                    <div class="row">
                      <div class="col-md-6"><img src="{image1}" width="310" /></div>
                      <div class="col-md-6"><img src="/static-assets/c63968a78b8619b920a49a0a4eb0e2d946b0bc76-960x640.webp" width="310" /></div>
                    </div>
                  </div>
                </div>

                <@crafter.h1 $field="name_s">
                    ${contentModel.name_s!""}
                </@crafter.h1>
                <@crafter.div $field="category_s">
                    ${contentModel.category_s!""}
                </@crafter.div>

                <#list contentModel.categories_o.item as category>
                    ${category.key}<br/>
                </#list>


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