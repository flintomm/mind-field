# Mind Field - Development Log

Track what we're building, decisions made, and why.

---

## 2026-02-03 - Project Inception

### Initial Concept (Morning)
- **Origin**: Tom's visualization of memories/ideas as two armies firing at the present
- **Core metaphor**: Mental battlefield where good vs bad forces fight for control
- **Key insight**: Peace isn't victory - it's ceasefire (both sides stop shooting)

### Evolution (Throughout Day)

**Territory Model** (vs shooting at center):
- Shifted from "firing at the present" to "fighting over territory"
- Island/landmass represents mental space
- Visual dominance = glance and see who's winning
- Strategic posts: self-worth hill, trust bridge, hope lighthouse, etc.

**Eternal Conflict Philosophy**:
- The battle is eternal (yin-yang)
- Not about "fixing" or "winning"
- About navigating the ongoing pattern
- Daily practice, not destination

**Two Ceasefire Modes**:
1. **Clear Mind**: Forces retreat, territory neutral (pure mindfulness)
2. **Integration**: Forces stay but peaceful (acceptance/coexistence - ACT)
3. User chooses which resonates

**Weight System Discovery**:
- Not all thoughts equal impact
- Ideas (beliefs/patterns) vs Memories (events)
- Need severity levels: light/medium/heavy
- Childhood trauma ≠ coffee compliment

**Daily Input Addition**:
- Not just "retake diagnostic"
- Active input: "What's firing at you today?"
- Real-time map updates
- Ceasefire button → guided meditation
- Makes it practice tool, not just one-time insight

**Combat Animation Requirement**:
- Initial prototype was too static (just showed territory ownership)
- Need visible units, active firing, constant animation
- Battle should feel alive and ongoing
- Ceasefire should show units retreating/stopping

**Humor/Realism**:
- During ceasefire: rogue units occasionally fire
- Can't stop ALL thoughts (that's realistic)
- Makes meditation failure feel normal

---

## Prototype Development

### v0.1 - Static Territory Map
**Built by**: Sub-agent (Opus)
**File**: `mind-field-prototype.html`
**Date**: 2026-02-03 12:34 EST

**Features**:
- 5 diagnostic questions (True/False)
- Canvas-based island with 5 territories
- Color-coded control (blue/red/gray)
- Ceasefire toggle button
- Score display

**Questions Used**:
1. People are thankful today
2. I'm having a good day
3. It is beautiful out
4. I'm in control right now
5. I'm looking forward to something

**Limitations**:
- Static display (no animation)
- No visible units
- No active combat
- Just shows territory ownership, not the fight itself

**Verdict**: Proves territory mechanic works, but too static

---

### v0.2 - Active Combat Animation
**Built by**: Sub-agent (Opus) 
**File**: `mind-field-prototype-v2.html`
**Date**: 2026-02-03 12:40 EST
**Status**: ✓ Complete

**Features**:
- Visible units positioned on territories
- Unit types: infantry, tanks, scouts
- Constant animation loop (60fps)
- Projectiles firing continuously
- Ceasefire: units stop/retreat
- Rogue thoughts during ceasefire (comedy/realism)

---

### v0.3 - Center-Targeted Bombardment
**Built by**: Sub-agent (Opus)
**File**: `mind-field-prototype-v3.html`
**Date**: 2026-02-03 12:50 EST
**Status**: ✓ Complete

**Key Change**: All units fire at the present moment (center), not at each other

**Features**:
- Glowing "NOW" orb at center
- All projectiles converge on present moment
- Visual feedback: pulses, shakes, chaos levels
- Good hits = blue glow, bad hits = red flash
- Ceasefire makes center calm and golden
- Territory names updated: "Past Memory", "Future Fears", etc.

---

### v0.4 - Custom Input System
**Built by**: Sub-agent (Opus)
**File**: `mind-field-prototype-v4.html`
**Date**: 2026-02-03 13:10 EST
**Status**: 🔄 In Progress

**Requirements**:
- Quadrant-based layout (past/future × good/bad)
- Custom input UI: text field + type/valence/weight
- Weight system: Light (1) → Medium (2) → Heavy (3)
- Firing intensity slider (0.1x to 3x)
- Empty battlefield start - user adds thoughts
- Units spawn based on weight and category

