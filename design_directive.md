# ALPHANIX Design Directive
# Reference for Automated Design Generation (Cron/Scripts)

## 🎨 Aesthetic: "Elevated Athletic Street"
**The Vibe:** A hybrid of **Gymshark's athletic fit** and **Fear of God Essentials' streetwear swagger**, anchored in **Toronto's urban heritage**.
- **Keywords:** Institutional, Architectural, disciplined, "Quiet Luxury," Heavyweight, Oversized.
- **Color Palette:** Monochrome (Black, White, Grey, Denim Blue). High contrast.
- **Print Tech:** DIY Screen Printing (Plastisol). Single Color. No gradients.

## 📏 Constraints (The "Canvas")
- **Screen Size:** 20" x 24"
- **Max Print Area:** ~14" x 18" (Vertical dominance is key).
- **Placement:**
  - Standard Center Chest
  - Back (High or Center)
  - Left Chest (Pocket area)
  - **Avoid:** Shoulder-to-shoulder or seam-spanning prints (requires larger screens/setup).

## 🧬 Design Pillars

### 1. Typography
*Don't just use text; treat text as texture and architecture.*
- **Primary:** Montserrat (Clean, Modern, Institutional).
- **Secondary:** Bebas Neue (Bold, Impact, Athletic).
- **Accents:** High-contrast Serifs (Bodoni/Didot) for "Est. 2026" or luxury details.
- **Display:** Custom/Techno fonts allowed for specific "drops" (e.g., Velocity collection).

### 2. Imagery & Themes
- **Toronto Heritage:**
  - Stylized CN Tower (Wireframe, Silhouette, Negative Space).
  - Rogers Centre (Dome curves, abstract arches).
  - Skyline (Minimalist line art, not photo-realistic).
  - Coordinates: `43.6532° N, 79.3832° W`
- **Athletic Power:**
  - Geometric Eagle/Phoenix (Sharp angles, emblem style).
  - Classical Statues (Marble aesthetic) holding modern equipment.
  - Barbells/Plates (Technical drawings, not cartoonish).
- **"The Club":**
  - "ALPHANIX ATHLETIC CLUB" / "BARBELL DIVISION" / "PHYS. ED. DEPT."

### 3. Collection Mix (Target: 5-Piece Drop)
**Ratio:** 2 LOUD (Statement) + 3 QUIET (Everyday).

| Type | Description | Placement | Vibe |
| :--- | :--- | :--- | :--- |
| **LOUD** | **"The Monument"** | Full Back (14x18) | Architectural verticality. CN Tower or Statue. High impact. |
| **LOUD** | **"The Crest"** | Center Chest | Large geometric logo or "Club" emblem. Collegiate/Varsity feel. |
| **QUIET** | **"The Standard"** | Left Chest | Small, dense text block or minimal logo. Uniform style. |
| **QUIET** | **"The Coordinate"** | Spine/Ribcage | Vertical text line. Technical data look. |
| **QUIET** | **"The Essential"** | Center Chest (Small) | Clean sans-serif brand name. "Fear of God" centered spacing. |

## ⚙️ Prompting Strategy (STRICT)

**Output Requirements:**
For each design concept, output TWO distinct Gemini Prompts + a Technical Breakdown.

1.  **Technical Breakdown:**
    *   **Placement:** (e.g., Center Chest, Back Vertical)
    *   **Max Dimensions:** (e.g., 10" x 12")
    *   **Ink:** (e.g., White Plastisol, Puff Print)
    *   **Typography:** (e.g., Montserrat Bold, spacing 200)

2.  **Prompt 1: The "Studio" Shot (Verification)**
    *   **Goal:** Crisp, clean product verification on white.
    *   **Format:** `A high-resolution product shot of a black heavyweight t-shirt folded neatly on a white surface. The graphic [Design Description] is printed in thick white plastisol ink. 8k, photorealistic, studio lighting, sharp focus.`

3.  **Prompt 2: The "Atmospheric" Shot (Vibe)**
    *   **Goal:** Gritty, real-world context.
    *   **Format:** `A cinematic shot of a black t-shirt hanging on a rusted metal locker in a cold, dim gym locker room. Toronto morning light filtering through a high window. The graphic [Design Description] is visible. 35mm film grain, moody, desaturated, street photography style.`

### Example Output Structure:
```markdown
### Design: [Name]
- **Placement:** Center Chest
- **Ink:** White Plastisol
- **Font:** Montserrat Bold

> **Gemini Prompt (Studio):**
> [Insert Prompt 1 Here]

> **Gemini Prompt (Atmospheric):**
> [Insert Prompt 2 Here]
```

## 📂 Design Archive
*Review past concepts to ensure freshness.*
- [Consolidated Summaries](consolidated_design_summaries.md)
