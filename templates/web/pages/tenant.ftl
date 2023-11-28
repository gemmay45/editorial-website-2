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
            
                <#if contentModel.recommended_o?? && contentModel.recommended_o.item??>
                    <h4>Recommended</h4>

                    <#list contentModel.recommended_o.item as tenant>
                        <#assign tenantItem =  siteItemService.getSiteItem(tenant.key) />
                        <@crafter.div $model=tenantItem>
                            <#assign url = tenantItem.storeUrl
                                ?replace("/site/website", "")
                                ?replace("index.xml", "")
                            />
        
        				    <#assign name_field = "name_s" />
    				        <#assign tenantName = tenantItem[name_field] />
    				        <#assign tagline_field = "tagline_s" />
    				        <#assign tagline = tenantItem[tagline_field] />
    
                            <@crafter.a $model=tenantItem href="${url}">
                                <@crafter.img
                                  $model=tenantItem
                                  $field="images_o"
                                  src="${tenantItem.images_o.item[0].image_s}"
                                  alt=""
                                  width="112px"
                                />
                                
                                <@crafter.span $model=tenantItem>${tenantName}</@crafter.span>
                                <br/>
                                <@crafter.span $model=tenantItem class="location-card__tagline">${tagline!""}</@crafter.span>
                                <br/><br/>
                            </@crafter.a>
                        </@crafter.div>
                    </#list>
				</#if>
				
				<#if contentModel.relatedMAGArticle_o?? && contentModel.relatedMAGArticle_o.item??>
                    <h4>Related MAG</h4>
					<#list contentModel.relatedMAGArticle_o.item as article>
					    <#assign articleItem = siteItemService.getSiteItem(article.key) />
					    <@crafter.div $model=articleItem>
					       <#assign url = articleItem.storeUrl
                              ?replace("/site/website", "")
                              ?replace("/index.xml", "")
                            />
    					    <#assign field = "subject_t" />
    					    <#assign title = articleItem[field] />
    					    
    					    <@crafter.span $model=articleItem>${title}</@crafter.span><br/>
    					    <@crafter.span $model=articleItem>${url}</@crafter.span>
                        </@crafter.div>
					</#list>
				</#if>

				<#if contentModel.images_o?? && contentModel.images_o.item??>
                    <div class="row">
                      <div class="col-md-4"><@crafter.img $field="images_o" src="${contentModel.images_o.item[0].image_s}" height="292" /></div>
                      <div class="col-md-8">
                        <div class="pb-3">
                            <@crafter.img $field="images_o" src="${contentModel.images_o.item[1].image_s}" height="140"/>
                        </div>
                        <div class="row">
                          <div class="col-md-6"><@crafter.img $field="images_o" src="${contentModel.images_o.item[2].image_s}" height="145" /></div>
                          <div class="col-md-6"><@crafter.img $field="images_o" src="${contentModel.images_o.item[3].image_s}" height="145" /></div>
                        </div>
                      </div>
                    </div>
                </#if>
                
                <@crafter.h1 $field="name_s">
                    ${contentModel.name_s!""}
                </@crafter.h1>
    
				<#if contentModel.categories_o?? && contentModel.categories_o.item??>
                    <#list contentModel.categories_o.item as category>
                        <@crafter.span $field="categories_o">${category.value_smv}</@crafter.span>
                    </#list>
                </#if>
                                
                <@crafter.div $field="description_html">${contentModel.description_html}</@crafter.div>
                <@crafter.span $field="address_s">${contentModel.address_s}</@crafter.span><br/>
                <@crafter.div $field="openingHours_html">${contentModel.openingHours_html}</@crafter.div>
                <@crafter.span $field="contactNumber_s">${contentModel.contactNumber_s}</@crafter.span><br/>
                <@crafter.span $field="websiteURL_s">${contentModel.websiteURL_s}</@crafter.span><br/>
                <@crafter.span $field="quote_t">${contentModel.quote_t}</@crafter.span><br/>
                <@crafter.span $field="quoteBy_s">${contentModel.quoteBy_s}</@crafter.span><br/>
                <@crafter.span $field="opinion_t">${contentModel.opinion_t}</@crafter.span><br/>
                
                <@crafter.renderRepeatGroup
                    $field="hashtags_o"
                    $containerTag="div";
                    item, index
                    >
                    <@crafter.p $field="hashtags_o" $index=index>${item.hashtag_s}</@crafter.p>
                    <#--
                    <#if item.content_html?has_content>
                    <@crafter.tag $tag="dt" $field="event_o" $index=index><i $field="event_o" class="${item.icon_s}"></i></@crafter.tag>
                    </#if>
                    <#if item.content_html?has_content>
                    <@crafter.tag $tag="dd" $field="event_o" $index=index>${item.content_html}</@crafter.tag>
                    </#if>
                    -->
                </@crafter.renderRepeatGroup>

                <#--
                <#if contentModel.hashtags_o?? && contentModel.hashtags_o.item??>
                    <#list contentModel.hashtags_o.item as hashtag>
                        <@crafter.span $field="hashtags_o">${hashtag.value_smv}</@crafter.span>
                        <br/>
                    </#list>
                </#if>
                -->
                
                <@crafter.span $field="googleMapsDirection_s">${contentModel.googleMapsDirection_s}</@crafter.span><br/>
                <@crafter.span $field="appleMapsDirection_s">${contentModel.appleMapsDirection_s}</@crafter.span><br/>
                <@crafter.span $field="citymapperDirections_s">${contentModel.citymapperDirections_s}</@crafter.span><br/><br/>

				
                <#--
                <#if contentModel.recommended_o?? && contentModel.recommended_o.item??>
                    <h4>Recommended</h4>
				    <#list contentModel.recommended_o.item as row>
				        <#assign index = row?index />
					    <#assign tenantItem =  siteItemService.getSiteItem(row.key) />
					    <div class="location-card">
    					    
    					    <@crafter.div $model=tenantItem>
        					    <@crafter.img $model=tenantItem $field="images_o" src="${tenantItem.images_o.item[0].image_s}" alt="" width="112px" />
    
        					    <#assign url = tenantItem.storeUrl
                                  ?replace("/site/website", "")
                                  ?replace("/index.xml", "")
                                />
        					    <#assign field = "name_s" />
        					    <#assign name = tenantItem[field] />
        					    <#assign tfield = "tagline_s" />
        					    <#assign tagline = tenantItem[tfield] />

                                <br/>
                                <#list tenantItem.categories_o.item as category>
                                    ${category.value_smv}
                                </#list>
                                <br/>

                                <@crafter.span $model=tenantItem $index=index $field="name_s" class="location-card__title" $attributes={'aria-hidden':'true'}>
                                    ${tenantItem.name_s!""}
                                </@crafter.span>
                                <br/>
                                <@crafter.span $model=tenantItem $index=index $field="tagline_s" class="location-card__tagline">
                                    ${tenantItem.tagline_s!""}
                                </@crafter.span>

                                <br/>
        					    ${url}<br/><br/>
    					    
                            </@crafter.div>
                        </div>
				    </#list>
				</#if>
				-->
            </section>
        </div>
    </div>
            
    <#include "/templates/web/fragments/scripts.ftl">

<@crafter.body_bottom/>

</body>
</html>