**Goal**: Daily practice tool - "What's firing at you today?"

---

### v0.5 - Diagnostic Questions Onboarding
**Built by**: Sub-agent (Opus)
**File**: `mind-field-prototype-v5.html`
**Date**: 2026-02-03 13:46 EST
**Status**: ✓ Complete

**Features**:
- Welcome screen → 8 True/False questions → battlefield reveal
- Progress bar and question counter
- Auto-populate battlefield based on answers
- Transition to custom input after diagnostic
- Thoughts list shows diagnostic vs user-added thoughts

**Goal**: Onboarding entry point - diagnose current state, then practice daily

---

### v5.1 - Randomized Fire Timing
**Built by**: Sub-agent (Opus)
**File**: `mind-field-prototype-v5.1.html`
**Date**: 2026-02-03 13:55 EST
**Status**: ✓ Complete

**Fixes**:
- Each unit fires independently (no more synchronized volleys)
- Random delays between shots (organic chaos)
- Firing intensity slider controls % of active units (not just speed)
- Units dimmed/grayed when disabled by low intensity

**Goal**: Make combat feel realistic, not artificial

---

### v5.2 - Chaos Recalibration
**Built by**: Sub-agent (Opus)
**File**: `mind-field-prototype-v5.2.html`
**Date**: 2026-02-03 14:12 EST
**Status**: ✓ Complete

**Fixes**:
- Reduced chaos gain per hit (~60% reduction)
- Faster chaos decay
- Intensity-based chaos cap (1.0x maxes at 65, not 100)
- Slower fire rates overall
- NOW orb feels "active" or "under pressure" at baseline, not "overwhelming"

**Goal**: Baseline should feel manageable, not immediate chaos

---

### v0.6 - Auto-Balancing + Color Blending
**Built by**: Sub-agent (Opus)
**File**: `mind-field-prototype-v6.html`
**Date**: 2026-02-03 14:22 EST
**Status**: ✓ Complete

**Features**:
- **85:15 auto-balancing**: Spawn opposition when ratio exceeds threshold
- **Counter-thought bank**: 26 variations (good→bad, bad→good)
- **System messages**: "Doubt creeps in...", "Hope persists..."
- **NOW orb color blending**: Blue → purple → red based on hit ratio
- **Balance display**: Real-time "Good X% | Bad Y%" indicator
- System-spawned units have special visual markers

**Goal**: Teach arms race lesson experientially; show messy reality of mixed mental states

---

### v0.7 - Box Breathing Meditation
**Built by**: Sub-agent (Opus)
**File**: `mind-field-prototype-v7.html`
**Date**: 2026-02-03 14:56 EST
**Status**: ✓ Complete

**Features**:
- **4-4-4-4 box breathing** (6 cycles, ~96 seconds)
- NOW orb guides breath: expands (inhale), contracts (exhale), pulses (holds)
- Text prompts: "Breathe in...", "Hold...", "Breathe out...", "Let go..."
- Progressive battlefield calming over cycles
- Post-meditation: "Peace achieved" message
- Button transforms: "Ceasefire" ↔ "End Meditation"

**Known Issues** (to fix in v7.1):
- Cycle count doesn't sync accurately to breath phases
- No rogue units firing during ceasefire
- Instant combat restart after meditation (should ramp gradually)

**Goal**: Core teaching moment - experience ceasefire through guided breath

---

### v7.1 - Meditation Fixes + Meditated Mech (In Progress)
**Status**: 🔄 Waiting for Opus API availability (overloaded)
**Target File**: `mind-field-prototype-v7.1.html`

**Fixes**:
1. **Cycle count synced** to full 4-phase completion
2. **Rogue units** (1-2) fire occasionally during meditation with thought bubbles ("💭", "can't stop...")
3. **Gradual ramp-up** after meditation (10% → 100% fire rate over 5-10 sec)

