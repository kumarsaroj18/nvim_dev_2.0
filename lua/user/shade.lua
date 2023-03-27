local status_ok, shade = pcall(require, "shade")
if not status_ok then
  print "Shade plugin is not available"
  return
end

shade.setup({
  overlay_opacity = 50,
  opacity_step = 1,
  keys = {
    brightness_up    = '<C-Up>',
    brightness_down  = '<C-Down>',
    toggle           = '<Leader>s',
  }
})
