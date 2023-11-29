
    def recTenants = []
    def recTenant = [:]
    def topNavItems = [:]
    def dirs = contentModel.recommended_o.item
    dirs.each { dir ->
            /*def dirName = dir.getStoreName()*/
            recTenant.title = dir.name_s
            recTenant.key = dir.key
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