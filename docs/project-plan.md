# Mind Field - Project Plan

**Elevator Pitch**: Gamified meditation through battlefield visualization

## Vision
An interactive visualization that helps people see the invisible war happening in their minds - memories and ideas from past/future fighting over mental territory - and discover that peace comes from ceasefire, not victory. A daily check-in tool for navigating the eternal conflict of consciousness.

---

## Core Concept

### The Metaphor
- **Two Sides**: Good memories/ideas vs Bad memories/ideas
- **The Territory**: A randomized landmass (island) surrounded by water - represents your mental space
- **Units**: Beliefs/memories manifest as soldiers, tanks, artillery, scouts
- **Combat**: Both sides fight over territory control - visual dominance shows which forces are winning
- **Strategic Posts**: Important places on the map (self-worth hill, trust bridge, hope lighthouse) - high-value territory
- **Key Insight**: Peace isn't winning - it's ceasefire. The battle is eternal (yin-yang), not something to "fix"

### The Philosophy
The conflict is the nature of consciousness. Good and bad, past and future, always present. This isn't about eliminating the battlefield - it's about learning to navigate the eternal pattern. Daily practice, not a destination.

### The Problem We're Solving
People don't see the mechanics of their emotional state. They feel attacked but don't know by what. This makes the invisible visible and gives them agency to practice peace within the conflict.

---

## User Journey

### 1. Diagnostic Phase
**Goal**: Populate the user's personal Mind Field

**Mechanism**: 
- Series of questions across key domains
- Questions reveal existing beliefs/patterns
- Answers determine initial territory control - which side holds what land

**Question Domains**:
- Trust (interpersonal, societal)
- Self-worth (capability, value, progress)
- Future outlook (hope, possibility, direction)
- Past processing (regret, trauma, nostalgia)
- Connection (belonging, being heard, mattering)

**Example Questions**:
- "People in the world still say thank you" (True/False)
- "Your efforts make a meaningful difference" (True/False)
- "Tomorrow is worth looking forward to" (True/False)
- "You can trust strangers to help" (True/False)

**Output**: Each answer spawns units and assigns territory control

### 2. Initial Visualization
**Goal**: Show "this is what's firing at you right now"

