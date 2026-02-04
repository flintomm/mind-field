# Mind Field - Strategy Game Vision

**Status**: Concept Phase - Exploring full strategy game mechanics

---

## Visual Map Layout (ASCII Mockup)

```
╔══════════════════════════════════════════════════════════════════╗
║                        MIND FIELD MAP                             ║
╠══════════════════════════════════════════════════════════════════╣
║                                                                   ║
║  ┌─────────────────────────┬─────────────────────────┐          ║
║  │   GOOD MEMORIES 🌟      │    GOOD IDEAS ✨         │          ║
║  │   (Northwest Country)   │    (Northeast Country)   │          ║
║  │                         │                          │          ║
║  │  [Cherished Citadel]    │   [Hope Lighthouse]      │          ║
║  │  [Gratitude Garden]     │   [Dream Spire]          │          ║
║  │  [Pride Peak] 🏔️        │   [Confidence Keep]      │          ║
║  │  [Joy Springs]          │   [Possibility Plains]   │          ║
║  │                         │                          │          ║
║  │  💙 Territory: 65%      │   💙 Territory: 58%      │          ║
║  └─────────────────────────┴─────────────────────────┘          ║
║                                                                   ║
║              ┌──────────────────────────┐                        ║
║              │    PRESENT MOMENT 🎯     │                        ║
║              │   (Contested Capital)    │                        ║
║              │                          │                        ║
║              │    [NOW Orb - Active]    │                        ║
║              │   Under bombardment      │                        ║
║              │   Chaos: 45/100          │                        ║
║              └──────────────────────────┘                        ║
║                                                                   ║
║  ┌─────────────────────────┬─────────────────────────┐          ║
║  │   BAD MEMORIES 💀        │    BAD IDEAS 👁️          │          ║
║  │   (Southwest Country)   │    (Southeast Country)   │          ║
║  │                         │                          │          ║
║  │  [Regret Ravine]        │   [Doubt Dungeon]        │          ║
║  │  [Shame Fortress]       │   [Fear Fortress] 🏰     │          ║
║  │  [Trauma Tower]         │   [Anxiety Armory]       │          ║
║  │  [Guilt Grounds]        │   [Worry Wastes]         │          ║
║  │                         │                          │          ║
║  │  ❤️ Territory: 42%      │   ❤️ Territory: 51%      │          ║
║  └─────────────────────────┴─────────────────────────┘          ║
║                                                                   ║
╠══════════════════════════════════════════════════════════════════╣
║  Resources: 🕊️ 850 Peace Points | 💎 42 Clarity | 🔄 12 Habits  ║
╚══════════════════════════════════════════════════════════════════╝
```

---

## UI Layout (Game View)

```
┏━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┓
┃  MIND FIELD                                      [⚙️] [❓] [👤]  ┃
┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫
┃                                                                 ┃
┃  ┌─────────────────────────────────────────┐  ┌─────────────┐ ┃
┃  │                                         │  │  RESOURCES  │ ┃
┃  │         MAP VIEW (3D/2D)                │  ├─────────────┤ ┃
┃  │                                         │  │ 🕊️ Peace     │ ┃
┃  │   [Strategic bases, units moving,       │  │    850       │ ┃
┃  │    combat happening in real-time]       │  │              │ ┃
┃  │                                         │  │ 💎 Clarity   │ ┃
┃  │   Click bases to upgrade                │  │    42        │ ┃
┃  │   Drag units to move                    │  │              │ ┃
┃  │   Click territory to build              │  │ 🔄 Habits    │ ┃
┃  │                                         │  │    12        │ ┃
┃  │                                         │  └─────────────┘ ┃
┃  └─────────────────────────────────────────┘                  ┃
┃                                                                 ┃
┃  ┌──────────────────┬──────────────────┬──────────────────┐   ┃
┃  │  🏗️ BUILD        │  ⚔️ UNITS         │  🧘 MEDITATE     │   ┃
┃  ├──────────────────┼──────────────────┼──────────────────┤   ┃
┃  │ [Tower] 50 🕊️    │ Active: 23       │ [Start Session]  │   ┃
┃  │ [Wall] 30 🕊️     │ Idle: 5          │                  │   ┃
┃  │ [Garden] 100 🕊️  │ Training: 2      │ Mech: 2:15 ⏱️    │   ┃
┃  │ [Barracks] 150🕊️ │                  │ -40% intensity   │   ┃
┃  └──────────────────┴──────────────────┴──────────────────┘   ┃
┃                                                                 ┃
┣━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┫
┃  Territory: Good 61% | Bad 46% | Neutral 3%  |  Chaos: ████░░  ┃
┗━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┛
```

---

## Gameplay Loop Visual

