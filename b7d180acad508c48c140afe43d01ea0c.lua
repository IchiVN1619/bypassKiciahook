-- Do not save this file
-- Always use the loadstring 
  _bsdata0={2816934,1770054101,17827005,53104736,"\76\133\98\244\191\39\102\49\235\76\243\249\71\116\187\237\78\104\177\163\127\138\223\163","2R-RB0R120DB02-32D0L4.1E3DR54A013A0EBEDE1EL_5BE41E__L.4.E0BCAC002CL0A-LCLDRB4CL1.5LA5A.4ED1BCD.DCBA0-BE13353._-A2A-CA31BB_.R4.-CDC5BA11L",4099435,"563aadcd74651dbeac0ae991989dc9eec140623794da1b0e56ea6ea395a40c7b00f6f8f2c153720c896cf1d9e7b3eb962f544e12ba2c19ff1fd6f6866bfd582a393e0a8b2b50fe42a05e8de63943ebc4443636361a417d657471845213fde4f34ec595b51d6ed937c87bd1cb474f7de911e7ec2d990e1d111de013fab703937e914bcabe530419510ee2946a0453ab6ad1cc092cb53afcdc0a52472866327abb17091348e22f69a05492930250031e076feabfe0cc969a8ddd65dd942558194f70872a998416f9e138","\41\161\169\6\17\144\250\45\199\80\228\209\77\142\130\193\77\18\46\76\96\223\6\204\2\236\125\118\80",40930384,719730320,2757139673};
-- Loader chỉnh sửa để log script
-- Không thay đổi logic chính, chỉ thêm phần in/lưu nội dung

local f, b = "static_content_130525", "f51a77ab612-carrot"
local a

-- Thử đọc file cache
pcall(function()
    a = readfile(f .. "/init-" .. b .. ".lua")
end)

if a and #a > 2000 then
    -- Nếu có cache đủ dài thì chạy luôn
    a = loadstring(a)
else
    a = nil
end

if a then
    return a()
else
    -- Nếu chưa có cache thì tải mới
    pcall(makefolder, f)
    local url = "https://cdn.luarmor.net/v4_init_carrot.lua" .. (_ca920af6193 or "")
    local scriptContent = game:HttpGet(url)

    -- Lưu lại để lần sau dùng
    writefile(f .. "/init-" .. b .. ".lua", scriptContent)

    -- Dọn dẹp các file init cũ
    pcall(function()
        for _, v in pairs(listfiles("./" .. f)) do
            local m = v:match("(init[%w%-]*).lua$")
            if m and m ~= ("init-" .. b) then
                pcall(delfile, f .. "/" .. m .. ".lua")
            end
        end
    end)

    -- >>> Thêm phần log ra để bạn xem nội dung <<<
    print("=== Script tải về từ Luarmor ===")
    print(scriptContent)
    writefile("script_dump.lua", scriptContent)

    -- Chạy script như bình thường
    return loadstring(scriptContent)()
end
