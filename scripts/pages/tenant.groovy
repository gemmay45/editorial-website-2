
def recTenants = []
def recs = contentModel.recommended_o.item
recs.each { rec ->
    def recTenant = [:]
    
    def dirName = rec.key.text
    def dirItem = siteItemService.getSiteItem(rec.key.text)
    
    recTenant.id = dirItem.objectId
    recTenant.objectId = dirItem.objectId
    recTenant.path = dirItem.localId
    recTenant.storeUrl = dirItem.storeUrl
    recTenant.url = urlTransformationService.transform("storeUrlToRenderUrl", recTenant.storeUrl)

    recTenant.title = dirItem.queryValue('name_s')
    recTenant.tagline = dirItem.queryValue('tagline_s')
    recTenant.images = dirItem.images_o

    recTenants << recTenant
}


templateModel.recTenants = recTenants
