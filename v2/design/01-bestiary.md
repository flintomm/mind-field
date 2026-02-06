# Mind Field: Habit-Monster Bestiary System

## Overview

The Mind Field bestiary tracks the eternal war between habit units (forces of growth) and opposition monsters (forces of resistance). Each habit has a unique, hardcoded nemesis that emerges when the player falters. The system is designed to create psychological resonance — monsters represent the *felt experience* of failing a habit, while victories feel like reclaiming agency.

---

## Spreadsheet Structure (Import-Ready)

### Core Tables

#### Table 1: Habit-Monster Registry
| Column | Data Type | Description |
|--------|-----------|-------------|
| habit_id | TEXT (PK) | Unique identifier (e.g., H001) |
| habit_name | TEXT | Player-facing habit name |
| habit_domain | CATEGORY | Physical / Mental / Social / Creative / Financial / Spiritual |
| habit_description | TEXT | What the habit entails |
| habit_unit_name | TEXT | The "good force" name (e.g., "The Morning Flame") |
| habit_unit_visual | TEXT | Visual theme for victories |
| monster_id | TEXT (FK) | Links to monster_id |
| monster_name | TEXT | The opposition force name |
| monster_title | TEXT | Flavor subtitle (e.g., "Devourer of Momentum") |
| monster_concept | TEXT | Psychological concept represented |
| spawn_trigger | TEXT | Exact condition that spawns monster |
| monster_visual | TEXT | Visual theme for defeats |
| initial_power | INTEGER | Starting monster power (1-10) |
| power_scaling | FORMULA | How power grows with consecutive losses |
| current_power | INTEGER | Current power level (dynamic) |
| current_streak | INTEGER | Current win/loss streak |
| total_battles | INTEGER | Lifetime battles for this pair |
| habit_wins | INTEGER | Lifetime victories |
| monster_wins | INTEGER | Lifetime defeats |
| dominance_state | CATEGORY | HABIT_DOMINANT / BALANCED / MONSTER_DOMINANT |
| last_battle_date | DATE | Most recent encounter |
| battle_history | JSON | Array of recent battle results |

#### Table 2: Battle Mechanics
| Column | Data Type | Description |
|--------|-----------|-------------|
| battle_id | TEXT (PK) | Unique battle identifier |
| habit_id | TEXT (FK) | Links to habit |
| battle_date | DATE | When battle occurred |
| battle_type | CATEGORY | See Battle Types below |
| player_level | INTEGER | Player's overall level at time of battle |
| monster_power_at_start | INTEGER | Monster power before battle |
| outcome | CATEGORY | VICTORY / DEFEAT / STALEMATE |
| victory_method | CATEGORY | How the player won (if applicable) |
| defeat_reason | CATEGORY | Why the player lost (if applicable) |
| power_shift | INTEGER | Change in relative power |
| rewards_granted | TEXT | XP, items, bonuses earned |
| consequences_applied | TEXT | Penalties, debuffs from loss |
| player_notes | TEXT | Optional player journaling |

#### Table 3: Battle Types Reference
| battle_type_id | battle_name | description | victory_visual | defeat_visual | duration |
|----------------|-------------|-------------|----------------|---------------|----------|
| B001 | The Stand | Direct confrontation — did you do the habit today? | Monster recoils, cracks form in its armor | Monster grows larger, shadows lengthen | 1 day |
| B002 | The Siege | Extended challenge — maintain habit for 3+ days under pressure | Monster forced to retreat to its lair | Monster establishes a foothold in your territory | 3-7 days |
| B003 | The Ambush | Unexpected interruption — habit threatened by circumstance | You turn the ambush around | You're caught unprepared | Variable |
| B004 | The Ritual | Morning/evening routine battle — timing is everything | Dawn breaks, monster dissolves in light | Darkness persists, monster feeds on chaos | Daily |
| B005 | The Temptation | Choice-based — alternative path vs. habit | You walk past the threshold untouched | You step through the door | Moment |
| B006 | The Echo | Past failure returns — can you break the pattern? | The cycle is shattered | The loop continues | Variable |
| B007 | The Alliance | Multiple habits combine for compound battle | Combined forces overwhelm | Isolated, you fall | Variable |

