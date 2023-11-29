def recTenants = []
def recTenant = [:]
recTenant.title = "aaa"
recTenants << recTenant
recTenant.title = "bbb"
recTenants << recTenant

    def topNavItems = [:]
    def dirs = contentModel.recommended_o.item
    dirs.each { dir ->
            def dirName = dir.getStoreName()
            def dirItem = siteItemService.getSiteItem("/site/website/${dirName}/index.xml")

   }


templateModel.recTenants = topNavItems