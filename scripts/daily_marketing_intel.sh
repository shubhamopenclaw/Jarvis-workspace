# Daily Competitor & Marketing Intelligence
# Schedule: Daily at 8:00 AM
# Goal: Analyze ONE different streetwear/athletic brand each day (cycling through a list + discovery) and extract ONE actionable marketing tactic applicable to ALPHANIX.

BRANDS=("Gymshark" "YoungLA" "Fear of God Essentials" "Represent" "Alphalete" "Nike" "Adidas" "Lululemon" "Under Armour" "Reebok" "Puma" "Champion" "New Balance" "Asics" "Vans" "Converse" "Fila" "Kappa" "Ellesse" "Umbro")
TODAY_INDEX=$(($(date +%j) % ${#BRANDS[@]}))
TARGET_BRAND=${BRANDS[$TODAY_INDEX]}

echo "🔍 Analyzing Strategy: $TARGET_BRAND"

# 1. Fetch recent marketing moves
HITS=$(openclaw tool web_search query="latest marketing campaigns $TARGET_BRAND $(date +%Y)" count=3)

# 2. Analyze & Synthesize
RESPONSE=$(openclaw tool subagents action=run task="Analyze the following search results for $TARGET_BRAND. Identify ONE specific, low-cost, high-impact marketing tactic they are using (e.g., a specific content style, a drop strategy, a community challenge) that ALPHANIX can adapt for a launch with zero budget. Output a brief 3-sentence 'Tactic of the Day'. \n\nContext: $HITS")

# 3. Deliver
openclaw tool message action=send channel=telegram message="📢 **Daily Marketing Intel: $TARGET_BRAND**\n\n$RESPONSE"