```
┌─────────────────────────────────────────────────────────┐
│                    DAILY SESSION                        │
└─────────────────────────────────────────────────────────┘
                            │
                            ▼
            ┌───────────────────────────┐
            │  1. CHECK YOUR FIELD      │
            │  - See overnight changes  │
            │  - Review territory       │
            │  - Check base health      │
            └───────────────┬───────────┘
                            │
                            ▼
            ┌───────────────────────────┐
            │  2. ADD TODAY'S THOUGHTS  │
            │  - Input what's firing    │
            │  - Units spawn            │
            │  - Combat begins          │
            └───────────────┬───────────┘
                            │
                            ▼
            ┌───────────────────────────┐
            │  3. STRATEGIC PHASE       │
            │  - Build new bases        │
            │  - Move units             │
            │  - Upgrade structures     │
            │  - Defend Present Moment  │
            └───────────────┬───────────┘
                            │
                            ▼
            ┌───────────────────────────┐
            │  4. MEDITATE              │
            │  - Box breathing          │
            │  - Earn Peace Points      │
            │  - Spawn Meditated Mech   │
            │  - Temporary ceasefire    │
            └───────────────┬───────────┘
                            │
                            ▼
            ┌───────────────────────────┐
            │  5. INVEST & GROW         │
            │  - Spend resources        │
            │  - Level up bases         │
            │  - Unlock new abilities   │
            │  - Expand territory       │
            └───────────────────────────┘
```

---

## Base Building Visual

```
CLICK TERRITORY → BUILD MENU APPEARS

╔═══════════════════════════════════╗
║       BUILD IN THIS LOCATION      ║
╠═══════════════════════════════════╣
║                                   ║
║  🗼 TOWER (Defensive)              ║
║  Cost: 50 🕊️ Peace Points          ║
║  Effect: Auto-fire at enemies     ║
║  Build Time: Instant              ║
║  [BUILD] ────────────────          ║
║                                   ║
║  🧱 WALL (Defensive)               ║
║  Cost: 30 🕊️ Peace Points          ║
║  Effect: Slow projectiles 50%     ║
║  Build Time: Instant              ║
║  [BUILD] ────────────────          ║
║                                   ║
║  🌸 GARDEN (Economic)              ║
║  Cost: 100 🕊️ Peace Points         ║
║  Effect: +5 Peace/minute          ║
║  Build Time: Instant              ║
║  [BUILD] ────────────────          ║
║                                   ║
║  🏰 BARRACKS (Military)            ║
║  Cost: 150 🕊️ Peace Points         ║
║  Effect: Train better units       ║
║  Build Time: Instant              ║
║  [BUILD] ────────────────          ║
║                                   ║
╚═══════════════════════════════════╝
```

---

## Base Upgrade Visual

```
CLICK EXISTING BASE → UPGRADE OPTIONS

╔═══════════════════════════════════╗
║     HOPE LIGHTHOUSE (Level 2)     ║
╠═══════════════════════════════════╣
║                                   ║
║  [🏛️ Building Illustration]        ║
║                                   ║
║  Current Benefits:                ║
║  • Vision range: Medium           ║
║  • Inspiration: +10%              ║
║  • Territory bonus: +5%           ║
║                                   ║
║  ┌───────────────────────────┐   ║
║  │  UPGRADE TO LEVEL 3       │   ║
║  │  Cost: 300 🕊️ + 20 💎      │   ║
║  │                           │   ║
║  │  New Benefits:            │   ║
║  │  • Vision range: Large    │   ║
║  │  • Inspiration: +20%      │   ║
║  │  • Territory bonus: +10%  │   ║
║  │  • Unlocks: Future Sight │   ║
║  │                           │   ║
║  │      [UPGRADE NOW]        │   ║
║  └───────────────────────────┘   ║
║                                   ║
║  [SELL] [INFO] [CANCEL]           ║
╚═══════════════════════════════════╝
```

---

## Unit Pokemon-Style Card

```
╔═══════════════════════════════════╗
║     CHILDHOOD PRIDE               ║
║     Level 5 Guardian              ║
╠═══════════════════════════════════╣
║                                   ║
║  [Unit Illustration/Sprite]       ║
║                                   ║
║  ┌─────────────────────────────┐ ║
║  │ HP:  ████████░░  80/100     │ ║
║  │ ATK: ██████████  85         │ ║
║  │ DEF: ████████████ 95        │ ║
║  │ SPD: ████░░░░░░  40         │ ║
║  └─────────────────────────────┘ ║
║                                   ║
║  Type: Good Memory ⭐             ║
║  Location: Good Memories Base    ║
║                                   ║
║  Skills:                          ║
║  • Shield Wall (Defense +20)     ║
║  • Inspire Allies (+10% morale)  ║
║  • Resist Doubt (immune to weak  ║
║    negative thoughts)             ║
║                                   ║
║  Story:                           ║
║  "The day you helped that stranger║
║   and they thanked you. This      ║
║   memory stands guard."           ║
║                                   ║
║  [MOVE] [UPGRADE] [INFO]          ║
╚═══════════════════════════════════╝
```

---

