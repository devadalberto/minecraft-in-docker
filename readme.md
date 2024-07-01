# Minecraft in Docker

This guide was made to run a server using 'All The Mods 8' (ATM8). I obviously find pretty much EVERYTHING online, so if there is someone missing on the Thank You section let me know and I will add you there.

This 'guide' was done and tested on a Windows 11 OS, but using WSL2 (Debian 12), Docker is integrated to the Debian WSL so all the commands are linux commands,

## IMPORTANT CONSIDERATION

You have to install and configure CurseForge, [I will write here some settings I used on my machine](/docs/curseforge.md), but you will have to adjust those to fit your computer specs.


## Pre-Requisites

1. Own a copy of Minecraft Java Version (yes, you actually have to login to your Microsoft account to play).
2. Install java (I'm using *openjdk 17.0.11 2024-04-16* on Debian)
3. Install CurseForge (and I would also install Minecraft, just in case)
4. [Configure CurseForge Settings for Minecraft.](/docs/curseforge.md)
5. [Get an API key for CurseForge.](/docs/curseforge.md)
6. Configure Port Forwarding for your Router. (if you plan to play with friends online)

## TL;DR ('high level' instructions to get this running)

1. Clone this repository
2. (optional) Rename the folder
3. Delete the .git folder.
4. Rename the .env.sample file to .env

```shell
rm -rf .git
mv .env.sample .env
```

7. Update the .env file.
8. Adjust/Customize any setting you want to change from the docker-compose.atm8.yaml
9. run the following commands to start the docker container (Minecraft Server):

```
# steps 3 and 4
make build-atm8
make start-atm8
```
> Here it is VERY likely you will see an error in regards missing mods and mods with conflicting/different versions
10. Download the missing mods (you'll get an error telling which mods are missing and which ones are different versions)
11. Upload the mods you just downloaded to the server using filebrowser container.
12. Rebuild and re-start the container

```
# step 12
make stop-atm8
make build-atm8
make start-atm8
```

13. Launch your CurseForge
14. Install ATM8 mod
15. Click on Play orange button on the ATM8 mod
16. Enjoy!

## Why?
Well, I have a couple of teenagers and they both play Minecraft, and one of they asked me if I could set him up a Minecraft Server for him to play with his friends.

### But why another guide?
Well, is just my way to document this so I don't waste time (again) configuring a Minecraft Server and hopefully will do the same for someone else!


## Special Thanks
- [Geoff Bourne | creator of itzg docker image](https://github.com/itzg/docker-minecraft-server)

## Thanks to all those who posted their issues and ways to solve it on the internet
- [scratchisthebest (at reddit)](https://www.reddit.com/r/feedthebeast/comments/e2zogj/where_to_find_mod_and_file_ids_for_mods/)
- [Josh Barrat](https://serialized.net/2021/02/minecraft_server_docker/)
- [AllTheMods Team](https://github.com/AllTheMods/ATM-8)
- [CurseForge](https://www.curseforge.com/)

## URLS
- [github for itzg/docker-minecraft-server](https://github.com/itzg/docker-minecraft-server)
- [readthedocs for docker-minecraft-server](https://docker-minecraft-server.readthedocs.io/en/latest/)


### ToDo
- [ ] Update the compose file to pass the Java Additional Arguments
- [ ] Finish documentation with images on how to download the missing files (using file-browser container)