local status_ok, colorizer = pcall(require, "colorizer")
if not status_ok then
  return
end

-- Attach to certain Filetypes
colorizer.setup {
  'css';
  'javascript';
  'html';
  'lua';
}

