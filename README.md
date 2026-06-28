# PT-Cleaned
<img width="479" height="252" alt="optimised logo" src="https://github.com/user-attachments/assets/e3fc0617-7d04-4581-8409-266699a96265" />


A more cleaner version of **Pizza Tower Optimised**. cleaning up the project to remove unused code just to make it more manageable.

An optimised version of **Pizza Tower EXtracted**, a semi-accurate decompilation of Pizza Tower. The main difference is that nearly every unused sprite, script, room, etc. was removed. It was done with these reasons:
1. Memory leaks. Pizza Tower had a lot of textures, and a lot of them are unused, which could cause a memory leak while compiling a game through GameMaker.
2. More comfortable working. Now you can easily find something used and add new without lags.
3. That's it. I made this decomp so I could work faster without lags and stuff.... if you don't have a PC which runs Cyberpunk 2077 at 600FPS then you can use this decomp...

Decomp is **free-to-use**, but I would really appreciate if you credit me (Dockronic) if you use it. If there are bugs, crashes, some other stuff - please write me in my Discord Server (https://discord.gg/kJHURzRq97).

<img width="100" height="202" alt="spr_candysona_idleDock" src="https://github.com/user-attachments/assets/f0ba02ee-4a07-4ebb-8ff6-51304ce1c92a" />

HAVE FUN NOW MOVING ON EXTRACTED DESCRIPTION

# Dependencies
- [Pizza Tower release data file](https://store.steampowered.com/app/2231450/Pizza_Tower/)
- [UndertaleModTool](https://github.com/UnderminersTeam/UndertaleModTool/releases/tag/0.8.2.0)
- [Steamworks SDK](https://partner.steamgames.com/?goto=%2Fdownloads%2Fsteamworks_sdk_155.zip)
# How To Install

<details>
  <summary><h2>IDE Setup</h2></summary>

  1. Install GameMaker from steam.
  2. Go to `Game Versions & Betas` and select 2023.11.
  3. Load into Gamemaker and under `File` > `Preferences` > `Runtime Feeds` > `Master` scroll down and click the Download icon on version `2023.1.1.81`.
  3. Download the [Steamworks SDK](https://partner.steamgames.com/?goto=%2Fdownloads%2Fsteamworks_sdk_155.zip)
  4. extract the SDK to a new directory: `C:\steamworksSdk` (the extracted location must match this file path: `C:\steamworksSdk\Readme.txt`)
</details>

<details>
  <summary><h2>Project setup</h2></summary>

  Due to Pizza Tower costing money, I have created a script which should prevent anybody from compiling and playing this build without owning a copy themselves.

  (OPTIONAL) Disable `Real-time protection` in Windows Security, since this is going to copy a large amount of files it is heavily recommended.

  1. Download the release build for [UndertaleModTool](https://github.com/UnderminersTeam/UndertaleModTool/releases/).

  2. Open the data.win file for Pizza Tower.

  <img src=".github/Guide1.png">

  <img src=".github/Guide2.png">

  3. Press the `Run other script...` button.

  <img src=".github/Guide3.png">

  4. Run `SpriteRipper.csx`, this will rip the sprites from the data.win file and add them to the GameMaker project.

  <img src=".github/Guide4.png">

  5. Select the `PizzaTower_GM2` project folder.

  <img src=".github/Guide5.png">
  
  6. Edit or remove the .gitignore file from the repository, this will allow you to commit the assets in git.
</details>

# Find an issue or inaccuracy?

Please [report](https://github.com/crystallizedsparkle/Pizza-Tower-EXtracted/issues/new/choose) it! not here.

<img width="81" height="67" alt="spr_candysona_deadDock" src="https://github.com/user-attachments/assets/76de59c1-f226-478a-bcdd-f62ea28f89fc" />

