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

assert(strl.ltrim("  Hello  ")=="Hello  ","ltrim")
assert(strl.rtrim("  Hello  ")=="  Hello","rtrim")

assert(#strl.split("Hello World")==2,"split by space")
assert(#strl.split(" Hello World ")==4,"split by space")
assert(#strl.split("Hello-World","-")==2,"split by hyphen")
assert(#strl.split("Hello, New, World",",")==3,"split by comma")

assert(#strl.splitLines("Hello\n World")==2,"split by line \n")
assert(#strl.splitLines("Hello\r\n World")==2,"split by line \r\n")
assert(#strl.splitLines("Hello\r World")==2,"split by line \r")

assert(strl.startsWith("HelloWorld","Hello"),"startsWith Hello")
assert(strl.startsWith("HelloWorld","World")==false,"startsWith World")

assert(strl.endsWith("HelloWorld","World"),"endsWith World")
assert(strl.endsWith("HelloWorld","Hello")==false,"endsWith Hello")

assert(strl.encodeBase64("test:test123")=="dGVzdDp0ZXN0MTIz","Encode base64")
assert(strl.decodeBase64("dGVzdDp0ZXN0MTIz")=="test:test123","Decode base64")