**New Feature: Meditated Mech**
- **Concept**: Post-meditation reward unit with lasting battlefield impact
- **Spawn**: After meditation completes, in Good Memories quadrant
- **Visual**: Large golden octagon, 🧘 icon, 1.5x artillery size, pulsing aura
- **Effect**: Reduces ALL units' fire rate by 40% globally (multiply delay by 1.67x)
- **Duration**: 3 minutes (180 sec), countdown timer visible
- **Decay**: Gradually shrinks/fades, particle effect on expiration
- **Stacking**: Only 1 at a time, meditating again resets timer to 3:00
- **UI**: Special styling in thought list, effect indicator on screen ("🧘 -40% battlefield intensity")
- **Message on spawn**: "Your meditation created lasting peace. The Meditated Mech will calm your battlefield for 3 minutes."

**Goal**: Make meditation a strategic tool with tangible lasting benefit; incentivize regular practice

---

### v0.8 - Quadrant Zoom/Inspect (Planned)
**Status**: 📋 Next after v7.1

**Concept**: Click to zoom into each quadrant and see detailed unit deployment

**Features**:
- Click any quadrant → zoom in
- See all units in that quadrant with labels
- Show original text input for each unit
- Display unit stats: type, weight, fire rate, impact
- Visual inventory: "3 heavy artillery, 5 infantry, 2 scouts"
- Zoom out button to return to full map
- Helps users understand: "I have way more forces here than I realized"

**Goal**: Exploration and awareness - see exactly what's armed in each mental domain

---

## Onboarding Flow Design (Phase 1: First-Time Experience)

**Goal**: Teach the eternal conflict concept through direct experience

**Journey**:
1. **Diagnostic Questions** (5-10 quick ones to populate battlefield)
2. **Show Your Battlefield** - "This is what's firing at you"
3. **Experimentation Phase** - "Try to fix it. Add good thoughts."
4. **Auto-Balancing Kicks In** - System spawns opposition automatically
5. **Escalation Visible** - Watch the arms race happen in real-time
6. **Failure Moment** - User realizes they can't win
7. **Education** - Explain why fighting doesn't work (eternal conflict)
8. **Introduce Ceasefire** - Show both modes (Clear Mind vs Integration)
9. **Experience Peace** - Practice ceasefire, feel the difference
10. **Invitation** - "Come back daily to navigate the field"

### Auto-Balancing System (Anti-Gaming Mechanic)

**Problem**: Users will try to spam one side to "win" the game

**Solution**: Asymmetric auto-spawning that teaches the negativity bias lesson

**Balancing Rules**:
- When good thoughts reach **85%+** of forces → bad thoughts spawn to counter
- When bad thoughts reach **85%+** of forces → good thoughts try to fight back
- 2-3 second delay before opposition spawns (feels reactive, not instant)
- "Your mind responds..." or "Doubt creeps in..." message appears

**Why 85:15 threshold? (Not 60:40)**
- Reflects real negativity bias in human psychology
- Shows you need **overwhelming** positivity before doubt creeps in
- But just a **little** negativity dominates the field
- The scales aren't fair - bad thoughts have disproportionate power
- Can't give the underdog the benefit of the doubt

**Generic Counter-Thought Bank** (20-30 variations each):
- **Good → Bad counters**: "But what if you're not?", "Remember when you failed", "Doubt", "It won't last", "What if..."
- **Bad → Good counters**: "Maybe it'll work", "People care", "Hope remains", "Tomorrow's different", "You've survived before"
- System matches weight of original thought (heavy spawns heavy)

**Visual Cues**:
- Spawned units appear with subtle animation ("responding to...")
- Maybe different visual tint (system-generated vs user-added)
- Shows escalation happening in real-time
- Units fire immediately after spawning (aggressive response)

**Teaching Moment**: Users experience the futility of fighting firsthand, THEN we explain ceasefire

---

## Daily Practice Flow (Phase 2: Returning Users)

**Goal**: Active management and ceasefire practice tool

**Journey**:
1. **Quick Check-In** - "What's firing at you today?"
2. **Custom Input** - Add current thoughts with type/valence/weight
3. **Real-Time Battlefield** - Watch it populate and animate
4. **Zoom/Inspect** - Explore quadrants in detail, see what's deployed
5. **Practice Ceasefire** - Box breathing guided meditation (see below)
6. **Track Patterns** - Compare to previous sessions (optional feature)

**Skip Onboarding**: Returning users go straight to custom input

### Guided Meditation Design (Box Breathing)

