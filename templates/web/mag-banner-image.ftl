<#import "/templates/system/common/crafter.ftl" as crafter />

<section id="${contentModel.sectionId_s}" class="parallax-section">

    <div class="the-mag-detail__content" style="">
        <div class="content-row">
                <div class="content-col hero">
                    <a href="#" data-toggle="modal" data-target=".theMagGallerySingleModal" class="theMagGalleryImageLink">
                        <figure class="figure">
                            <img data-large=(contentModel.imageOnDesktop_s) data-lazy=(contentModel.imageOnDesktop_s) class="figure-img img-responsive lazy lz-loading" alt="" src=(contentModel.imageOnDesktop_s) data-ll-status="loading">
        
                                <div class="icon-enlargephoto"></div>
                        </figure>
                    </a>
                </div>
        </div>
    </div>
</section>