**What They See**:
- Their personal landmass/island
- Two forces fighting over territory
- Color-coded control (glance shows who's winning)
- Strategic posts (self-worth hill, trust bridge, etc.)
- Active combat - explosions, movement, front lines

**Unit Types**:
- Infantry (small recurring thoughts)
- Tanks (strong beliefs)
- Artillery (deep patterns, trauma)
- Scouts (anxious thoughts, hypervigilance)
- Jets/Air support (high-impact thoughts)

### 3. Experimentation Phase
**Goal**: Let users try to "win" and discover the futility

**Mechanism**:
- "Try to fix it. Give your good memories jet planes."
- User powers up the good side
- System shows bad side responding and escalating
- User experiences the arms race firsthand
- **Feel** that winning doesn't work

**Key Moment**: "That didn't work, did it? Here's why..."

### 4. Education Phase
**Goal**: Teach the eternal conflict and ceasefire alternative

**Core Teaching**:
- The battle is eternal (yin-yang) - not something to "fix"
- Fighting sustains the war
- Both sides will always innovate and escalate
- Peace isn't victory - it's ceasefire
- Introduction to two ceasefire modes

### 5. Ceasefire Experience
**Goal**: Show what peace looks like

**Two Modes** (user chooses):
- **"Clear Mind"** - forces retreat to edges, territory becomes neutral (pure mindfulness/meditation)
- **"Integration"** - forces remain on territory but cease fire, coexist peacefully (ACT/acceptance)

**Visual**:
- Active war → ceasefire state
- Territory goes peaceful/neutral
- User sees and feels the difference

### 6. Daily Practice (Optional)
**Goal**: Ongoing tool for navigating the eternal conflict

**Features**:
- Return daily to check in: "What's firing at me today?"
- Retake diagnostic to see territory shifts
- Practice ceasefire modes
- Track patterns over time
- Different forces, different intensity each day - but the dynamic remains

**Philosophy**: Not about progress toward fixed endpoint - about practicing peace within the eternal pattern

---

## Technical Approach

### Platform Options
**Web App** (recommended for v1)
- Accessible, no install friction
- Canvas/WebGL for visualization
- Can be embedded, shared
- Mobile-friendly responsive design

**Native App** (future consideration)
- Better performance for complex viz
- Push notifications for practice reminders
- Offline capability

### Tech Stack Considerations
- **Frontend**: React/Vue + Canvas/Three.js for visualization
- **State Management**: Track user's battlefield configuration
- **Data**: Store diagnostic results, progress
- **Animation**: Smooth transitions, engaging visuals

---

## Visual Design

### Territory Structure
- **Landmass**: Randomized island/terrain surrounded by water
- **Territory Control**: Color-coded areas showing which side holds what (gradient for contested zones)
- **Strategic Posts**: Key locations on the map
  - Self-worth hill
  - Trust bridge
  - Hope lighthouse
  - Connection harbor
  - Future outlook tower
  - _(more as we design)_

### Visual States
1. **Active War**: 
   - Clear front lines
   - Explosions, movement, combat
   - Territory changing hands
   - Units actively engaged

2. **Dominance**:
   - One color controls most land
   - Losing side pushed to edges
   - Asymmetric power visible

3. **Ceasefire (Clear Mind)**:
   - Forces retreat to edges of island
   - Territory becomes neutral/peaceful
   - Empty land, calm water

4. **Ceasefire (Integration)**:
   - Both forces present on territory
   - No combat, peaceful coexistence
   - Both colors visible but harmonious

### Aesthetic Direction
**Style Options to Consider**:
- Top-down tactical map view (strategy game aesthetic)
- 3D terrain with visible units
- Illustrated/artistic (accessible, less militaristic)
- Abstract but readable (shapes representing forces)

**Tone**: Serious enough to respect the subject, playful enough to engage. Not therapy-sterile, not game-trivial.

**Key Question**: What visual style makes this immediately graspable while being emotionally appropriate?

---

## Development Phases

### Phase 0: Prototype & Design (Starting Point)
- [ ] Finalize visual aesthetic direction
- [ ] Sketch strategic posts on the map
- [ ] Create static mockups of key states (war, dominance, ceasefire)
- [ ] Design territory control visualization
- [ ] Prototype: 3-5 diagnostic questions → territory assignment
- **Deliverable**: Visual proof-of-concept we can look at and iterate on

### Phase 1: Core Experience (MVP)
- [ ] 15-20 diagnostic questions across all domains
- [ ] Basic territory visualization with color-coded control
- [ ] Unit types and spawning logic
- [ ] Active combat state (animated)
- [ ] Strategic posts visible on map
- **Deliverable**: Complete first-time user flow (diagnostic → see battlefield)

### Phase 2: The Learning Loop
- [ ] Experimentation phase: let user power up good side
- [ ] Show bad side escalation/response
- [ ] Arms race demonstration
- [ ] Education section: why winning doesn't work
- [ ] Both ceasefire modes (Clear Mind + Integration)
- [ ] Transition animations between states
- **Deliverable**: Full insight experience (try to win → fail → learn ceasefire)

### Phase 3: Daily Practice (Hybrid Model)
- [ ] "Check in daily" invitation after first experience
- [ ] Quick re-diagnostic (lighter version)
- [ ] Compare today vs initial state
- [ ] Practice ceasefire modes
- [ ] Simple progress view (not gamified scores, just patterns)
- [ ] Optional: account/save state
- **Deliverable**: Repeatable tool, not just one-shot insight

### Phase 4: Polish & Launch
- [ ] Refined animations and transitions
- [ ] Sound design (ambient, UI feedback)
- [ ] Mobile optimization
- [ ] Share capability
- [ ] Analytics: what resonates, where people drop off
- [ ] Landing page / marketing site
- **Deliverable**: Polished public launch

---

## Open Questions

1. **Visual Style**: What should the battlefield actually look like?
2. **Tone**: Serious therapeutic tool or playful/engaging? Both?
3. **Target Audience**: General public or specific community?
4. **Monetization**: Free tool, donation-based, paid app? (later consideration)
5. **Scientific Backing**: Connect to CBT/mindfulness literature explicitly?
6. **Accessibility**: How do we make this work for people with different mental models?

---

## Immediate Next Steps (Phase 0)

1. **Visual Style Decision**
   - Choose aesthetic direction (tactical map vs 3D terrain vs illustrated)
   - Pick color scheme for good/bad forces
   - Decide on unit representation style

2. **Map Design**
   - Sketch the island/landmass layout
   - Place strategic posts (self-worth hill, trust bridge, etc.)
   - Define what each strategic post represents

3. **Diagnostic Questions**
   - Write 15-20 questions across all domains
   - Map each answer → territory assignment logic
   - Define which answers spawn which unit types

4. **Paper Prototype**
   - Draw key states: initial diagnostic, active war, ceasefire modes
   - Show progression: diagnostic → battlefield → try to win → ceasefire
   - Test the flow makes sense

5. **Technical Foundation**
   - Choose tech stack (React + Canvas? Three.js?)
   - Set up basic project structure
   - Get one question → territory control working

6. **Validation**
   - Show prototype to a few people
   - Does the metaphor land immediately?
   - Do they want to try it?

---

## Framework Summary

**Core Mechanic**: Diagnostic questions → territory control visualization → experimentation (try to win) → discovery (futility) → ceasefire (peace) → daily practice (navigation)

**Key Insight**: The battle is eternal (yin-yang). Not something to fix, but to navigate. Peace comes from ceasefire, not victory.

**Value Proposition**: Makes invisible thought patterns visible. Gamifies meditation. Daily tool for emotional awareness.

**Unique Angle**: Let users fail at "winning" before teaching the alternative. Experience beats explanation.

**Business Model**: Hybrid - strong free one-time insight, optional subscription for ongoing practice tool.

---

## Critical Design Principles

### Weight System (IDEAS vs MEMORIES)
**Problem**: Not all thoughts have equal impact
- Deep trauma ≠ small compliment
- Core beliefs ≠ passing thoughts

**Solution**: 
- **Ideas** (beliefs, patterns, predictions) = stronger/ongoing forces
- **Memories** (past events) = varying strength based on impact
- Question weight: light/medium/heavy
- Visual representation: infantry → tanks → artillery

**Example**:
- "Childhood trauma" → enemy heavy artillery, occupies major territory
- "Someone thanked me today" → friendly infantry, small presence
- "I believe I'm capable" → friendly fortification, strong position

### Daily Input System
**Not just retake diagnostic** - active real-time input

**Daily Flow**:
1. "What's firing at you today?"
2. User inputs current thoughts/feelings
3. Map updates in real-time
4. Hit "Ceasefire" → guided meditation
5. Watch forces stand down as you breathe

**Makes it**: Interactive practice tool, not just passive visualization

### Combat Realism
- Constant animation - battle is always happening
- Visible units positioned on territory
- Projectiles firing continuously
- Ceasefire ≠ perfect silence (rogue thoughts still fire occasionally)

### Visual States Matter
1. **Active War**: Units firing, territory contested, chaos
2. **Dominance**: One side clearly winning, asymmetric
3. **Ceasefire (Clear Mind)**: Forces retreat to edges, neutral territory
4. **Ceasefire (Integration)**: Forces present but peaceful, coexist
5. **Rogue Thoughts**: Even in ceasefire, occasional stray shot (realistic)

---

## Notes

- Keep token burn lean - this is a side project
- Start simple, prove the concept works
- The insight is the product - execution serves that
- Don't over-engineer v1
- Test the metaphor early and often

---

_Created: 2026-02-03_
_Last Updated: 2026-02-03 (finalized framework)_
