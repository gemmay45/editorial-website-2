<#import "/templates/system/common/crafter.ftl" as crafter />

<section id="testimonial" class="quotes-section parallax-section prices-background" style="background: url('${contentModel.imageBackground_s}') 50% 0 repeat-y fixed">
	<div class="container">
		<div class="row">

			<!-- Owl Carousel section
			================================================== -->

			<div id="owl-testimonial" class="owl-carousel components-container col-md-12 col-sm-12" model-id="${contentModel.objectId}">
				<#list contentModel.slideitems_o.item as item>

						<#assign myContentItem = item.component />

					<div class="item col-md-offset-2 col-md-8 col-sm-offset-1 col-sm-10 wow fadeInUp" data-wow-delay="0.6s">
						<@crafter.h3 $model=myContentItem $field="description_t">
							${myContentItem.description_t}
						</@crafter.h3>
					</div>
				</#list>
			</div>
		</div>
	</div>
</section>