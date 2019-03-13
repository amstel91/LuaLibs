local strl={}
local b='ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/'

function strl.isString(s)
  return type(s)=="string"
end

function strl.isEmpty(s)
  return s == nil or s == ''
end

function strl.trim(s)
  return string.gsub(s, "^%s*(.-)%s*$", "%1")
end

function strl.ltrim(s)
  return string.gsub(s, "^%s*(.-)$", "%1")
end

function strl.rtrim(s)
  return string.gsub(s, "^(.-)%s*$", "%1")
end

function strl.split(s, delimiter)
    if not delimiter then
        delimiter = "%s"
    end
    local results = {}
    local start = 1
    local sStart, sEnd = string.find( s, delimiter, start )
    local i=1
    while sStart do
        results[i]=string.sub( s, start, sStart-1 )
        start = sEnd + 1
        sStart, sEnd = string.find( s, delimiter, start )
        i=i+1
    end
    results[i]=string.sub( s, start )
    return results
end

function strl.splitLines(s)
    local ts = {}
    local posa = 1
      while 1 do
      local pos, chars = s:match('()([\r\n].?)', posa)
        if pos then
          if chars == '\r\n' then pos = pos + 1 end
          local line = s:sub(posa, pos)
          ts[#ts+1] = line
          posa = pos + 1
        else
          local line = s:sub(posa)
          if line ~= '' then ts[#ts+1] = line end
          break      
        end
      end
    return ts
end

function strl.startsWith(str, start)
   return str:sub(1, #start) == start
end

function strl.endsWith(str, ending)
   return ending == "" or str:sub(-#ending) == ending
end

function strl.encodeBase64(data)
    return ((data:gsub('.', function(x) 
        local r,b='',x:byte()
        for i=8,1,-1 do r=r..(b%2^i-b%2^(i-1)>0 and '1' or '0') end
        return r;
    end)..'0000'):gsub('%d%d%d?%d?%d?%d?', function(x)
        if (#x < 6) then return '' end
        local c=0
        for i=1,6 do c=c+(x:sub(i,i)=='1' and 2^(6-i) or 0) end
        return b:sub(c+1,c+1)
    end)..({ '', '==', '=' })[#data%3+1])
end

-- decoding
function strl.decodeBase64(data)
    data = string.gsub(data, '[^'..b..'=]', '')
    return (data:gsub('.', function(x)
        if (x == '=') then return '' end
        local r,f='',(b:find(x)-1)
        for i=6,1,-1 do r=r..(f%2^i-f%2^(i-1)>0 and '1' or '0') end
        return r;
    end):gsub('%d%d%d?%d?%d?%d?%d?%d?', function(x)
        if (#x ~= 8) then return '' end
        local c=0
        for i=1,8 do c=c+(x:sub(i,i)=='1' and 2^(8-i) or 0) end
            return string.char(c)
    end))
end

return strl
