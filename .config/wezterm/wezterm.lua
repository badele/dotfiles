local wezterm = require 'wezterm';

return {
    window_close_confirmation = "NeverPrompt",
    font = wezterm.font("MesloLGS NF"),
    colors = {
      foreground = '#fffff9',
      background = '#262006',
  
      cursor_bg = '#52ad70',
      cursor_fg = 'black',
      cursor_border = '#52ad70',
  
      selection_fg = 'black',
      selection_bg = '#fffacd',
  
      scrollbar_thumb = '#222222',
  
      split = '#444444',
  
      ansi = {
        '#262006',
        '#c2393c',
        '#74b058',
        '#c1a421',
        '#713db0',
        '#5e90aa',
        '#0f94ba',
        '#c8c7c0',
      },
      brights = {
        '#52440b',
        '#ff393e',
        '#90f561',
        '#ffde1c',
        '#913ff4',
        '#69c0ee',
        '#06c7ff',
        '#fffff9',
      },
  
      -- Arbitrary colors of the palette in the range from 16 to 255
      indexed = { [136] = '#af8700' },
  
      -- Since: 20220319-142410-0fcdea07
      -- When the IME, a dead key or a leader key are being processed and are effectively
      -- holding input pending the result of input composition, change the cursor
      -- to this color to give a visual cue about the compose state.
      compose_cursor = 'orange',
  
      -- Colors for copy_mode and quick_select
      -- available since: 20220807-113146-c2fee766
      -- In copy_mode, the color of the active text is:
      -- 1. copy_mode_active_highlight_* if additional text was selected using the mouse
      -- 2. selection_* otherwise
      copy_mode_active_highlight_bg = { Color = '#000000' },
      -- use `AnsiColor` to specify one of the ansi color palette values
      -- (index 0-15) using one of the names "Black", "Maroon", "Green",
      --  "Olive", "Navy", "Purple", "Teal", "Silver", "Grey", "Red", "Lime",
      -- "Yellow", "Blue", "Fuchsia", "Aqua" or "White".
      copy_mode_active_highlight_fg = { AnsiColor = 'Black' },
      copy_mode_inactive_highlight_bg = { Color = '#52ad70' },
      copy_mode_inactive_highlight_fg = { AnsiColor = 'White' },
  
      quick_select_label_bg = { Color = 'peru' },
      quick_select_label_fg = { Color = '#ffffff' },
      quick_select_match_bg = { AnsiColor = 'Navy' },
      quick_select_match_fg = { Color = '#ffffff' },
    },
  }

