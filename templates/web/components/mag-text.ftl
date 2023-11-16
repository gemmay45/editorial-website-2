 <#import "/templates/system/common/crafter.ftl" as crafter />
 
<section id="${contentModel.sectionId_s}" class="parallax-section">
  <div class="container">
    <div class="content-row">
        <@crafter.div
            $field="content_html"
            $index=index
          >
            ${contentModel.content_html}
          </@crafter.div>
        <hr class="major" />
    </div>
    </div>
</section>
