def recTenants = []
def recTenant = [:]
recTenant.title = "aaa"
recTenants << recTenant
recTenant.title = "bbb"
recTenants << recTenant

    def topNavItems = [:]
    def dirs = contentModel.recommended_o.item


templateModel.recTenants = topNavItems