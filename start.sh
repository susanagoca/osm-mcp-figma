#!/usr/bin/env bash
set -e

PORT_TO_USE="${PORT:-8080}"

mcp-proxy --host 0.0.0.0 --port "$PORT_TO_USE" --allow-origin "*" -- \
  uvx --from git+https://github.com/jagan-shanmugam/open-streetmap-mcp.git osm-mcp-server
