 <#import "/templates/system/common/crafter.ftl" as crafter />
 
 <section>
   <div class="container">
        <@crafter.div
            $field="content_html"
            $index=index
          >
            ${contentModel.content_html}
          </@crafter.div>
    </div>
</section>