#### Table 4: Power Level & Scaling System
| metric | calculation | effect_on_gameplay |
|--------|-------------|-------------------|
| Habit Strength (HS) | base_power + (consecutive_wins × 0.5) + (total_wins × 0.1) | Determines attack power in battles |
| Monster Power (MP) | initial_power + (consecutive_losses × scaling_factor) + (days_since_battle × decay) | Determines monster threat level |
| Dominance Ratio | HS / (HS + MP) | 0.7+ = Habit Dominant (player feels control) / 0.3-0.7 = Balanced / 0.3- = Monster Dominant (player feels pressure) |
| Victory Threshold | varies by battle type | Must exceed this with HS to win |
| Monster Scaling Factor | domain-specific (see below) | How fast monsters grow when fed |

**Domain Scaling Factors:**
- Physical: 1.2x (fast growth — body forgets quickly)
- Mental: 1.0x (steady growth)
- Social: 1.3x (relationships decay rapidly)
- Creative: 0.9x (creative monsters are patient)
- Financial: 1.1x (money compounds in either direction)
- Spiritual: 0.8x (spiritual monsters are ancient, slow)

---

## Sample Habit-Monster Pairings (8 Detailed Examples)

### H001: Morning Exercise
| Field | Value |
|-------|-------|
| habit_id | H001 |
| habit_name | Morning Exercise |
| habit_domain | Physical |
| habit_description | 20+ minutes of physical movement before 9am |
| habit_unit_name | The Dawn Strider |
| habit_unit_visual | A luminous figure made of golden light, leaving footprints of warmth |
| monster_name | The Drowner |
| monster_title | That Which Pulls Downward |
| monster_concept | Inertia, heaviness, the weight of blankets and warm beds |
| spawn_trigger | Skipping morning exercise OR pressing snooze more than once |
| monster_visual | A bloated, waterlogged figure that leaks black stagnation; where it steps, the ground becomes mud |
| initial_power | 3 |
| power_scaling | +1.5 per consecutive skip, caps at 15 |

**Psychological Resonance:** The Drowner represents the literal feeling of being unable to move in the morning — that magnetic pull of comfort that makes getting up feel like fighting through water.

---

### H002: Daily Meditation
| Field | Value |
|-------|-------|
| habit_id | H002 |
| habit_name | Daily Meditation |
| habit_domain | Spiritual |
| habit_description | 10+ minutes of seated mindfulness practice |
| habit_unit_name | The Still Point |
| habit_unit_visual | A perfect sphere of calm blue light, unrippled by any disturbance |
| monster_name | The Chatterling Swarm |
| monster_title | The Unending Noise |
| monster_concept | Mental restlessness, compulsive thinking, inability to be with oneself |
| spawn_trigger | Missing meditation session OR attempting but stopping within 2 minutes |
| monster_visual | A cloud of darting, shadowy figures that whisper constantly; each one represents a distracting thought |
| initial_power | 2 |
| power_scaling | +0.8 per skip (slow growth — spiritual monsters are patient) |

**Psychological Resonance:** The Swarm captures the overwhelming nature of racing thoughts — how one leads to another until sitting still feels impossible.

---

### H003: Reading Before Bed
| Field | Value |
|-------|-------|
| habit_id | H003 |
| habit_name | Reading Before Bed |
| habit_domain | Mental |
| habit_description | 30+ minutes of book reading (no screens) before sleep |
| habit_unit_name | The Lantern Keeper |
| habit_unit_visual | A gentle figure holding a warm lantern, illuminating pages of floating text |
| monster_name | The Infinite Scroll |
| monster_title | Devourer of Attention |
| monster_concept | Digital addiction, dopamine loops, passive consumption |
| spawn_trigger | Using phone/tablet in bed OR falling asleep to videos |
| monster_visual | A massive, ever-unchanging face with an endless throat; tendrils of light connect to the player's eyes |
| initial_power | 4 |
| power_scaling | +1.2 per skip |

**Psychological Resonance:** The Infinite Scroll embodies the terrifying ease of losing hours to endless feeds — the way time disappears and intention dissolves.

---

### H004: Calling Family
| Field | Value |
|-------|-------|
| habit_id | H004 |
| habit_name | Weekly Family Call |
| habit_domain | Social |
| habit_description | Meaningful phone conversation with family member |
| habit_unit_name | The Bridge Builder |
| habit_unit_visual | Golden ropes weaving between distant points, growing stronger with each connection |
| monster_name | The Drifter |
| monster_title | The Growing Distance |
| monster_concept | Social atrophy, taking relationships for granted, avoidance of vulnerability |
| spawn_trigger | Missing scheduled call AND not rescheduling within 48 hours |
| monster_visual | A figure made of fog and fraying threads; with each miss, more threads break and the fog thickens |
| initial_power | 3 |
| power_scaling | +1.5 per skip (social bonds decay fast) |

