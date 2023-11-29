
def recTenants = []
def topNavItems = [:]
def dirs = contentModel.recommended_o.item
dirs.each { dir ->
    def recTenant = [:]
    
    def dirName = dir.key.text
    def dirItem = siteItemService.getSiteItem(dir.key.text)
    
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
