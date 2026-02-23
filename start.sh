#!/usr/bin/env bash
set -e

PORT_TO_USE="${PORT:-8080}"

python -m pip install --upgrade pip
python -m pip install uv

mcp-proxy --sse-host 0.0.0.0 --sse-port "$PORT_TO_USE" --allow-origin "*" -- \
  uvx --from git+https://github.com/jagan-shanmugam/open-streetmap-mcp.git osm-mcp-server
