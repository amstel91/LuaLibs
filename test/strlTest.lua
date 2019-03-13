local strl = require "string/strl"

assert(strl.isString("Hello"),"isString with String")
assert(strl.isString(200)==false,"isString with number")

assert(strl.isEmpty("Hello")==false,"isEmpty with String")
assert(strl.isEmpty(""),"isEmpty with Empty String")
assert(strl.isEmpty(nil),"isEmpty with nil")
assert(strl.isEmpty(23)==false,"isEmpty with number")

assert(strl.trim("Hello  ")=="Hello","trim with right padding")
assert(strl.trim("  Hello")=="Hello","trim with left padding")
assert(strl.trim("  Hello  ")=="Hello","trim with both padding")
assert(strl.trim("Hello")=="Hello","trim with no padding")

