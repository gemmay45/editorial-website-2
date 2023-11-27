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
                <div class="row">
                  <div class="col-md-4"><@crafter.img $field="contentModel.images_o" src="${contentModel.images_o.item[0].image_s}" height="292" /></div>
                  <div class="col-md-8">
                    <div class="pb-3">
                        <@crafter.img src="${contentModel.images_o.item[1].image_s}" height="140"/>
                    </div>
                    <div class="row">
                      <div class="col-md-6"><@crafter.img src="${contentModel.images_o.item[2].image_s}" height="145" /></div>
                      <div class="col-md-6"><@crafter.img src="${contentModel.images_o.item[3].image_s}" height="145" /></div>
                    </div>
                  </div>
                </div>

                <@crafter.h1 $field="name_s">
                    ${contentModel.name_s!""}
                </@crafter.h1>
    
    
                <#list contentModel.categories_o.item as category>
                    ${category.value_smv}
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


                    <#if contentModel.relatedMAGArticle_o?? && contentModel.relatedMAGArticle_o.item??>
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
					<br/>
					</#if>

                    <#if contentModel.recommended_o?? && contentModel.recommended_o.item??>
                        <h4>Recommended</h4>
					    <#list contentModel.recommended_o.item as row>
    					    <#assign articleItem =  siteItemService.getSiteItem(row.key) />
    					    <@crafter.div $model=articleItem class="location-card">
    					       <#assign url = articleItem.storeUrl
                                  ?replace("/site/website", "")
                                  ?replace("/index.xml", "")
                                />
        					    <#assign field = "name_s" />
        					    <#assign name = articleItem[field] />
        					    <#assign tfield = "tagline_s" />
        					    <#assign tagline = articleItem[tfield] />
        					    
        					    <#assign ifield = "images_o" />
        					    <#assign img = articleItem[ifield][0] />
        					    
        					    <@crafter.img src="${articleItem.images_o.item[0].image_s}" alt="" width="112px" />
        					    
                                <br/>
                                
                                <#list articleItem.categories_o.item as category>
                                    ${category.value_smv}
                                </#list>
                                <br/>
                                <@crafter.span $field="name_s" class="location-card__title" $attributes={'aria-hidden':'true'}>
                                    ${articleItem.name_s!""}
                                </@crafter.span>
                                <br/>
                                <@crafter.span $field="tagline_s" class="location-card__tagline">
                                    ${articleItem.tagline_s!""}
                                </@crafter.span>
                                <br/>
        					    ${url}<br/><br/>
                            </@crafter.div>
					    </#list>
					</#if>
            </section>
        </div>
    </div>
    <#include "/templates/web/fragments/scripts.ftl">

<@crafter.body_bottom/>

</body>
</html>