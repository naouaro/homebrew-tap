# Cask for Perch. Activates with the first GitHub release — see README.md.


cask "perch" do
  version "0.1.0"
  sha256 "REPLACE_WITH_SHA256_OF_DMG"

  url "https://github.com/naouaro/Perch/releases/download/v#{version}/Perch.dmg"
  name "Perch"
  desc "Floating panel that reads your Slack and tells you who's waiting on you"
  homepage "https://github.com/naouaro/Perch"

  depends_on macos: :sonoma

  app "Perch.app"

  # Optional integrations Perch can use if present (not required to run):
  #   claude    — analysis billed to a Claude subscription instead of API credits
  #   unixodbc  — MS SQL Server mirroring
  caveats <<~EOS
    First launch opens a setup wizard (~5 minutes, no code).

    Optional extras Perch will detect automatically if installed:
      brew install --cask claude-code   # use your Claude subscription
      brew install unixodbc microsoft/mssql-release/msodbcsql18   # SQL mirror

    Perch reads Slack with your own token — the wizard creates the Slack app
    for you. Nothing is sent anywhere except Slack, Google, and Claude — plus
    your own SQL Server if you enable the optional mirror.
  EOS

  zap trash: [
    "~/Library/Application Support/default.store*",
    "~/Documents/Perch-Transcripts",
  ]
end
