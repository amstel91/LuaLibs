# LuaLib

A String library for lua

# Introduction

[LuaLibs](https://github.com/amstel91/LuaLibs/) is a string library for Lua that provides utility functions for string operations

The project is hosted on [GitHub](https://github.com/amstel91/LuaLibs/). You can report bugs and discuss features on the [issues page](https://github.com/amstel91/LuaLibs/issues), or email to amstel91@gmail.com.

# Tests

The tests are available in test folder

# How to include

```lua
local strl = require "strl"
```

# String Functions

## isString

`strl.isString(value)`
    
returns true if the given value is a String else returns false

```lua
strl.isString("Hello")
=> true
strl.isString(4)
=> false
```

## isEmpty

`strl.isEmpty(value)`
    
returns true if value is nil or empty string

```lua
strl.isEmpty("Hello")
=> false
strl.isEmpty("")
=> true
strl.isEmpty(nil)
=> false
```

## trim

`strl.trim(value)`
    
returns trims leading and trailing whitespaces

```lua
strl.trim("  Hello  ")
=> Hello
```

## ltrim

`strl.ltrim(value)`
    
returns trims leading whitespaces

```lua
strl.trim("  Hello")
=> Hello
```

## rtrim

`strl.rtrim(value)`
    
returns trims trailing whitespaces

```lua
strl.trim("Hello   ")
=> Hello
```

## split

`strl.split(value,[seperator])`
    
returns a table of string split using the seperator. By default space is the seperator

```lua
strl.split("Hello World")
=> {"Hello","World"}
strl.split("Hello-World","-")
=> {"Hello","World"}
```

## splitLines

`strl.splitLines(value)`
    
returns a table of string split by line

```lua
strl.splitLines("Hello\nWorld")
=> {"Hello","World"}
```

## startsWith

`strl.startsWith(value,startsWithValue)`
    
returns true if the first parameter starts with the second paramter.

```lua
strl.startsWith("HelloWorld","Hello")
=> true
strl.startsWith("HelloWorld","World")
=> false
```

## endsWith

`strl.endsWith(value,endsWithValue)`
    
returns true if the first parameter ends with the second paramter.

```lua
strl.endsWith("HelloWorld","World")
=> true
strl.endsWith("HelloWorld","Hello")
=> false
```

## encodeBase64

`strl.encodeBase64(value)`
    
returns base 64 encoded string

```lua
strl.encodeBase64("test:test123")
=> "dGVzdDp0ZXN0MTIz"
```

## decodeBase64

`strl.decodeBase64(value)`
    
returns base 64 decoded string

```lua
strl.decodeBase64("dGVzdDp0ZXN0MTIz")
=> "test:test123"
```
