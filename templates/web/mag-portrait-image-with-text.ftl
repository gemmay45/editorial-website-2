<#import "/templates/system/common/crafter.ftl" as crafter />

<div class="content-row">
    <div class="content-col">

        <div class="-right">
            <a href="#" data-toggle="modal" data-target=".theMagGallerySingleModal" class="theMagGalleryImageLink">
                <figure class="figure">
                        <@crafter.img $field="imageSection_s" class="img-responsive" src=(contentModel.imageSection_s) alt=(contentModel.titleText_t) />
                </figure>
            </a>
        </div>
        <@crafter.div $field="description_t">
        ${contentModel.sideContent_html}
        </@crafter.div>
    </div>
</div>Í