 <#import "/templates/system/common/crafter.ftl" as crafter />
 
<section id="${contentModel.sectionId_s}" class="parallax-section">
  <div class="container">
    <div class="row">
    <div class="the-mag-quote -motivational">


            <@crafter.div $field="quote_t" class="quote">
                ${contentModel.quote_t}
            </@crafter.div>
            
                <div class="hr"></div>
                <div class="author">Chef Luke Burgess</div>
        </div>
    </div>
    </div>
</section>