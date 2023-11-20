<#import "/templates/system/common/crafter.ftl" as crafter />

<section id="event" class="parallax-section">
<div class="content-event">
    <div class="content-row">
        <#if contentModel.summary_html?has_content>
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
        </#if>
    </div>
    <div class="box-wrapper">
        <div class="box">
        	<@crafter.renderRepeatGroup
				$field="event_o"
				$containerTag="dl";
				row, index
			>
					    <dt><i class="${row.icon_s}"></i></dt>
						<dd><span>${row.content_html}</span></dd>
			</@crafter.renderRepeatGroup>

            <dl>
                <#if contentModel.event_o?? && contentModel.event_o.item??>
					<#list contentModel.event_o.item as item>
					    <dt><@crafter.i $field="event_o" class="${item.icon_s}"></@crafter.i></dt>
						<dd><@crafter.span $field="event_o">${item.content_html}</@crafter.span></dd>
					</#list>
				</#if>
            </dl>
        </div>
    </div>
</div>
</section>