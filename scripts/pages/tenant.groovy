templateModel.getNavIcon = { item ->
  def storeUrl = urlTransformationService.transform("renderUrlToStoreUrl", item.url)
  def siteItem = siteItemService.getSiteItem(storeUrl)
  return siteItem.storeUrl
  if(siteItem) {
    def navIcon = siteItem.navIcon?.text
    if(navIcon) {
      return navIcon
    }
  }
  return "fa-file-o"
}

                        <#assign tenantItem =  siteItemService.getSiteItem(tenant.key) />
                        <@crafter.div $model=tenantItem>
                            <#assign url = tenantItem.storeUrl
                                ?replace("/site/website", "")
                                ?replace("index.xml", "")
                            />
        
        				    <#assign name_field = "name_s" />
    				        <#assign tenantName = tenantItem[name_field] />
    				        <#assign tagline_field = "tagline_s" />
    				        <#assign tagline = tenantItem[tagline_field] />
    
                            <@crafter.a $model=tenantItem href="${url}">
                                <@crafter.img
                                  $model=tenantItem
                                  $field="images_o"
                                  src="${tenantItem.images_o.item[0].image_s}"
                                  alt=""
                                  width="112px"
                                />
                                
                                <@crafter.span $model=tenantItem>${tenantName}</@crafter.span>
                                <br/>
                                <@crafter.span $model=tenantItem class="location-card__tagline">${tagline!""}</@crafter.span>
                                <br/><br/>
                            </@crafter.a>
                        </@crafter.div>