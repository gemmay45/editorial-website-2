<#import "/templates/system/common/crafter.ftl" as crafter />

<section id="${contentModel.sectionId_s}" class="parallax-section">
<div class="content-event">
    <div class="content-row">
        <div class="content-col">
            <@crafter.h3 $field="title_s">
            ${contentModel.title_s!""}
            </@crafter.h3>

            <@crafter.h3 $field="summary_html">
            ${contentModel.summary_html!""}
            </@crafter.h3>
        </div>
    <div class="content-col image-col">

            <a href="#" data-toggle="modal" data-target=".theMagGallerySingleModal" class="theMagGalleryImageLink">
                <@crafter.img $field="image_s" class="img-responsive lazy lz-loading" alt="" src=(contentModel.image_s) $attributes={'data-ll-status': 'loading'} />
                <div class="icon-enlargephoto"></div>
            </a>
        </div>
    </div>
    <div class="box-wrapper">
        <div class="box">
            <dl>
                <#if contentModel.event_o?? && contentModel.event_o.item??>
					<#list contentModel.event_o.item as item>
					    <dt><i class="${item.icon_s}"></i></dt>
						<dd>${item.content_html}</dd>
					</#list>
				</#if>
            </dl>
        </div>
    </div>
</div>
</section>