**Psychological Resonance:** The Drifter represents how relationships don't end dramatically — they slowly fade through neglect until you realize you no longer know how to reach someone.

---

### H005: Creative Writing
| Field | Value |
|-------|-------|
| habit_id | H005 |
| habit_name | Daily Writing Practice |
| habit_domain | Creative |
| habit_description | 500+ words of creative writing, any topic |
| habit_unit_name | The Word Smith |
| habit_unit_visual | A figure at a forge, hammering glowing sentences into existence; sparks become new ideas |
| monster_name | The Blank Page Wraith |
| monster_title | The Perfectionist's Shadow |
| monster_concept | Creative block, fear of mediocrity, paralysis by analysis |
| spawn_trigger | Not writing OR writing and deleting everything (perfectionism) |
| monster_visual | A tall, thin figure of crumpled paper; it whispers "not good enough" and its touch turns words to ash |
| initial_power | 5 |
| power_scaling | +0.9 per skip (creative monsters are patient, but persistent) |

**Psychological Resonance:** The Wraith embodies the crushing weight of the blank page — the way perfectionism kills creativity before it begins.

---

### H006: Saving Money
| Field | Value |
|-------|-------|
| habit_id | H006 |
| habit_name | Daily Spending Review |
| habit_domain | Financial |
| habit_description | Review all purchases and log against budget |
| habit_unit_name | The Vault Keeper |
| habit_unit_visual | A stern but fair guardian, walls of the vault etched with growing numbers |
| monster_name | The Leak |
| monster_title | The Thousand Small Hungers |
| monster_concept | Death by a thousand cuts, impulse spending, avoidance of financial reality |
| spawn_trigger | Any unlogged purchase OR going over daily budget |
| monster_visual | A shimmering, almost invisible entity with countless tiny mouths; it feeds on coins that slip through cracks |
| initial_power | 2 |
| power_scaling | +1.1 per infraction (compound growth — small leaks sink ships) |

**Psychological Resonance:** The Leak captures how financial ruin rarely comes from one big mistake, but from the accumulation of "just this once" moments.

---

### H007: Drinking Water
| Field | Value |
|-------|-------|
| habit_id | H007 |
| habit_name | Hydration Target |
| habit_domain | Physical |
| habit_description | Drink 2.5L water throughout the day |
| habit_unit_name | The Clear Stream |
| habit_unit_visual | A flowing river of crystal water that nourishes everything it touches |
| monster_name | The Desiccator |
| monster_title | The Thief of Vitality |
| monster_concept | Self-neglect, ignoring bodily signals, prioritizing everything over basic needs |
| spawn_trigger | Drinking less than 1.5L OR substituting water with caffeine/sugar all day |
| monster_visual | A brittle, cracked figure that absorbs moisture from the air; its presence makes everything feel harder |
| initial_power | 2 |
| power_scaling | +1.3 per day (basic needs compound quickly) |

**Psychological Resonance:** The Desiccator represents the slow accumulation of self-neglect — how ignoring basic needs makes everything else feel like a struggle.

---

### H008: Gratitude Journaling
| Field | Value |
|-------|-------|
| habit_id | H008 |
| habit_name | Gratitude Practice |
| habit_domain | Spiritual |
| habit_description | Write 3 specific things you're grateful for |
| habit_unit_name | The Light Gatherer |
| habit_unit_visual | A figure collecting golden motes of light in a lantern; the lantern grows brighter with each entry |
| monster_name | The Gray |
| monster_title | The Color Eater |
| monster_concept | Negativity bias, taking things for granted, emotional numbness |
| spawn_trigger | Missing gratitude entry OR writing superficial/generic items |
| monster_visual | A colorless void that absorbs warmth and vibrancy; it makes the world seem flat and meaningless |
| initial_power | 3 |
| power_scaling | +0.8 per skip (spiritual, but insidious) |

**Psychological Resonance:** The Gray embodies depression's lie — that nothing matters, that good things aren't worth noticing, that color has left the world.

---

