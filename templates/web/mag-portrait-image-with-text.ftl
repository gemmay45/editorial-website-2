<#import "/templates/system/common/crafter.ftl" as crafter />

<div class="content-row">
    <div class="content-col">

        <div class="-right">
            <a href="#" data-toggle="modal" data-target=".theMagGallerySingleModal" class="theMagGalleryImageLink">
                <figure class="figure">
                        <@crafter.img $field="image_s" class="img-responsive" src=(contentModel.image_s) alt="" />
                </figure>
            </a>
        </div>
        <@crafter.span $field="sideContent_html">
        ${contentModel.sideContent_html}
        </@crafter.sapn>
    </div>
</div>