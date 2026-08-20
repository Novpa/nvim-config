require("mywpm").setup {
  -- interval
  notify_interval = 60 * 1000,
  -- highest wpm
  high = 60,
  -- lowest wpm
  low = 15,

  -- highest wpm message
  high_msg = "nice keep it up 🔥",
  -- lowest wpm message
  low_msg = "hahaha slowhand 🐌",

  -- show notify and virtual text
  show_virtual_text = true,
  notify = true,
  -- interval update time
  update_time = 300,
  virt_wpm = function(wpm)
    return ("  speed: %0.f"):format(wpm)
  end,

  -- position of virtual wpm position
  -- available `eol`, `right_align`, `inline`
  virt_wpm_pos = "eol",

  -- follow the cursor when insert mode
  -- default (false)
  follow_cursor = true,
}
