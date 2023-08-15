return {
  "keaising/im-select.nvim",
  lazy = false,
  opts = {
    default_main_select = "im.rime.inputmethod.Squirrel.Hans",
    -- default_main_select = "com.apple.keylayout.ABC",
    set_previous_events = { "InsertEnter" },
    set_default_events = {"FocusLost"},
  },
}
