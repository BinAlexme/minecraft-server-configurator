#!/usr/bin/env bash

java -Xms3072M -Xmx8192M -XX:+UseZGC -XX:+ZUncommit -XX:+ZProactive -XX:+UseLargePages -XX:ZCollectionInterval=300 -jar server.jar nogui
