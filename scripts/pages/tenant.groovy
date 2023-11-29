templateModel.getNavIcon = { item ->
  def storeUrl = urlTransformationService.transform("renderUrlToStoreUrl", item.url)
  def siteItem = siteItemService.getSiteItem(storeUrl)
  
  
  def tenant = [:]
            tenant.id = doc.objectId
            tenant.objectId = doc.objectId
            tenant.path = doc.localId
            tenant.title = siteItem.name_s
            tenant.url = siteItem.storeUrl
            
  return tenant.title
  if(siteItem) {
    def navIcon = siteItem.navIcon?.text
    if(navIcon) {
      return navIcon
    }
  }
  return "fa-file-o"
}

