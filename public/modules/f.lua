-- format module
-- by samrcode on github
-- used to format text in the terminal in native lua

local f = {}

-- reset
function f.reset()
	return "[0m[0m"
end

-- styles
function f.bold(message)
	return "[1m" .. message .. "[0m"
end
function f.under(message)
	return "[4m" .. message .. "[0m"
end

-- fg colours
function f.black(message)
	return "[30m" .. message .. "[0m"
end
function f.red(message)
	return "[31m" .. message .. "[0m"
end
function f.green(message)
	return "[32m" .. message .. "[0m"
end
function f.yellow(message)
	return "[33m" .. message .. "[0m"
end

-- bg colours
function f.bgred(message)
	return ""
end

return f