**Mechanism**: The NOW orb becomes the breath guide

**Box Breathing Cycle (4-4-4-4)**:
1. **Inhale (4 sec)**: Orb expands, glows brighter
2. **Hold (4 sec)**: Orb stays full, pulses gently
3. **Exhale (4 sec)**: Orb contracts, dims slightly
4. **Hold (4 sec)**: Orb stays small, steady
5. **Repeat**: 4-6 cycles total

**Integrated Effects**:
- Text prompts appear: "Breathe in..." "Hold..." "Breathe out..." "Hold..."
- Units slow fire rate with each breath cycle
- Projectiles fade and disappear mid-flight
- By cycle 3-4: units stop firing, begin retreating
- By cycle 5-6: full ceasefire achieved, territory neutral
- Final state: orb calm and golden

**Teaching Moment**: You watch your breath AND watch your mind calm simultaneously - the metaphor becomes the meditation tool

**Onboarding Transition**: 
- After user fails to win → "Try the Ceasefire button"
- First ceasefire triggers box breathing meditation
- Experience peace
- "This is what's possible. Ready to track your Mind Field daily?"
- → Enter daily practice mode

---

## Key Decisions Log

| Decision | Rationale | Date |
|----------|-----------|------|
| Name: "Mind Field" | Play on battlefield + minefield, avoids EA trademark | 2026-02-03 |
| Territory over center target | Easier to visualize dominance at a glance | 2026-02-03 |
| Eternal conflict philosophy | Aligns with yin-yang, meditation reality | 2026-02-03 |
| Two ceasefire modes | Different mental models work for different people | 2026-02-03 |
| Weight system needed | Trauma ≠ compliment - visual impact should reflect reality | 2026-02-03 |
| Daily input system | Active practice > passive retake diagnostic | 2026-02-03 |
| Rogue thoughts in ceasefire | Honesty about meditation, makes failure normal | 2026-02-03 |
| Web app first | No install friction, shareable, accessible | 2026-02-03 |
| Prototype before polish | Prove mechanics work before investing in visuals | 2026-02-03 |
| 85:15 auto-balance threshold | Reflects negativity bias - need overwhelming positivity before doubt creeps in | 2026-02-03 |
| Auto-spawning opposition | Teaches arms race through experience, prevents gaming the system | 2026-02-03 |

---

## Next Steps

### Immediate (Phase 0)
- [x] Framework documented
- [x] v0.1 prototype (static)
- [ ] v0.2 prototype (animated combat) - in progress
- [ ] Test v0.2 with Tom
- [ ] Visual style decision for production

### Short Term (Build Priority Order)
- [x] Custom input system with weight controls
- [x] Firing intensity slider
- [ ] **NEXT: Diagnostic questions** (5-10 to populate initial battlefield)
- [ ] **THEN: Auto-balancing system** (85:15 threshold, anti-gaming)
- [ ] **THEN: Box breathing meditation** (NOW orb guides breath)
- [ ] **THEN: Quadrant zoom/inspect** (see units up close)
- [ ] Visual aesthetic direction chosen (after mechanics proven)

### Medium Term (Onboarding Phase)
- [ ] 5-10 diagnostic questions for initial population
- [ ] Auto-balancing system (85:15 threshold)
- [ ] Counter-thought bank (20-30 variations)
- [ ] Experimentation phase UI (try to win → fail)
- [ ] Education section (why ceasefire works)
- [ ] Guided meditation integration
- [ ] Save/load state for returning users

### Long Term
- [ ] Guided meditation integration
- [ ] Progress tracking
- [ ] Polish pass with proper designer
- [ ] Launch preparation

### Future Features (Post-MVP)
- [ ] **Strategic Posts**: Named locations on map (self-worth hill, trust bridge, hope lighthouse, etc.)
  - Forces occupy/contest specific meaningful territory
  - Adds narrative: "Your self-worth is under siege"
  - More texture and psychology depth
- [ ] **Habit Tracker Integration**: Daily habits spawn/level up units
  - Consistency → infantry becomes tank becomes artillery
  - Breaking streaks → units weaken/revert
  - Good habits strengthen good forces, bad habits strengthen bad
  - Visual progression rewards consistency
