<#import "/templates/system/common/crafter.ftl" as crafter />

<section id="${contentModel.sectionId_s}" class="parallax-section">
<div class="content-event">
    <div class="content-row">
        <div class="content-col">
        
                    <h3>Qi – House of Sichuan</h3>
        <p>This one’s for the spice fiends; Qi – House of Sichuan will be landed in Berkshire House, following the success of the Michelin-starred Wan Chai original. Here you’ll find authentic Sichuan dishes that reflect the “seven flavours of Sichuan” – spicy, aromatic, sweet, bitter, sour, peppery and salty – so get ready for an explosive culinary adventure packed with powerful flavours, numbing mala spices and a fiery helping of heat.&nbsp;Stay tuned for its opening!</p>
    </div>
    <div class="content-col image-col">

            <a href="#" data-toggle="modal" data-target=".theMagGallerySingleModal" class="theMagGalleryImageLink">
                <img src="/-/media/images/taikooplace/siteimages/themag2023/november-2023/ttm/house-of-sichuan-nov-ttm.ashx?h=564&amp;w=750&amp;la=en&amp;hash=CD645E757206B5342DDB80582473503D" class="img-responsive lazy lz-loading" alt="" data-ll-status="loading">
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