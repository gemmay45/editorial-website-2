
def categoriesItem = siteItemService.getSiteItem(contentModel.recommended_o.item)
templateModel.tenant = categoriesItem.items.item
