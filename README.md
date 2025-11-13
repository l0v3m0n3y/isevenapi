# isevenapi
api for site isevenapi.xyz for  is seven number or not
# Example
```nim
import asyncdispatch, isevenapi , json, strutils
let data = waitFor is_seven(3)
echo data
```

# Launch (your script)
```
nim c -d:ssl -r  your_app.nim
```
