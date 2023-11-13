<#import "/templates/system/common/crafter.ftl" as crafter />

<div class="content-row">
    <div class="content-col">

        <div class="-right">
            <a href="#" data-toggle="modal" data-target=".theMagGallerySingleModal" class="theMagGalleryImageLink">
                <figure class="figure">

                        <@crafter.img $field="imageSection_s" class="img-responsive" src=(contentModel.imageSection_s) alt=(contentModel.titleText_t) />
                            <figcaption data-content=" " class="figure-caption">&nbsp;</figcaption>
                        <div class="icon-enlargephoto"></div>
                </figure>
            </a>
        </div>
        ${contentModel.sideContent_html}
    </div>
</div>Í