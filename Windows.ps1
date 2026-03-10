#Update System
winget upgrade --all

#Install Programs
winget install -e --id Git.Git
winget install -e --id Ollama.Ollama
winget install -e --id Zen-Team.Zen-Browser
winget install -e --id Autodesk.Fusion360
winget install -e --id Anthropic.Claude
winget install -e --id Tailscale.Tailscale
winget install -e --id Mozilla.Firefox
winfet install -e --id 9PFXXSHC64H3 --source msstore
winget install -e --id dotPDN.PaintDotNet
winget install -e --id 9NKSQGP7F2NH --source msstore
winget install -e --id Discord.Discord
winget install -e --id 9P94LH3Q1CP5 --source msstore
winget install -e --id Microsoft.WSL
winget install -e --id EpicGames.EpicGamesLauncher
winget install -e --id Google.QuickShare
winget install -e --id 

#Remove Bloatware
winget remove -e --id Microsoft.Edge
winget remove -e --id Xbox.XboxGameBar
winget remove -e --id 9WZDNCRFJ3Q2