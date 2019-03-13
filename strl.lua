local strl={}

function strl.isString(s)
  return type(s)=="string"
end

function strl.isEmpty(s)
  return s == nil or s == ''
end

function strl.trim(s)
  return string.gsub(s, "^%s*(.-)%s*$", "%1")
end

return strl
