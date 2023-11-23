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
                      $containerTag="ul"
                      $itemTag="li";
                      item, index
                >
                    <@crafter.img $model=images_o $field="items.image_s" $index=index src="${item.image_s!''}" />
      
                </@crafter.renderRepeatGroup>
                
                <div class="row mb-5">    
                <div class="col-md-4 mb-4">
                <div>    
                <div>
                    <img src="/static-assets/8f7bb38eee79b68910d9f2d0a48782249418ae6b-2000x618.webp" alt="" class="img-fluid">
                </div>
                </div>
                </div>
                <div class="col-md-9 mb-4">
                <div>
                <div>
                    <img src="/static-assets/e263071651eaf24de31572c012ba0ed8750bdd18-960x640.webp" alt="" class="img-fluid">
                </div>
                <div>
                    <div class="row mb-5">
                    <div class="col-md-6 mb-4">
                    <div>
                    <div>
                        <img src="/static-assets/c63968a78b8619b920a49a0a4eb0e2d946b0bc76-960x640.webp" alt="" class="img-fluid">
                </div>
                </div>
                </div>
                <div class="col-md-6 mb-4" data-craftercms-model-path="/site/website/post/index.xml" data-craftercms-model-id="66377957-ee5a-0976-b1ec-f1642d18e642" data-craftercms-field-id="columns_o" data-craftercms-index="1">    <div data-craftercms-type="collection" data-craftercms-model-path="__PATH_NOT_FOUND__" data-craftercms-model-id="__ID_NOT_FOUND__" data-craftercms-field-id="content_o">    <div data-craftercms-model-path="__PATH_NOT_FOUND__" data-craftercms-model-id="__ID_NOT_FOUND__" data-craftercms-field-id="content_o" data-craftercms-index="0">
                    <img src="/static-assets/images/c63968a78b8619b920a49a0a4eb0e2d946b0bc76-960x640.webp" alt="" class="img-fluid" data-craftercms-model-path="/site/website/post/index.xml" data-craftercms-model-id="ccae346d-41f8-d4f9-b8c9-78c9ea282fc9" data-craftercms-field-id="image_s">
                    </div>
                    </div>
                    </div>
                    </div>
                    </div>
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