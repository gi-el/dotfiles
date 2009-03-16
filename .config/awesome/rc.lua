local rc, err = loadfile(os.getenv("HOME").."/.config/awesome/awesome.lua");
if rc then
        rc, err = pcall(rc);
        if rc then
                return;
        end
end

dofile("/etc/xdg/awesome/rc.lua");
