#!/bin/bash
# ABOUTME: Script to update cost analytics data for janus-dashboard
# ABOUTME: Runs claudelytics and generates costs.json for dashboard consumption

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CLAUDELYTICS_BIN="${SCRIPT_DIR}/../claudelytics/target/release/claudelytics"

# Check if claudelytics exists
if [ ! -f "$CLAUDELYTICS_BIN" ]; then
    echo "Error: claudelytics not found at $CLAUDELYTICS_BIN"
    echo "Please build claudelytics first: cd ../claudelytics && cargo build --release"
    exit 1
fi

# Generate cost data
echo "Generating cost analytics..."

# Get daily data (last 30 days)
DAILY=$("$CLAUDELYTICS_BIN" --json daily --since "$(date -d '30 days ago' +%Y%m%d 2>/dev/null || date -v-30d +%Y%m%d)" 2>/dev/null)

# Get today's cost summary
TODAY_COST=$("$CLAUDELYTICS_BIN" --json cost --today 2>/dev/null)

# Get monthly summary
MONTHLY=$("$CLAUDELYTICS_BIN" --json monthly 2>/dev/null)

# Create combined JSON
cat > "${SCRIPT_DIR}/costs.json" << EOF
{
  "generated": "$(date -Iseconds)",
  "daily": ${DAILY:-"{}"},
  "today": ${TODAY_COST:-"{}"},
  "monthly": ${MONTHLY:-"{}"}
}
EOF

echo "Cost data written to ${SCRIPT_DIR}/costs.json"