### H009: Learning a Language
| Field | Value |
|-------|-------|
| habit_id | H009 |
| habit_name | Language Study |
| habit_domain | Mental |
| habit_description | 20+ minutes of structured language practice |
| habit_unit_name | The Tongue Weaver |
| habit_unit_visual | A figure weaving threads of different colors into a tapestry of understanding |
| monster_name | The Tongue-Tied Giant |
| monster_title | The Fear of Sounding Foolish |
| monster_concept | Fear of mistakes, embarrassment, the discomfort of incompetence |
| spawn_trigger | Skipping lesson OR avoiding speaking practice due to fear |
| monster_visual | A massive figure with hands wrapped in heavy chains; it opens its mouth to speak but only silence emerges |
| initial_power | 4 |
| power_scaling | +1.0 per skip |

**Psychological Resonance:** The Giant represents the social fear that prevents language learning — the terror of being judged for imperfect speech.

---

### H010: Early Sleep
| Field | Value |
|-------|-------|
| habit_id | H010 |
| habit_name | Bedtime Routine |
| habit_domain | Physical |
| habit_description | In bed by 10:30pm, lights out by 11pm |
| habit_unit_name | The Moonward |
| habit_unit_visual | A figure that grows more luminous as night deepens, guiding others to rest |
| monster_name | The FOMO Wraith |
| monster_title | The Fear of Missing Everything |
| monster_concept | Anxiety about what happens while you sleep, FOMO, revenge bedtime procrastination |
| spawn_trigger | Going to bed after 11:30pm OR mindless late-night scrolling |
| monster_visual | A flickering, insubstantial figure that shows you images of what you might be missing; its eyes reflect screens |
| initial_power | 3 |
| power_scaling | +1.2 per late night |

**Psychological Resonance:** The FOMO Wraith captures revenge bedtime procrastination — that irrational fear that sleeping means missing out on "your time."

---

## Victory Visuals by Domain

| Domain | Victory Tier 1 (Small) | Victory Tier 2 (Medium) | Victory Tier 3 (Epic) |
|--------|------------------------|------------------------|----------------------|
| Physical | Monster staggers, cracks appear | Monster forced to retreat, armor shattered | Monster banished to depths, territory reclaimed |
| Mental | Thought-clouds part | Clarity beam pierces confusion | Mental fortress established, permanent foothold |
| Social | Bridge solidifies, fog clears | Connection thrums with visible energy | Unbreakable bond forged, monster cannot approach |
| Creative | First light on blank canvas | Sculpture emerges from marble | Living work created, monster fears to look |
| Financial | Leak sealed, drips stop | Vault walls thicken, numbers glow | Wealth generates its own protection |
| Spiritual | Single chime in silence | Inner sanctum illuminated | Permanent shrine established, peace unshakeable |

## Defeat Consequences by Severity

| Severity | Consequence Type | Gameplay Effect | Visual Effect |
|----------|-----------------|-----------------|---------------|
| Minor (1 skip) | Warning | +10% monster power next battle | Shadow looms larger |
| Moderate (2-3 skips) | Debuff | -5% all habit strength for 2 days | Gray filter on game world |
| Serious (4-6 skips) | Territory Loss | Monster establishes "corrupted zone" | Specific area of app becomes harder to use |
| Severe (7+ skips) | Cascade Risk | Monster can "infect" adjacent habits | Visual corruption spreads |
| Critical (10+ skips) | Breaking Point | Forced "Comeback Battle" — all or nothing | World nearly consumed by darkness |

## Progression Example: The Drowner vs. Morning Exercise

### Week 1: New Habit (Days 1-7)
```
Day 1: Battle Type = The Ritual, Outcome = VICTORY
- HS: 5, MP: 3, Dominance: 62% (Habit Dominant)
- Visual: Dawn Strider strikes first blow, Drowner recoils

Day 2: Battle Type = The Stand, Outcome = VICTORY  
- HS: 5.5, MP: 3, Dominance: 65%
- Visual: Drowner's water begins to steam in morning light

Day 3: Battle Type = The Stand, Outcome = DEFEAT
- HS: 5.5, MP: 4.5 (scaled), Dominance: 55%
- Visual: Drowner grows, mud spreads in bedroom visualization
- Player feels: Mild guilt, pressure to resume tomorrow

Day 4: Battle Type = The Echo, Outcome = VICTORY
- HS: 6, MP: 4 (decay), Dominance: 60%
- Visual: Pattern broken! Drowner shrinks slightly

Days 5-7: 3 consecutive VICTORIES
- HS: 7.5, MP: 3, Dominance: 71% (HABIT DOMINANT)
- Player feels: In control, morning becomes automatic
```

