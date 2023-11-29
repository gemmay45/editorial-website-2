def recTenants = []
def recTenant = [:]
recTenant.title = "aaa"
recTenants << recTenant
recTenant.title = "bbb"
recTenants << recTenant

templateModel.recTenants = recTenants