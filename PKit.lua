-- pebble
-- samrpf on GitHub

-- PKit module
PKit = {}

-- Reset code
PKit.resetc = "[0m"

-- Title Mix
PKit.titlemix = "32;7m"

-- Styles
PKit.stl = {
    bold = "[1m";
    uline = "[4m";
    inverse = "[7m";
}

-- Foreground colours
PKit.c = {
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
PKit.bg = {
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
PKit.ui = {
    -- title bars: green; inverse
    title = function(titletext)
        print(PKit.titlemix .. "== " .. titletext .. " ==" .. PKit.resetc)
        -- NOTE the Pebble Interface usually adds an extra newline after title bars
    end;

    -- notes: yellow
    notet = function(notetext)
        print(PKit.c.yellow .. notetext .. PKit.resetc)
    end;

    -- tips: magenta
    tipt = function(tiptext)
        print(PKit.c.magenta .. tiptext .. PKit.resetc)
    end;

    -- [continue] text; cyan
    cont = function()
        print(PKit.c.cyan .. "[continue]" .. PKit.resetc)
    end;
}

-- home function
function PKit.home()
    os.execute("clear")
    os.execute("lua root/main/pebble.lua")
end

-- table container check function
function PKit.tablecontains(table, element)
    for _, value in pairs(table) do
        if value == element then
            return true
        end
    end
    return false
end

-- sleep function
function PKit.sleep(n)
    os.execute("sleep " .. tostring(n))
end

return PKit
