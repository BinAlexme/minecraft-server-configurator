#!/usr/bin/env bash
MCVERSION="1.17.1"
FABRICINSTALLERVERSION=$(curl -s https://maven.fabricmc.net/net/fabricmc/fabric-installer/maven-metadata.xml | grep -oPm1 "(?<=<latest>)[^<]+")

echo "Minecraft ${FABRICINSTALLERVERSION}"

echo "Downloading Fabric Installer v${FABRICINSTALLERVERSION}"
wget -O fabric-installer.jar https://maven.fabricmc.net/net/fabricmc/fabric-installer/${FABRICINSTALLERVERSION}/fabric-installer-${FABRICINSTALLERVERSION}.jar

echo "Generating Fabric JARs"
java -jar fabric-installer.jar server -mcversion ${MCVERSION} -downloadMinecraft
rm fabric-installer.jar

mv server.jar vanilla.jar
mv fabric-server-launch.jar server.jar