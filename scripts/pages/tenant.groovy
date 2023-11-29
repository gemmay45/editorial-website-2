
    def recTenants = []
    def topNavItems = [:]
    def dirs = contentModel.recommended_o.item
    dirs.each { dir ->
            def recTenant = [:]

            recTenant.id = dir.objectId
            recTenant.objectId = dir.objectId
            recTenant.path = dir.localId
            recTenant.storeUrl = dir.localId
            recTenant.title = dir.name_s
            recTenant.summary = dir.summary_t
            recTenant.url = urlTransformationService.transform("storeUrlToRenderUrl", dir.localId)
        
        
            def dirName = dir.key.text
            def dirItem = siteItemService.getSiteItem(dir.key.text)
            
            /*def dirItem = siteItemService.getSiteItem(dirName)*/
            recTenant.dirItem = dirItem
            /*recTenant.title = dirItem.queryValue('name_s')*/
            recTenant.key = dir.key
            /*recTenant.url = dir.storeUrl*/
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