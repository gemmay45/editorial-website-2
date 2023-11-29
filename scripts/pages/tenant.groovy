def recTenants = []
def recTenant = [:]
recTenant.title = "aaa"
recTenants << recTenant
recTenant.title = "bbb"
recTenants << recTenant

    def topNavItems = [:]
    def dirs = contentModel.recommended_o
    dirs.each { dir ->
            def dirName = dir.getStoreName()
            def dirItem = siteItemService.getSiteItem("/site/website/${dirName}/index.xml")
            if (dirItem != null) {
                def dirDisplayName = dirItem.queryValue('internal-name')
                   topNavItems.put(dirName, dirDisplayName)
            }
   }


templateModel.recTenants = topNavItems