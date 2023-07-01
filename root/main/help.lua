-- pebble help
-- copyright (c) 2023 samrland. see LICENSE for more information.
PKit = require("PKit")

os.execute("clear")

toml = require("toml")

HLPFinst = io.open("root/documents/help.toml", "r")
HLPFsuccess, HLPF = pcall(toml.decode, HLPFinst:read("*a"))
HLPFinst:close()

-- check if success
if not HLPFsuccess then
    -- if not, show error message
    print(PKit.fg.red .. "Sorry, we can't show help right now.")
    print("Something might have happened to the file at root/documents/help.toml." .. PKit.resetc)
    PKit.ui.cont()
    io.read("*l")
    PKit.home()
end

-- start loop over pages
for _, pagename in ipairs(HLPF.list) do
    PKit.ui.title("help")
    io.write("\n")

    local page = HLPF["Pages"][pagename].content

    local isbreak, isnote, istip, iswarn

    -- loop over lines
    for _, line in ipairs(PKit.split(page, "\n")) do
        line, isbreak = line:gsub("@@", "", 1)
        line, isnote = line:gsub("@~", "", 1)
        line, istip = line:gsub("@%*", "", 1)
        line, iswarn = line:gsub("@!", "", 1)

        if isbreak > 0 then
            io.write("\n")
        elseif isnote > 0 then
            PKit.ui.notet("NOTE:" .. line)
        elseif istip > 0 then
            PKit.ui.tipt("TIP:" .. line)
        elseif iswarn > 0 then
            io.write(string.format("%sWARNING:%s%s\n", PKit.fg.red, line, PKit.resetc))
        else
            print(line)
        end
    end

    io.write("\n")
    PKit.ui.cont()
    io.read("l")
    os.execute("clear")
end

PKit.home()
