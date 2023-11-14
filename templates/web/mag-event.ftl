<#import "/templates/system/common/crafter.ftl" as crafter />

<section id="${contentModel.sectionId_s}" class="parallax-section">
<div class="content-event">
    <div class="content-row">
        <div class="content-col">
            &nbsp; &nbsp;
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