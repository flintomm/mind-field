# Mind Field v2.0

> Gamified meditation through perpetual habit warfare

## What Is This?

Mind Field is a self-improvement game where your habits are represented as units battling against psychological resistance (monsters). The battlefield visualizes your actual mental state — when you're winning, you feel it. When you're struggling, the game nudges you toward tools that help: meditation, habit reinforcement, or positive memory recall.

**Key Innovation:** The battle is eternal. You don't "beat" procrastination once and for all — you keep it at bay through consistent practice. Skip a day, and the monster grows.

## Project Structure

```
mind-field-v2/
├── README.md                 # You're here
├── docs/
│   ├── GAME_OVERVIEW.md      # High-level concept and mechanics
│   └── ARCHITECTURE.md       # Technical architecture (TBD)
├── design/
│   ├── 01-bestiary.md        # Habit-monster pairings (10 pairs)
│   ├── 02-rock-bottom-units.md # Redemption units (7 types)
│   └── 03-battle-mechanics.md  # Combat system details (TBD)
├── data/
│   ├── bestiary.csv          # Import-ready bestiary data
│   ├── rock_bottom_units.csv # Import-ready redemption data
│   └── sample_player_state.json # Example save file structure
└── src/
    ├── core/                 # Game engine (TBD)
    ├── ui/                   # Visualization (TBD)
    └── api/                  # Habit tracking integration (TBD)
```

## Core Loops

### 1. The Eternal War
- Build **Habit Units** by setting habits you want to form
- Each habit has a hardcoded **Monster** nemesis representing its psychological resistance
- Maintain the habit → win the day's battle → monster loses ground
- Skip the habit → monster grows stronger → encroaches on your territory

### 2. The Feedback Loop
| State | Player Feel | Game Response |
|-------|-------------|---------------|
| **Winning** | Control, empowerment | Habit units dominate; territory glows |
| **Losing** | Pressure, need to act | Monsters encroach; nudges toward meditation/journaling |

### 3. Rock Bottom Recovery
When everything collapses, **Redemption Units** spawn:
- **Stubborn Spark** — for total collapse (pick one thing, start there)
- **Remnant** — for repeated failure (each fall makes you stronger)
- **Question** — for apathy (curiosity over obligation)
- **Simplifier** — for overwhelm (pause habits, focus hard)
- **Witness** — for shame spirals (self-compassion tracking)
- **Reach** — for isolation (connection as recovery)
- **Phoenix Ash** — for burnout (rest, then rebuild wiser)

## Current Status

**Design Phase: Complete**
- ✅ 10 habit-monster pairs with psychological resonance
- ✅ 7 rock bottom redemption units
- ✅ Battle mechanics and power scaling
- ✅ Technical spawn triggers

**Implementation Phase: Not Started**
- ⬜ Game engine
- ⬜ Battlefield visualization
- ⬜ Habit tracking integration
- ⬜ Audio/visual design

## Quick Start for Developers

### Bestiary Data
Import `data/bestiary.csv` into your database:
```csv
habit_id,habit_name,habit_domain,habit_unit_name,monster_name,...
H001,Morning Exercise,Physical,The Dawn Strider,The Drowner,...
```

### Key Formulas
```javascript
// Habit Strength
HS = base_power + (consecutive_wins * 0.5) + (total_wins * 0.1)

// Monster Power
MP = initial_power + (consecutive_losses * domain_scaling) - (days_since_battle * decay)

// Dominance Ratio (0-1)
dominance = HS / (HS + MP)
// >0.7 = Habit Dominant, <0.3 = Monster Dominant
```

## Philosophy

1. **Emotional Honesty** — Mirrors real psychology, not arbitrary difficulty
2. **No Shame** — Monsters are natural forces, not moral judgments
3. **Perpetual Siege** — No truce; every day is a battle
4. **Reversible Corruption** — Territory can be reclaimed, but leaves "scars"
5. **Contextual Opposition** — Monsters only appear when you actually slip

## Credits

Design: Tom  
Documentation: Flint

## License

TBD