## Complexity Check

**MAJOR SCOPE INCREASE**:

From: Meditation visualization  
To: **Full strategy game with base building, resource management, unit leveling**

**MVP vs Full Vision**:

| Feature | MVP (v1.0) | Strategy Game (v2.0+) |
|---------|------------|----------------------|
| Map | Simple 4 quadrants | Countries with multiple bases |
| Units | Generic shapes | Named characters with stats |
| Interaction | Watch combat | Build, move, upgrade |
| Resources | None | Peace Points, Clarity, Habits |
| Buildings | Fixed strategic posts | Player-built & upgradeable |
| Progression | Meditation only | Multi-system (habits, buildings, units) |
| Complexity | Low | **HIGH** |
| Dev Time | 2-4 weeks | **6+ months** |

---

## Decision Point

**Option 1: Keep Current Scope (Recommended for Launch)**
- Simple 4 quadrants
- Diagnostic + custom input
- Box breathing meditation
- Meditated Mech (one special unit)
- Strategic posts (fixed, named locations)
- Launch in 2-4 weeks

**Option 2: Pivot to Full Strategy Game**
- Build all the systems above
- Much longer dev time (months)
- Higher production value needed
- Requires team (artist, sound designer, etc.)
- Launch in 6-12 months

**Option 3: Hybrid**
- Launch MVP (Option 1) quickly
- Add strategy features in updates
- Prove concept first, expand later
- "Early Access" model

---

## Next Steps (If Going Strategy Route)

1. **Wireframe the full UI** (Figma mockups)
2. **Design resource economy** (earn rates, costs, balance)
3. **Map out progression systems** (leveling, unlocks)
4. **Create unit stat system** (HP, ATK, DEF, SPD, skills)
5. **Build database of bases** (names, types, stats, upgrade paths)
6. **Write unit stories** (Pokemon-style descriptions)
7. **Hire artist** for proper visuals
8. **Build backend** for save states, progression
9. **Extensive balancing** (gameplay testing)

---

## Identity Evolution System (Refined)

**Core Philosophy**: Visual evolution = identity transformation

### Progression Stages:

**Infantry (Days 1-14)**: New Habit
- Generic unit, unnamed
- "Trying it out"
- Fragile, easily disrupted

**Tank (Days 30+)**: Established Routine  
- Earns a name: "Morning Runner"
- Reliable, harder to disrupt
- Part of your schedule

**Elite Hero (Days 90+)**: Core Identity
- Full character: "Aria, The Dawn Warrior"
- Name, backstory, traits
- **This is who you ARE now**
- Supports other units (halo effect)
- Reduces nearby chaos

### Generational System (Advanced Feature)

**Heroes Don't Last Forever**:
- After extended time (1+ years), heroes retire/fade
- Spawn offspring/legacy unit
- Inherits traits but starts at lower level
- Rebuilds but not from scratch
- Example: "Aria, The Dawn Warrior" → "Aria II" or "Aria's Legacy"

**Why**:
- Reflects reality: habits need renewal
- Prevents complacency
- Adds emotional weight to the journey
- Captures impermanence (yin-yang philosophy)

**Story Example**:
"Aria served me for 18 months. She's retiring now. Her daughter carries her strength. I'll rebuild her, but the journey begins again."

---

## Revised Core Mechanics (No Combat Focus)

**Not a Game to Win** → **A Space to Tend**

Like Stardew Valley for your mind: cultivation, not conquest

### What Actually Happens:

**No Combat Between Units**:
- Units don't fight each other
- They just exist and affect Present Moment
- Good thoughts don't "destroy" bad thoughts
- Eternal coexistence (yin-yang)

**Meditation**:
- Slows firing rate temporarily (breathing room)
- Spawns Meditated Mech (-40% chaos for 3 min)
- Does NOT prevent decay
- Gives clarity to observe

**Habit Maintenance**:
- Do habit daily → structure stays healthy/bright
- Skip habit → structure degrades/fades
- Direct 1:1 mapping
- Visual feedback of consistency

**Natural Decay (Entropy)**:
- Structures degrade without maintenance
- Not destroyed - just visually deteriorate
- Honest mirror of neglect
- Meditation doesn't stop decay

**Building = Expression**:
- Not strategic advantage
- Visual manifestation of focus
- "I'm working on trust" → invest in Trust Bridge
- Reflects internal priorities

### User Is Playing To:

1. **Understand** - What's firing at me? Why?
2. **Manage** - Can I slow this? (meditation) Can I maintain? (habits)
3. **Beautify** - Level up habits, see them evolve
4. **Navigate** - Keep Present Moment manageable, not win

**End State**: Beautiful mental landscape with evolved heroes where you're consistent, faded areas where you're neglecting, Present Moment you're learning to calm.

---

_Created: 2026-02-03 17:22 EST_
_Last Updated: 2026-02-03 19:09 EST_
_Status: Vision document - identity evolution system refined_
