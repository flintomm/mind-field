# Mind Field — Game Design Summary

## Core Concept
A gamified meditation/self-improvement experience where habits are represented as units in a battlefield visualization. The game mirrors your actual mental state through perpetual warfare between growth (habits) and resistance (monsters).

---

## How It Works

### The Eternal War
- You build **Habit Units** by answering questions about habits you want to form
- Each habit has a hardcoded **Monster** nemesis that represents the psychological resistance to that habit
- The battle is **perpetual** — monsters never die, they only lose battles on days when habits are maintained
- Skip a habit → the monster grows stronger and starts winning that day's battle

### The Feedback Loop
| State | Player Experience | Game Response |
|-------|-------------------|---------------|
| **Good side winning** | Feel control over the day | Habit units dominate the visualization; territory feels empowered |
| **Bad side winning** | Feel pressure, forced to act | Monsters encroach; game nudges toward meditation, habit reinforcement, or positive memory recall |

---

## Spawn Mechanics

### Contextual Opposition
- Bad units **only appear when you slip** — not randomly
- Each monster has a specific spawn trigger tied to its habit
- No punishment without cause; the game reflects your actual choices back at you

### Example Triggers
| Habit | Slip Behavior | Monster Spawns |
|-------|---------------|----------------|
| Morning Exercise | Press snooze / skip workout | The Drowner |
| Daily Meditation | Stop within 2 min / skip session | The Chatterling Swarm |
| Reading Before Bed | Phone in bed / video sleep | The Infinite Scroll |
| Family Calls | Miss + no reschedule in 48h | The Drifter |

---

## The Bestiary (10 Habit-Monster Pairs)

| Habit | Good Unit | Monster | Psychological Concept |
|-------|-----------|---------|----------------------|
| **Morning Exercise** | The Dawn Strider | The Drowner | Inertia, heaviness, comfort's pull |
| **Daily Meditation** | The Still Point | The Chatterling Swarm | Racing thoughts, mental restlessness |
| **Reading Before Bed** | The Lantern Keeper | The Infinite Scroll | Digital addiction, dopamine loops |
| **Weekly Family Call** | The Bridge Builder | The Drifter | Social atrophy, growing distance |
| **Daily Writing** | The Word Smith | The Blank Page Wraith | Perfectionism, creative paralysis |
| **Spending Review** | The Vault Keeper | The Leak | Death by a thousand small purchases |
| **Hydration** | The Clear Stream | The Desiccator | Self-neglect of basic needs |
| **Gratitude Practice** | The Light Gatherer | The Gray | Negativity bias, emotional numbness |
| **Language Study** | The Tongue Weaver | The Tongue-Tied Giant | Fear of sounding foolish |
| **Bedtime Routine** | The Moonward | The FOMO Wraith | Revenge bedtime procrastination |

---

## Battle System

### Battle Types
| Type | Description | Duration |
|------|-------------|----------|
| **The Stand** | Direct confrontation — did you do the habit today? | 1 day |
| **The Siege** | Extended challenge — maintain under pressure | 3-7 days |
| **The Ambush** | Unexpected interruption threatens habit | Variable |
| **The Ritual** | Morning/evening routine — timing matters | Daily |
| **The Temptation** | Choice-based — alternative path vs. habit | Moment |
| **The Echo** | Past failure returns — break the pattern | Variable |
| **The Alliance** | Multiple habits combine for compound battle | Variable |

### Power Mechanics
- **Habit Strength** = base + (win streak × 0.5) + (total wins × 0.1)
- **Monster Power** = initial + (loss streak × scaling) - decay over time
- **Dominance Ratio** = Habit Strength / (Habit Strength + Monster Power)
  - 70%+ = Habit Dominant (you feel control)
  - 30-70% = Balanced (active struggle)
  - <30% = Monster Dominant (you feel pressure to act)

### Domain Scaling (how fast monsters grow)
| Domain | Scaling | Notes |
|--------|---------|-------|
| Physical | 1.2x | Body forgets quickly |
| Social | 1.3x | Relationships decay rapidly |
| Financial | 1.1x | Money compounds either way |
| Mental | 1.0x | Steady growth |
| Creative | 0.9x | Creative monsters are patient |
| Spiritual | 0.8x | Ancient, slow-moving forces |

---

## Visual Progression

### Victory Tiers (by domain)
| Tier | Physical | Mental | Social | Creative | Financial | Spiritual |
|------|----------|--------|--------|----------|-----------|-----------|
| Small | Monster staggers | Thought-clouds part | Bridge solidifies | Light on canvas | Leak sealed | Single chime |
| Medium | Armor shattered | Clarity beam | Connection thrums | Sculpture emerges | Vault glows | Sanctum illuminated |
| Epic | Monster banished | Mental fortress | Unbreakable bond | Living work | Wealth protects | Permanent shrine |

### Defeat Consequences
| Severity | Trigger | Effect |
|----------|---------|--------|
| Minor | 1 skip | +10% monster power next battle |
| Moderate | 2-3 skips | -5% all habit strength for 2 days |
| Serious | 4-6 skips | Monster establishes "corrupted zone" |
| Severe | 7+ skips | Monster can "infect" adjacent habits |
| Critical | 10+ skips | Forced "Comeback Battle" — all or nothing |

---

## Player Intervention (When Losing)

When bad forces are winning, the player can choose responses:
- **Meditate** — calm the battlefield
- **Develop good habits** — reinforce a struggling unit
- **Focus on positive memories/hopes** — emotional currency spent to push back

The "losing" state isn't punishment — it's a **signal to act** with specific tools.

---

## Mystery & Discovery

- Monster identities are **hardcoded**, not player-defined
- Players anticipate their monster reveal like unwrapping a consequence
- Lore entries unlock as you battle, revealing monster backstories
- "Knowing your enemy" — research into psychology unlocks bonuses

---

## Key Design Principles

1. **Emotional Honesty** — the game mirrors real psychology, not arbitrary difficulty
2. **No Shame** — monsters are natural forces, not moral judgments
3. **Perpetual Siege** — no truce; every day is a battle
4. **Reversible Corruption** — territory can be reclaimed, but leaves "scars"
5. **Contextual Opposition** — monsters only appear when you actually slip

---

## Files
- Full bestiary with CSV export: `mind_field_bestiary.md`
- This summary: `mind_field_summary.md`