### Week 4: Established Habit
```
Current State:
- HS: 10, MP: 3, Dominance: 77%
- Total Battles: 28, Habit Wins: 24, Monster Wins: 4
- Current Streak: 12 days

Player Experience: "The Drowner feels distant, almost like a memory. Getting up is easy now."
```

### Week 8: The Collapse
```
Day 50: DEFEAT (overslept for meeting)
Day 51: DEFEAT ("I'll start fresh Monday")
Day 52: DEFEAT (snooze button won)
Day 53: DEFEAT (gave up for the week)

Current State:
- HS: 10, MP: 9 (4 consecutive skips × 1.5 scaling)
- Dominance: 53% → 48% → 43% → 38%
- Territory: "The Swamp" — morning section of app becomes murky

Day 54: Player receives notification:
"The Drowner has grown powerful. Your bedroom feels... heavy. 
Tomorrow's battle is critical. Will you answer the alarm?"

Day 55: Battle Type = The Comeback, Outcome = VICTORY
- HS: 10.5, MP: 8 (decay + defeat)
- Dominance returns to 57%
- Visual: Drowner forced back, Swamp begins to drain
```

---

## CSV Export Format (Ready for Import)

```csv
habit_id,habit_name,habit_domain,habit_unit_name,monster_name,monster_title,spawn_trigger,initial_power,power_scaling,current_power,current_streak,dominance_state
H001,Morning Exercise,Physical,The Dawn Strider,The Drowner,That Which Pulls Downward,Skip morning exercise OR press snooze >1,3,+1.5 per skip,3,0,BALANCED
H002,Daily Meditation,Spiritual,The Still Point,The Chatterling Swarm,The Unending Noise,Miss session OR stop <2 min,2,+0.8 per skip,2,0,BALANCED
H003,Reading Before Bed,Mental,The Lantern Keeper,The Infinite Scroll,Devourer of Attention,Use phone in bed OR sleep to videos,4,+1.2 per skip,4,0,BALANCED
H004,Weekly Family Call,Social,The Bridge Builder,The Drifter,The Growing Distance,Miss call + no reschedule 48h,3,+1.5 per skip,3,0,BALANCED
H005,Daily Writing Practice,Creative,The Word Smith,The Blank Page Wraith,The Perfectionist's Shadow,No writing OR delete everything,5,+0.9 per skip,5,0,BALANCED
H006,Daily Spending Review,Financial,The Vault Keeper,The Leak,The Thousand Small Hungers,Unlogged purchase OR over budget,2,+1.1 per skip,2,0,BALANCED
H007,Hydration Target,Physical,The Clear Stream,The Desiccator,The Thief of Vitality,<1.5L OR all caffeine/sugar,2,+1.3 per day,2,0,BALANCED
H008,Gratitude Practice,Spiritual,The Light Gatherer,The Gray,The Color Eater,Miss entry OR generic items,3,+0.8 per skip,3,0,BALANCED
H009,Language Study,Mental,The Tongue Weaver,The Tongue-Tied Giant,The Fear of Sounding Foolish,Skip lesson OR avoid speaking,4,+1.0 per skip,4,0,BALANCED
H010,Bedtime Routine,Physical,The Moonward,The FOMO Wraith,The Fear of Missing Everything,After 11:30pm OR late scrolling,3,+1.2 per night,3,0,BALANCED
```

---

## Implementation Notes

### For Developers
- Store `battle_history` as JSON array with max 30 entries to prevent bloat
- Calculate `dominance_state` dynamically — don't store, derive
- Monster power should decay slowly (0.1/day) when not fed to prevent impossible comebacks
- Visual corruption should be reversible but leave "scars" — evidence of past struggles

### For Designers
- Each monster should have 3 visual tiers: Dormant, Active, Dominant
- Habit units should have visual "evolution" at 7, 30, 90 days
- Territory corruption should be beautiful in its own way — not ugly, but *wrong*
- Sound design: Each monster has ambient audio that plays when nearby

### For Players
- The system should never shame — monsters are *natural forces*, not moral judgments
- Lore entries unlock as you battle, revealing monster backstories
- "Knowing your enemy" — research into psychology of each monster unlocks bonuses
- Allied habits (same domain) can provide reinforcements in desperate battles
