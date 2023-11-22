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
${contentModel.address_s}
${contentModel.openingHours_html}
${contentModel.contactNumber_s}
${contentModel.websiteURL_s}
${contentModel.quote_t}
${contentModel.quoteBy_s}
${contentModel.opinion_t}
${contentModel.hashtags_o}
${contentModel.googleMapsDirection_s}
${contentModel.appleMapsDirection_s}
${contentModel.citymapperDirections_s}
${contentModel.relatedMAGArticle_o}

            </section>
        </div>
    </div>
    <#include "/templates/web/fragments/scripts.ftl">

<@crafter.body_bottom/>

</body>
</html>