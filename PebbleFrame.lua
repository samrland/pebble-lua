-- pebble
-- samrpf on GitHub

-- PebbleFrame module
PebbleFrame = {}

-- Reset code
PebbleFrame.resetc = "[0m"

-- Title Mix
PebbleFrame.titlemix = "32;7m"

-- Styles
PebbleFrame.stl = {
    bold = "[1m";
    uline = "[4m";
    inverse = "[7m";
}

-- Foreground colours
PebbleFrame.c = {
    black = "[30m";
    red = "31m";
    green = "[32m";
    yellow = "33m";
    blue = "[34m";
    magenta = "[35m";
    cyan = "[36m";
    white = "[37m";
    -- Strong foreground colours
    -- NOTE: Main Pebble Interface never uses strong colours
    str = {
        black = "[90m";
        red = "[91m";
        green = "[92m";
        yellow = "[93m";
        blue = "[94m";
        magenta = "[95m";
        cyan = "[96m";
        white = "[97m";
    };
}

-- Background colours
PebbleFrame.bg = {
    black = "[40m";
    red = "[41m";
    green = "[42m";
    yellow = "[43m";
    blue = "[44m";
    magenta = "[45m";
    cyan = "[46m";
    white = "[47m";
    -- Strong background colours
    -- NOTE: Main Pebble Interface also never uses strong background colours
    str = {
        black = "[100m";
        red = "[101m";
        green = "[102m";
        yellow = "[103m";
        blue = "[104m";
        magenta = "[105m";
        cyan = "[106m";
        white = "[107m";
    };
}

-- user interface functions
PebbleFrame.ui = {
    -- title bars: green; inverse
    title = function(titletext)
        print(PebbleFrame.titlemix .. "== " .. titletext .. " ==" .. PebbleFrame.resetc)
        -- NOTE the Pebble Interface usually adds an extra newline after title bars
    end;

    -- notes: yellow
    notet = function(notetext)
        print(PebbleFrame.c.yellow .. notetext .. PebbleFrame.resetc)
    end;

    -- tips: magenta
    tipt = function(tiptext)
        print(PebbleFrame.c.magenta .. tiptext .. PebbleFrame.resetc)
    end;

    -- [continue] text; cyan
    cont = function()
        print(PebbleFrame.c.cyan .. "[continue]" .. PebbleFrame.resetc)
    end;
}

-- home function
function PebbleFrame.home()
    os.execute("clear")
    os.execute("lua root/main/pebble.lua")
end

-- table container check function
function PebbleFrame.tablecontains(table, element)
    for _, value in pairs(table) do
        if value == element then
            return true
        end
    end
    return false
end

-- sleep function
function PebbleFrame.sleep(n)
    os.execute("sleep " .. tostring(n))
end

return PebbleFrame
