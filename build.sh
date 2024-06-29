#!/bin/sh

cd funny_mobs
zip -r ../funny_mobs.zip data/ pack.mcmeta
cd ..
mv funny_mobs.zip "/home/potatoritos/.var/app/org.prismlauncher.PrismLauncher/data/PrismLauncher/instances/1.20.6/.minecraft/saves/New World (1)/datapacks"