- [ ] **Unit Evolution System**: Same thought repeated → upgrades
  - Track recurring thoughts/habits
  - Visual progression through unit types
  - "Your meditation habit evolved into a tank!"
- [ ] **To-Do List Integration**: Uncompleted tasks = persistent enemy units
  - Completing tasks removes units
  - Overdue tasks get heavier weight
- [ ] **Mood Journal**: Track battlefield state over time
  - Compare day-to-day, week-to-week
  - Identify patterns and triggers
- [ ] **Trigger Identification**: "Every time X happens, artillery spawns here"

---

## Technical Notes

**Current Stack**:
- Single HTML file (self-contained)
- Vanilla JavaScript
- Canvas for rendering
- No dependencies (keeps it simple for prototyping)

**Future Considerations**:
- React/Vue for production?
- Three.js for 3D terrain?
- Backend for saving state/progress
- Mobile app version

---

## Spatial Layout (CONFIRMED)

**Map Quadrants**:
```
    GOOD MEMORIES  |  GOOD IDEAS
    (top-left)     |  (top-right)
    ----------- CENTER (NOW) -----------
    BAD MEMORIES   |  BAD IDEAS/FEARS
    (bottom-left)  |  (bottom-right)
```

- **Left side**: Past (memories)
- **Right side**: Future (ideas/predictions)
- **Top half**: Good/positive forces
- **Bottom half**: Bad/negative forces
- **Center**: Present moment (under bombardment from all quadrants)

## Custom Input System (Next Phase)

**User Flow**:
1. Text input: "What's firing at you?"
2. Choose type: Past Memory OR Future Idea
3. Choose valence: Good OR Bad
4. Weight slider: Light (1) → Medium (2) → Heavy (3)
5. Click "Add to battlefield"

**Weight Effects**:
- **Light**: Infantry, slow fire rate, small projectiles
- **Medium**: Tank, moderate fire, visible impact
- **Heavy**: Artillery, rapid fire, large projectiles, major chaos

**Controls**:
- **Firing Intensity Slider**: Global animation speed control (observe vs overwhelm)

## Design Questions to Resolve

1. **Visual style for production**: Tactical map? 3D terrain? Illustrated? Abstract?
   - Leaning toward: AI-generated sprites (Midjourney/DALL-E)
   - Prove mechanics first with shapes, upgrade visuals later
2. **Unit representation**: Literal military vs abstract shapes vs illustrated characters?
   - Current: Simple shapes (circles, squares, triangles, diamonds, octagons)
   - Future: Stylized units with character
3. **Sound design**: Ambient? Combat sounds? Meditation music?
   - Not MVP priority, but noted for polish pass
4. **Tone balance**: Serious therapeutic vs playful engaging?
   - Finding balance: Respects the subject, but engaging enough to return daily

---

## Session Summary (2026-02-03)

**Time**: ~7 hours of active development
**Prototypes Built**: 10 versions (v0.1 through v0.7, plus v5.1, v5.2, v0.6)
**Current State**: v0.7 complete with box breathing meditation

**Key Achievements**:
- ✓ Territory-based battlefield visualization working
- ✓ Diagnostic questions populate initial state
- ✓ Custom input system for daily practice
- ✓ Randomized fire timing (organic chaos)
- ✓ 85:15 auto-balancing with counter-thought bank
- ✓ NOW orb color blending (gradient mixing)
- ✓ Box breathing guided meditation
- ✓ Complete onboarding → practice flow designed

**Next Steps**:
- Build v7.1: Meditation fixes + Meditated Mech (waiting for Opus API)
- Build v0.8: Quadrant zoom/inspect
- Then: Polish, visual upgrade, user testing

**Major Insights**:
- The metaphor works - battlefield captures the mental experience
- Box breathing integration is powerful - meditation becomes the visualization tool
- Meditated Mech concept: makes meditation a strategic tool with lasting impact
- Habit tracker integration will add long-term engagement
- Unit evolution system rewards consistency

**Framework Locked**:
- Core mechanics proven and working
- Onboarding flow clear (diagnose → experiment → fail → learn ceasefire)
- Daily practice loop established
- Ready to layer on features and polish

---

_Last Updated: 2026-02-03 16:05 EST_
