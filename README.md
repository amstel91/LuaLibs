# LuaLib

A String library for lua

# Introduction

[LuaLibs](https://github.com/amstel91/LuaLibs/) is a string library for Lua that provides utility functions for string operations

The project is hosted on [GitHub](https://github.com/amstel91/LuaLibs/). You can report bugs and discuss features on the [issues page](https://github.com/amstel91/LuaLibs/issues), or email to amstel91@gmail.com.

# Tests

The tests are available in test folder

# How to include

local strl = require "strl"

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
