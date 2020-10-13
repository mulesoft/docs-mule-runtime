%dw 2.0
var baseUrl = "http://alainn-cosmetics.cloudhub.io/api/v1.0"
var urlPage = "http://alainn-cosmetics.cloudhub.io/api/v1.0/items"
var fullUrl = "http://alainn-cosmetics.cloudhub.io/api/v1.0/items"
var pageIndex = 0
var requestedPageSize = 4
output application/json
---
using (pageSize = payload.getItemsResponse.PageInfo.pageSize) {
     links: [
        {
            href: fullUrl,
            rel : "self"
        },
        {
            href: urlPage ++ "?pageIndex=" ++ (pageIndex + pageSize) ++ "&pageSize=" ++ requestedPageSize,
            rel: "next"
        },
        ({
            href: urlPage ++ "?pageIndex=" ++ (pageIndex - pageSize) ++ "&pageSize=" ++ requestedPageSize,
            rel: "prev"
        }) if(pageIndex > 0)
     ],
     collection: {
        size: pageSize,
        items: payload.getItemsResponse.*Item map (item) -> {
            id: item.id,
            'type': item.'type',
            name: item.name,
            (summary: item.summary) if(item.summary?),
            (brand: item.brand) if(item.brand?),
            links: (item.images.*image map (image) -> {
                href: trim(image),
                rel: image.@'type'
            }) + {
                href: baseUrl ++ "/" ++ item.id,
                rel: "self"
            }
        }
     }
