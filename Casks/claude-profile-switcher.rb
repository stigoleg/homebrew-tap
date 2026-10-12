# Homebrew cask for Claude Profile Switcher.
#
# This file is the source of truth for stigoleg/homebrew-tap
# Casks/claude-profile-switcher.rb. On every tagged release the workflow's
# `update-cask` job renders it into the tap with the release's `version` and
# `sha256` (requires the TAP_GITHUB_TOKEN secret; see
# .github/workflows/release.yml). Edit stanzas and caveats here, not in the tap.
cask "claude-profile-switcher" do
  version "2.0.0"
  sha256 "9c25f33b0169a58c82b691a03595405627f7659794cedb54f7ebb6a76e59a71d"

  url "https://github.com/stigoleg/claude-account-switch/releases/download/v#{version}/ClaudeProfileSwitcher-#{version}.zip"
  name "Claude Profile Switcher"
  desc "Menu-bar app for switching between multiple Claude accounts (Desktop + CLI)"
  homepage "https://github.com/stigoleg/claude-account-switch"

  depends_on macos: :sonoma

  app "Claude Profile Switcher.app"

  caveats <<~EOS
    Version 2 migrates legacy profiles only after creating a verified APFS
    copy-on-write backup. Profile data is intentionally retained when the cask
    is uninstalled; use the app's Disable & Restore action first.
  EOS
end
