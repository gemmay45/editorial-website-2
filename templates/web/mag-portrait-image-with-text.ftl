<#import "/templates/system/common/crafter.ftl" as crafter />

<div class="content-row">
    <div class="content-col">

        <div class="-right">
            <a href="#" data-toggle="modal" data-target=".theMagGallerySingleModal" class="theMagGalleryImageLink">
                <figure class="figure">

                        <@crafter.img $field="imageSection_s" class="img-responsive" src=(contentModel.imageSection_s) alt=(contentModel.titleText_t) />
                        <img alt="" class="figure-img img-responsive lazy lz-loaded" data-ll-status="loaded" src="/-/media/images/taikooplace/siteimages/themag2023/november-2023/tpinsider/_q7a1475-edit.ashx?bc=dbdbdb&amp;as=0&amp;db=web&amp;h=480&amp;vs=1&amp;w=360&amp;hash=B601FA0C2A2A0B46D4CCFCAA22E2C5DE">
                            <figcaption data-content=" " class="figure-caption">&nbsp;</figcaption>
                        <div class="icon-enlargephoto"></div>
                </figure>
            </a>
        </div>
        ${contentModel.sideContent_html}
    </div>
</div>Í