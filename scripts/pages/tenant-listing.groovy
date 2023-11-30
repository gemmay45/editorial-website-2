/*
 * Copyright (C) 2007-2022 Crafter Software Corporation. All Rights Reserved.
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 3 as published by
 * the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

import org.craftercms.sites.editorial.TenantSearchHelper
import org.craftercms.sites.editorial.ProfileUtils

def categories = []
def categoryItems = contentModel.categories_o.item
categoryItems.each { categoryItem ->
    def recTenant = [:]
    
    recTenant.id = dirItem.objectId
    recTenant.objectId = dirItem.objectId
    recTenant.path = dirItem.localId
    recTenant.storeUrl = dirItem.storeUrl
    recTenant.url = urlTransformationService.transform("storeUrlToRenderUrl", recTenant.storeUrl)

    recTenant.title = dirItem.queryValue('name_s')
    recTenant.tagline = dirItem.queryValue('tagline_s')
    recTenant.images = dirItem.images_o

    recTenants << recTenant
}


def segment = ProfileUtils.getSegment(profile, siteItemService)
/*def category = ['eat','drink'] contentModel.categories_o.item.key*/
def maxTenants = contentModel.maxTenants_i
def searchHelper = new TenantSearchHelper(searchClient, urlTransformationService)
def tenants = searchHelper.searchTenants(false, category, segment, 0, maxTenants)

templateModel.tenants = tenants

templateModel.category = categories
