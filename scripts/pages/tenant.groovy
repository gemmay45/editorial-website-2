
    def recTenants = []
    def topNavItems = [:]
    def dirs = contentModel.recommended_o.item
    dirs.each { dir ->
            def recTenant = [:]

            def dirName = dir.key
            def dirItem = siteItemService.getSiteItem(dir.storeUrl)
            
            /*def dirItem = siteItemService.getSiteItem(dirName)*/
            recTenant.title = dirItem.queryValue('name_s')
            recTenant.key = dir.key
            recTenant.url = dir.storeUrl
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