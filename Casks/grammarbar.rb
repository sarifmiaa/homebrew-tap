cask "grammarbar" do
  version "1.0.2"
  sha256 "ab298d75849302d0cd3696f76bc386d7174998c649760354078278fe757480ab"

  url "https://github.com/sarifmiaa/GrammarBar/releases/download/v#{version}/GrammarBar.zip"
  name "GrammarBar"
  desc "Menu bar app to fix, polish and translate text with Claude Code"
  homepage "https://github.com/sarifmiaa/GrammarBar"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :ventura

  app "GrammarBar.app"

  # The app is ad-hoc signed but not notarized; clear the download quarantine so it launches.
  postflight_steps do
    run "/usr/bin/xattr",
        args:           ["-dr", "com.apple.quarantine", "{{appdir}}/GrammarBar.app"],
        writable_paths: ["GrammarBar.app"],
        writable_base:  :appdir
  end

  uninstall quit: "local.grammarbar"

  zap trash: "~/Library/Preferences/local.grammarbar.plist"

  caveats <<~EOS
    GrammarBar uses the Claude Code CLI. Install it and log in once:
      https://docs.claude.com/en/docs/claude-code/overview
      claude

    To start GrammarBar at login, add it in:
      System Settings → General → Login Items & Extensions
  EOS
end
