#!/bin/sh

# Run wrapper for Minecraft Bedrock Edition
# Setup files & folders, if they do not exist

[ ! -d "/bedrock-server/data/worlds" ] && mkdir -p "/bedrock-server/data/worlds"

if [ ! -f "/bedrock-server/data/server.properties" ]; then

cat << 'EOF' > /bedrock-server/data/server.properties
server-name=Minecraft Bedrock (GlemSom)
# Used as the server name
# Allowed values: Any string

gamemode=survival
# Sets the game mode for new players.
# Allowed values: "survival", "creative", or "adventure"

difficulty=easy
# Sets the difficulty of the world.
# Allowed values: "peaceful", "easy", "normal", or "hard"

allow-cheats=false
# If true then cheats like commands can be used.
# Allowed values: "true" or "false"

max-players=5
# The maximum number of players that can play on the server.
# Allowed values: Any positive integer

online-mode=false
# If true then all connected players must be authenticated to Xbox Live.
# Clients connecting to remote (non-LAN) servers will always require Xbox Live authentication regardless of this setting.
# If the server accepts connections from the Internet, then it's highly recommended to enable online-mode.
# Allowed values: "true" or "false"

white-list=false
# If true then all connected players must be listed in the separate whitelist.json file.
# Allowed values: "true" or "false"

server-port=19132
# Which IPv4 port the server should listen to.
# Allowed values: Integers in the range [1, 65535]

server-portv6=19133
# Which IPv6 port the server should listen to.
# Allowed values: Integers in the range [1, 65535]

view-distance=32
# The maximum allowed view distance in number of chunks.
# Allowed values: Any positive integer.

tick-distance=4
# The world will be ticked this many chunks away from any player.
# Allowed values: Integers in the range [4, 12]

player-idle-timeout=30
# After a player has idled for this many minutes they will be kicked. If set to 0 then players can idle indefinitely.
# Allowed values: Any non-negative integer.

max-threads=8
# Maximum number of threads the server will try to use. If set to 0 or removed then it will use as many as possible.
# Allowed values: Any positive integer.

level-name=Bedrock Level
# Allowed values: Any string

level-seed=
# Use to randomize the world
# Allowed values: Any string

default-player-permission-level=operator
# Permission level for new players joining for the first time.
# Allowed values: "visitor", "member", "operator"

texturepack-required=false
# Force clients to use texture packs in the current world
# Allowed values: "true" or "false"  
EOF
fi

if [ ! -f "/bedrock-server/data/permissions.json" ]; then

cat << 'EOF' > /bedrock-server/data/permissions.json
[]
EOF
fi

if [ ! -f "/bedrock-server/data/whitelist.json" ]; then

cat << 'EOF' > /bedrock-server/data/whitelists.json
[]
EOF
fi

./bedrock_server