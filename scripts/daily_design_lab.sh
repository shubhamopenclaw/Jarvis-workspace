# Daily Design Lab
# Schedule: Daily at 9:00 AM
# Goal: Generate ONE single-color, screen-print friendly design concept based on a randomized creative prompt, avoiding repetition.

# 1. Randomized Creative Variables
THEMES=("Brutalist Typography" "Industrial Blueprint" "Vintage Athletic Dept" "Cyberpunk Minimal" "Abstract Geometric" "Distressed Mascot" "Technical Specs" "Japanese Streetwear")
PLACEMENTS=("Oversized Back" "Left Chest Pocket" "Vertical Spine" "Hem Tag + Sleeve" "Center Chest Block")
CONSTRAINTS="Single color (Plastisol). No gradients. Thick lines (min 2pt). Negative space heavy."

RANDOM_THEME=${THEMES[$RANDOM % ${#THEMES[@]}]}
RANDOM_PLACEMENT=${PLACEMENTS[$RANDOM % ${#PLACEMENTS[@]}]}

echo "🎨 Design Lab: $RANDOM_THEME on $RANDOM_PLACEMENT"

# 2. Generate Prompt & Concept
DESIGN_PROMPT="Create a text-based or geometric graphic design for a streetwear t-shirt. Theme: $RANDOM_THEME. Placement: $RANDOM_PLACEMENT. Constraint: $CONSTRAINTS. Brand: ALPHANIX (Institutional, Disciplined). Do NOT use generic 'gym motivation' quotes. Use cryptic, industrial, or architectural text."

# 3. Execute (Simulation for now - in real scenario, this would call image gen or detailed text description)
# Using subagent to hallucinate the visual description for the user to approve/reject
DESCRIPTION=$(openclaw tool subagents action=run task="Generate a detailed visual description for a t-shirt design based on this prompt: '$DESIGN_PROMPT'. Describe the font, the exact graphic elements, and the exact placement. Ensure it is distinct from previous 'small text' designs. Output format: **Concept Name**\n- **Visual**: ...\n- **Tech Specs**: ...")

# 4. Deliver
openclaw tool message action=send channel=telegram message="🎨 **Daily Design Lab**\n\n$DESCRIPTION\n\n_Reply 'Visualize this' to generate image._"
