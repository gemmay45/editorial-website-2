<#import "/templates/system/common/crafter.ftl" as crafter />
 
<section id="${contentModel.sectionId_s}" class="parallax-section">
  <div class="container">
        <div class="content-row eq-height">
            <div class="content-col">
                <@crafter.div class="the-mag-quote ${contentModel.quoteStyle_s}">
                    <@crafter.div $field="quote_t" class="quote">
                        ${contentModel.quote_t}
                    </@crafter.div>
                    
                    <div class="hr"></div>
                                
                    <@crafter.div $field="quoteBy_s" class="author">
                        ${contentModel.quoteBy_s}
                    </@crafter.div>
                </@crafter.div>
            </div>
            <div class="content-col ">
                <a href="#" data-toggle="modal" data-target=".theMagGallerySingleModal" class="theMagGalleryImageLink">
                    <figure class="figure">
                        <@crafter.img
		$field="trainerImage_s"
		class="figure-img img-responsive lazy lz-loaded"
		src=(contentModel.trainerImage_s)
		alt="Trainer"
	/>
        
                            <img alt="" class="figure-img img-responsive lazy lz-loaded" data-ll-status="loaded" src="https://www.taikooplace.com/-/media/images/taikooplace/siteimages/themag2023/august-2023/feature/fwd-tl-v2.ashx?bc=dbdbdb&amp;as=0&amp;db=web&amp;h=480&amp;vs=1&amp;w=360&amp;hash=3D48FFD0C46B4A841DCA28539CB7AD36">
                                <figcaption data-content=" " class="figure-caption">&nbsp;</figcaption>
                            <div class="icon-enlargephoto"></div>
                    </figure>
                </a>
            </div>
        </div>
    </div>
</section>