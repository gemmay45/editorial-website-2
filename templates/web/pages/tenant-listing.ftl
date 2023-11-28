<#import "/templates/system/common/crafter.ftl" as crafter />

<!doctype html>
<html lang="en">
<head>
  <#include "/templates/web/fragments/head.ftl">
  <@crafter.head/>
</head>
<body class="is-preload">
<@crafter.body_top/>

<!-- Wrapper -->
<div id="wrapper">

  <!-- Main -->
  <div id="main">
    <div class="inner">

      <!-- Header -->
      <@crafter.renderComponentCollection $field="header_o"/>
      <!-- /Header -->
      
      
      <@crafter.section $model=contentModel>
              
        <div class="posts">
          <#list articles as article>
            <@crafter.div $model=article>
                <a href="${article.url}" class="image">
                <@crafter.img
                  $model=article
                  $field="images_o"
                  src=article.image???then(article.image, "/static-assets/images/placeholder.png")
                  alt="" width="112px"
                />
                </a>

<@crafter.img
                                  $model=tenantItem
                                  $field="images_o"
                                  src="${tenantItem.images_o.item[0].image_s}"
                                  alt=""
                                  width="112px"
                                />
                                
                <h3>
                    <@crafter.a $model=article $field="name_s" href="${article.url}">
                                ${article.title}
                      <#-- $field="name_s"  ${article.name_s} -->
                    </@crafter.a>
                </h3>
                <br/><br/>
        
              <#--
              <a href="${article.url}" class="image">
                <@crafter.img
                  $model=article
                  $field="image_s"
                  src=article.image???then(article.image, "/static-assets/images/placeholder.png")
                  alt=""
                />
              </a>
              <h3>
                <@crafter.a $model=article $field="subject_t" href="${article.url}">
                  ${article.title}
                </@crafter.a>
              </h3>
              <@crafter.p $model=article $field="summary_t">
                ${article.summary}
              </@crafter.p>
              <ul class="actions">
                <li><a href="${article.url}" class="button">More</a></li>
              </ul>
                -->
            </@crafter.div>
          </#list>
        </div>
      </@crafter.section>

    </div>
  </div>
  <!-- /Main -->

  <!-- Left Rail -->
  <@crafter.renderComponentCollection $field="left_rail_o" />
  <!-- /Left Rail -->

</div>
<!-- /Wrapper -->

<#include "/templates/web/fragments/scripts.ftl">
<@crafter.body_bottom/>

</body>
</html>
