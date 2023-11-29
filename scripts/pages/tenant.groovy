
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

            recTenant.dirItem = dirItem
            recTenant.title = dirItem.queryValue('name_s')
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

import org.craftercms.sites.editorial.TenantSearchHelper
import org.craftercms.sites.editorial.ProfileUtils

def segment = ProfileUtils.getSegment(profile, siteItemService)
def category = contentModel.category_s
def maxTenants = contentModel.maxTenants_i
def searchHelper = new TenantSearchHelper(searchClient, urlTransformationService)
def tenants = searchHelper.searchTenants(false, category, segment, 0, maxTenants)

templateModel.tenants = tenants