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
                <@crafter.div class="the-mag-cat" $field="categories_s">
                    ${contentModel.categories_s!""}
                </@crafter.div>
                <@crafter.h1 $field="name_s">
                    ${contentModel.name_s!""}
                </@crafter.h1>
            </section>
        </div>
    </div>
    <#include "/templates/web/fragments/scripts.ftl">

<@crafter.body_bottom/>

</body>
</html>