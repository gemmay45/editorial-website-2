<#import "/templates/system/common/crafter.ftl" as crafter />

<section id="${contentModel.sectionId_s}" class="parallax-section">

    <div class="the-mag-detail__content" style="">
        <div class="content-row">
                <div class="content-col hero">
                    <a href="#" data-toggle="modal" data-target=".theMagGallerySingleModal" class="theMagGalleryImageLink">
                        <figure class="figure">
                        <@crafter.img $field="image_s" class="img-responsive" src=(contentModel.image_s) alt="" />
        
                                <div class="icon-enlargephoto"></div>
                        </figure>
                    </a>
                </div>
        </div>
    </div>
</section>