
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
            
                        /*
                        def dirItem = siteItemService.getSiteItem("/site/website/${dirName}/index.xml")
            

            if (dirItem != null) {
                def dirDisplayName = dirItem.queryValue('internal-name')
                   topNavItems.put(dirName, dirDisplayName)
            }
            */
   }


templateModel.recTenants = recTenants
