# Mind Field — Rock Bottom Units (Redemption Archetypes)

## Core Concept
When the player hits rock bottom, **Redemption Units** spawn to provide a path back. Unlike the hardcoded habit-monster pairs, these unlock based on the *nature of the collapse* — different failures spawn different saviors.

---

## Spawn Triggers

| Rock Bottom State | Trigger Condition | Redemption Unit |
|-------------------|-------------------|-----------------|
| **Total Collapse** | All habits in Monster Dominant state | The Stubborn Spark |
| **Repeated Failure** | 3+ broken comeback attempts on same habit | The Remnant |
| **Apathy/Numbness** | 7+ days of no engagement with app | The Question |
| **Overwhelmed** | 5+ active habits, all failing simultaneously | The Simplifier |
| **Shame Spiral** | Self-flagellating journal entries detected | The Witness |
| **Isolation** | All social habits failed, no friend check-ins | The Reach |
| **Burnout** | Previously strong habits suddenly abandoned | The Phoenix Ash |

---

## The Redemption Units

### The Stubborn Spark
**Trigger:** Total Collapse (all habits lost)
**Archetype:** Hope in absolute void

| Stage | Visual | Mechanic |
|-------|--------|----------|
| **Ember** | Single point of light in total darkness | Spawns "One Thing" prompt — player picks ONE habit to attempt tomorrow |
| **Candle** | Small flame, illuminates immediate area | +50% power to first comeback attempt on chosen habit |
| **Lantern** | Warm glow, shadows retreat | Unlock "Guided Recovery" — step-by-step rebuild of second habit |
| **Bonfire** | Beacon visible across battlefield | Adjacent habits gain passive recovery bonus |
| **Sunbreak** | Light returns to the world | Permanent "Resilience" buff — future collapses are softer |

**Lore:** *"Even when all fires die, something refuses to go out."*

---

### The Remnant
**Trigger:** Repeated Failure (3+ broken comebacks on same habit)
**Archetype:** The comeback specialist

| Stage | Visual | Mechanic |
|-------|--------|----------|
| **Survivor** | Broken armor, still standing | Tracks "fall and rise" count — each cycle adds permanent HP |
| **Veteran** | Armor repaired with visible scars | Unlock "Battle Memory" — shows what caused past failures |
| **Commander** | Leads other returning units | Nearby habit units gain "Second Wind" (bonus on retry) |
| **Legend** | Crowned in scar-tissue gold | Creates "Comeback Streak" — consecutive reclaims multiply rewards |

**Lore:** *"What doesn't kill you makes you... stranger. And stronger."*

---

### The Question
**Trigger:** Apathy/Numbness (7+ days disengaged)
**Archetype:** Re-engagement through curiosity

| Stage | Visual | Mechanic |
|-------|--------|----------|
| **Whisper** | Question mark made of mist | Simple prompt appears: "What if tomorrow?" — answering feeds growth |
| **Voice** | Shapes begin to form | Unlock "Curiosity Journal" — open-ended prompts, no pressure |
| **Figure** | Solidifying silhouette | Growth now tied to *any* engagement, not just success |
| **Revelation** | Reveals form based on player's answers | Unit becomes unique to player — their own personal redemption archetype |

**Lore:** *"It started with a single question. The answer didn't matter. Asking did."*

---

### The Simplifier
**Trigger:** Overwhelmed (5+ habits, all failing)
**Archetype:** Focus through subtraction

| Stage | Visual | Mechanic |
|-------|--------|----------|
| **Scissors** | Floating shears, cutting threads | Forces "Habit Audit" — must pause 2+ habits to continue |
| **Pruner** | Garden shears, trimming dead growth | Paused habits don't spawn monsters; active ones get +30% strength |
| **Architect** | Building with fewer, stronger materials | Unlock "Core Three" — identify your non-negotiable habits |
| **Master** | Elegant simplicity | Permanently reduce max active habits, but each is more powerful |

**Lore:** *"You don't need more soldiers. You need the right ones."*

---

### The Witness
**Trigger:** Shame Spiral (self-punishing language detected)
**Archetype:** Self-compassion made manifest

| Stage | Visual | Mechanic |
|-------|--------|----------|
| **Mirror** | Reflects without judgment | Unlocks "Gentle Log" — track attempts without streaks/success metrics |
| **Companion** | Silent presence beside you | Converts self-criticism into "learning notes" — automatic reframe |
| **Advocate** | Speaks your own words back with kindness | Creates "Evidence File" — times you succeeded, shown during doubt |
| **Sanctuary** | Safe space in the battlefield | Permanent "Grace Period" — first miss after streak doesn't spawn monster |

**Lore:** *"Someone is keeping track of your courage. It might as well be you."*

---

### The Reach
**Trigger:** Isolation (all social habits failed)
**Archetype:** Connection as salvation

| Stage | Visual | Mechanic |
|-------|--------|----------|
| **Tendril** | Thin line extending outward | Prompts "Who cares?" — player identifies one person |
| **Bridge** | Structure forming to distant shore | Unlocks "Accountability Partner" — lightweight check-in system |
| **Network** | Web of lights connecting | Social habits gain "Shared Strength" — friends' progress helps yours |
| **Community** | Battalion of allied forces | Unlock "Squad Mode" — habits can be linked with friends |

**Lore:** *"Even the lone wolf was part of a pack once."*

