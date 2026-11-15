return {
  "nmassardot/nvim-preview-svg",
  cmd = "PreviewSvg", -- Lazy-loads the plugin when you run :PreviewSvg
  opts = {
    browser = "Google Chrome", -- Change to your preferred browser (e.g., "Google Chrome", "Firefox", "Arc")
    args = false, -- Set to true if using macOS Big Sur or older
  },
}
