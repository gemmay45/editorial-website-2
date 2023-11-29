def category = contentModel.recommended_o.item
def maxTenants = contentModel.maxTenants_i
def searchHelper = new TenantSearchHelper(searchClient, urlTransformationService)
def tenants = searchHelper.searchTenants(false, category, segment, 0, maxTenants)

templateModel.tenants = tenants