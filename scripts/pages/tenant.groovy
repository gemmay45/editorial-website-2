
    def recTenants = []
    def recTenant = [:]
    def topNavItems = [:]
    def dirs = contentModel.recommended_o.item
    dirs.each { dir ->
            def dirName = dir.key
            def dirItem = siteItemService.getSiteItem("${dirName}")
            recTenant.title = "aaa"
            recTenant.key = dirItem.storeUrl
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