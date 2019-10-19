# RhythmVAE_M4L
Max for Live(M4L) Rhythm generator using Variational Autoencoder(VAE) 

# How it works

[![VAE Rhythm Generator in M4L(Max for Live) Device](./images/youtube_video.png)](https://www.youtube.com/watch?v=K64gYkvXoUU "VAE Rhythm Generator in M4L(Max for Live) Device")

# Requirement
You need to update your Node for Max package to the latest version (version 1.2.3 or later) through Package Manager, or use the latest version of Max (8.1.0 or later)

# Known problems
~~- When you keep generating rhythms continuiously, Node for Max crashes with "Max API Timeout" error in some occasions and you'll see "Model is not trained yet" error message.~~
- Incompatible with folders with names containing special characters such as `[]?*!|@`

# TO DO
- Fix "Max API Timeout" error
- ~~save/load functionaly for trained models~~
- better documentation
- better UI design!!
- custom MIDI note number settings

# Updates
- 2019.10.19 fixed: beat sync issue
- 2019.10.18 added: note on the requirement
- 2019.9.14 added: functionality to save/load trained model 

