 <#import "/templates/system/common/crafter.ftl" as crafter />
 
<section id="${contentModel.sectionId_s}" class="parallax-section">
  <div class="container">
    <div class="row">
        <@crafter.div
            $field="content_html"
            $index=index
          >
            ${contentModel.content_html}
          </@crafter.div>
    </div>
    </div>
</section>
