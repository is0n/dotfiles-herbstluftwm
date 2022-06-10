local status_ok, base16 = pcall(require, "base16")
if not status_ok then
  return
end

base16.themes["mountain"] = {
  base00 = "0f0f0f"; base01 = "191919"; base02 = "262626"; base03 = "4c4c4c";
  base04 = "ac8a8c"; base05 = "f0f0f0"; base06 = "e7e7e7"; base07 = "f0f0f0";
  base08 = "ac8a8c"; base09 = "ceb188"; base0A = "aca98a"; base0B = "8aac8b";
  base0C = "8aabac"; base0D = "8f8aac"; base0E = "ac8aac"; base0F = "ac8a8c";
}

base16(base16.themes["mountain"], true)