---

### The Phoenix Ash
**Trigger:** Burnout (strong habits suddenly abandoned)
**Archetype:** Rebirth from deliberate destruction

| Stage | Visual | Mechanic |
|-------|--------|----------|
| **Ash Pile** | Scattered remains of fallen units | Mandatory "Rest Phase" — 3 days of no habit tracking, just reflection |
| **Glow** | Warmth beneath the ash | Player chooses ONE habit to "resurrect" differently (smaller, sustainable) |
| **Coal** | Dense heat, potential energy | Resurrected habit gets "Wisdom Bonus" — learns from past failure |
| **Flame** | New fire, different color | Unlock "Seasonal Habits" — some habits naturally cycle, and that's okay |
| **Phoenix** | Winged renewal | Permanent "Burnout Prevention" — early warning system for overextension |

**Lore:** *"Sometimes you have to burn it all down to find what was worth saving."*

---

## Rock Bottom Detection — Technical Triggers

All triggers evaluated daily at 00:00 local time or on app open.

### The Stubborn Spark
```
TRIGGER:
  COUNT(habits WHERE dominance_ratio < 0.3) == TOTAL_HABITS
  AND TOTAL_HABITS >= 2
  AND duration_in_state >= 3 days

PRIORITY: 1 (highest)
COOLDOWN: 14 days after Sustained Recovery
```

### The Remnant
```
TRIGGER:
  single_habit.comeback_attempts >= 3
  AND single_habit.current_streak < 2
  AND last_comeback_failure <= 7 days ago

PRIORITY: 2
COOLDOWN: 7 days per habit
```

### The Question
```
TRIGGER:
  days_since_last_app_open >= 7
  OR (days_since_last_habit_log >= 5 AND total_habits > 0)

PRIORITY: 3
COOLDOWN: 3 days after any engagement
```

### The Simplifier
```
TRIGGER:
  active_habits >= 5
  AND COUNT(habits WHERE dominance_ratio < 0.5) >= 4
  AND avg_daily_completion_rate < 0.3 (last 7 days)

PRIORITY: 2
COOLDOWN: 30 days after successful simplification
```

### The Witness
```
TRIGGER:
  journal_entries.last_3_days > 0
  AND (
    sentiment_score < -0.6
    OR keyword_match(["failure", "worthless", "can't", "never", "stupid"], count >= 3)
    OR self_blame_ratio > 0.4
  )

PRIORITY: 3
COOLDOWN: 7 days
```

### The Reach
```
TRIGGER:
  COUNT(social_habits WHERE dominance_ratio < 0.3) == TOTAL_SOCIAL_HABITS
  AND TOTAL_SOCIAL_HABITS >= 1
  AND days_since_friend_interaction >= 10
  AND friend_checkin_response == false

PRIORITY: 2
COOLDOWN: 14 days
```

### The Phoenix Ash
```
TRIGGER:
  previous_streak >= 14 days (habit was strong)
  AND current_abandonment >= 5 days
  AND abandonment_was_abrupt (no gradual decline, sudden stop)
  AND decline_rate > 0.8 (dropped from 80%+ to 0% within 3 days)

PRIORITY: 1
COOLDOWN: 60 days (burnout recovery is slow)
```

### Spawn Resolution
```
IF multiple_triggers:
  select HIGHEST_PRIORITY
  if tie: select MOST_SPECIFIC (fewest users qualify)
  if still tie: random

ON_SPAWN:
  dim_battlefield()
  spotlight_new_unit()
  play_discovery_audio()
  unlock_codex_entry()
```

---

## Redemption Unit Mechanics

### Shared Rules
- Only **one** Rock Bottom Unit can be active at a time
- They persist until the player achieves **Sustained Recovery** (7+ days of positive momentum)
- After recovery, they become **Dormant** — can be re-summoned if player falls again
- Each unit has a **Codex entry** that unlocks lore as it grows

### Growth Patterns
| Unit | Primary Growth | Secondary Growth |
|------|----------------|------------------|
| Stubborn Spark | Comeback attempts | Hope journal entries |
| Remnant | Failed→success cycles | Reflection on failures |
| Question | Any engagement | Curiosity expressions |
| Simplifier | Pausing habits | Core habit success |
| Witness | Self-compassion acts | Evidence logging |
| Reach | Social connections | Helping others |
| Phoenix Ash | Rest acceptance | Sustainable rebuild |

---

## Player Experience Flow

### The Fall
1. Player stops engaging with habits
2. Monsters grow, territory corrupts
3. Game detects rock bottom condition
4. Screen dims... something new appears

### The Discovery
> *"In the darkness, you notice something you hadn't before..."*

Unit spawns with unique visual and first prompt. No pressure. Just presence.

### The Climb
Player interacts with unit's specific mechanics — not "fixing" themselves, but walking a path designed for their *type* of struggle.

### The Return
As player rebuilds, unit evolves. Eventually, it's no longer needed — but remains as a **monument** in the battlefield, proof of the comeback.

---

## Integration with Existing System

Rock Bottom Units don't replace the habit-monster dynamic. They **overlay** it:

- Monsters still spawn, still fight
- But now the player has **something on their side** even when all habits are failing
- Redemption Units provide **alternative paths to victory** that don't require perfect habit execution

This creates a safety net: even at your lowest, the game offers a way forward.
