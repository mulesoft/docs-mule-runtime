%dw 2.0
output application/xml
---
{
    Result: {
        (payload.Names.*NameDetail  map ( nameDetail , indexOfNameDetail ) -> {
            TargetName @((nameDetail.@)): {
                item: nameDetail.item
            }
        })
    }
}
