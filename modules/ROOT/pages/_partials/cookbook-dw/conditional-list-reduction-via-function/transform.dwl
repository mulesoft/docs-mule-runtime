%dw 2.0
output application/json
fun reduceMapFor(data) = data reduce(($$ splitBy ":")[0] ++ "," ++ ($ splitBy ":")[0])
---
payload.results map
    {
        email: $.profile.email,
        name: $.profile.firstName,
        tags: reduceMapFor($.data.interests.tags[0]),
        (contenttypes: reduceMapFor($.data.interests.contenttypes[0])) if (sizeOf($.data.interests.contenttypes[0]) > 0)
    }
