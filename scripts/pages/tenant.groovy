
def categoriesItem = siteItemService.getSiteItem(contentModel.recommended_o.item[0].key)
templateModel.tenant = categoriesItem.items.item
