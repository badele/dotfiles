local wezterm = require 'wezterm';

return {
    font = wezterm.font("MesloLGS NF"),
    window_close_confirmation = 'NeverPrompt',
    colors = {
      foreground = '#fffffd',
      background = '#26251e',
  
      cursor_bg = '#52ad70',
      cursor_fg = 'black',
      cursor_border = '#52ad70',
  
      selection_fg = 'black',
      selection_bg = '#fffacd',
  
      scrollbar_thumb = '#222222',
  
      split = '#444444',
  
      ansi = {
        '#26251e',
        '#bd1d26',
        '#ab455d',
        '#bfbb97',
        '#1e6eaa',
        '#a67f97',
        '#7593a9',
        '#c8c8c6',
      },
      brights = {
        '#424033',
        '#ff1724',
        '#ed4a70',
        '#ffffae',
        '#1990ea',
        '#ea92c8',
        '#85c1ee',
        '#fffffd',
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

