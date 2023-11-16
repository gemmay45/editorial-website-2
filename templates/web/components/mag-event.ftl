<#import "/templates/system/common/crafter.ftl" as crafter />

<section id="${contentModel.sectionId_s}" class="parallax-section">
<div class="content-event">
    <div class="content-row">
        <#if contentModel.image_s??>
        <div class="content-col">
            <@crafter.h3 $field="title_s">
            ${contentModel.title_s!""}
            </@crafter.h3>

            <@crafter.span $field="summary_html">
            ${contentModel.summary_html}
            </@crafter.span>
        </div>
    <div class="content-col image-col">

            <a href="#" data-toggle="modal" data-target=".theMagGallerySingleModal" class="theMagGalleryImageLink">
                <@crafter.img $field="image_s" class="img-responsive lazy lz-loading" alt="" src=(contentModel.image_s) $attributes={'data-ll-status': 'loading'} />
                <div class="icon-enlargephoto"></div>
            </a>
        </div>
        <#else>
            <div class="content-col">&nbsp</div>
        </#if>
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