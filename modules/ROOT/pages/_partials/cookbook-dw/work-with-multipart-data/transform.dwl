%dw 2.0
output application/json
var multi = '--34b21
Content-Disposition: form-data; name="text"
Content-Type: text/plain

Book
--34b21
Content-Disposition: form-data; name="file1"; filename="a.json"
Content-Type: application/json

{
  "title": "Java 8 in Action",
  "author": "Mario Fusco",
  "year": 2014
}
--34b21
Content-Disposition: form-data; name="file2"; filename="a.html"
Content-Type: text/html

<!DOCTYPE html>
<title>
  Available for download!
</title>
--34b21--'
var parsed = read(multi, "multipart/form-data", {boundary:'34b21'})
---
parsed.parts mapObject ((value, key, index) -> {(index): key})
