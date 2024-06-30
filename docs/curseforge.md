## Get an API key 
1. Go to https://console.curseforge.com/.
2. Create an account or login if you already have one.
3. Once there make sure to fill up the Settings section.
4. Generate an API
5. Copy the API key and paste it on your .env file

## Get the 'FILE_ID'
>Every file on Curse has a URL that looks like this:
>
>https://www.curseforge.com/minecraft/mc-mods/incorporeal/files/2822894
>
>Here the project ID is "300842" (given on the info box on the page) and the file ID is "2822894" (trailing in the URL)
>
>This corresponds to a mod with the mod ID "incorporeal" and the version number "1.2.4".
>Note that the curse project slug (the bit in the URL) and the mod ID are not the same thing. This mod https://www.curseforge.com/minecraft/mc-mods/exotic-matter-library has a slug of "exotic-matter-library" but the mod ID is only exotic-matter. It's not one-to-one, either; EnderIO, BuildCraft, and Binnie's mods are all one download on Curse but appear under more than one mod ID in game.
>
>Mod IDs are a loader thing, curse project IDs and project slugs are a CurseForge thing, if you're writing a file for CurseForge to consume you need to speak its language.
>
>You probably shouldn't be constructing manifest.json files manually though. It sounds extremely error prone.

> -- <cite>[scratchisthebest][1]</cite>

[1]https://www.reddit.com/r/feedthebeast/comments/e2zogj/where_to_find_mod_and_file_ids_for_mods/


## Configure CurseForge Settings for Minecraft
1. Launch CurseForge
2. Click on Settings (gear at bottom left)
3. Click Minecraft (under Game Specific)
4. On the right handside of that screen, scroll all the way down to Java Settings:
   1. Allocated Memory: ```6144MB```
   2. Additional Arguments
   ```
   -Xms6144M -Xmx10240M --add-modules=jdk.incubator.vector -XX:+UseG1GC -XX:+ParallelRefProcEnabled -XX:MaxGCPauseMillis=200 -XX:+UnlockExperimentalVMOptions -XX:+DisableExplicitGC -XX:+AlwaysPreTouch -XX:G1HeapWastePercent=5 -XX:G1MixedGCCountTarget=4 -XX:InitiatingHeapOccupancyPercent=15 -XX:G1MixedGCLiveThresholdPercent=90 -XX:G1RSetUpdatingPauseTimePercent=5 -XX:SurvivorRatio=32 -XX:+PerfDisableSharedMem -XX:MaxTenuringThreshold=1 -XX:G1NewSizePercent=40 -XX:G1MaxNewSizePercent=50 -XX:G1HeapRegionSize=16M -XX:G1ReservePercent=15
   ```
