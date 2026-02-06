# Mind Field v1.0 - Comprehensive Build Specification

**Target**: Complete, launchable MVP in ONE build  
**Base**: v7.2 prototype (all existing features preserved)  
**Build File**: `mind-field-v1.0.html`

---

## Philosophy: Ship-Ready MVP

This is the version we launch. Everything included should be:
- **Functional** (works reliably)
- **Intuitive** (new users understand it)
- **Polished** (feels complete, not prototype-y)

What's NOT included (future versions):
- Habit tracker
- Unit evolution over time
- Strategic posts on map
- To-do list integration
- AI-generated sprites
- Mood journal

---

## What We're Keeping from v7.2

✅ Diagnostic onboarding (8 questions → battlefield)  
✅ Custom thought input (text, type, valence, weight)  
✅ Active combat visualization  
✅ NOW orb (color blending, chaos, animations)  
✅ Auto-balancing (85:15 threshold, counter-thoughts)  
✅ Box breathing meditation (6 cycles, breath guidance)  
✅ Meditated Mech (post-meditation reward unit)  
✅ Clean UI (no percentage meters, no thought bubbles)  

---

## NEW FEATURE 1: Quadrant Zoom/Inspect

### Purpose
Let users see individual units up close, read their labels, understand what's firing at them.

### UI Flow

**1. Overview Mode (Default)**
- Full battlefield visible
- All four quadrants showing
- Combat happening
- Button overlays on each quadrant: "🔍 Inspect"

**2. Zoom In**
- Click "🔍 Inspect" on any quadrant
- Smooth zoom animation (500ms)
- Quadrant fills screen
- Other quadrants fade to 20% opacity at edges
- NOW orb shrinks and moves to corner (still visible, still animating)

**3. Zoomed View**
- All units in that quadrant visible
- Each unit shows:
  - Label (thought text)
  - Type icon (based on weight: light/medium/heavy)
  - Fire timing indicator (subtle pulse when about to fire)
  - System-spawned indicator (if auto-balanced)
- Units are larger and more readable
- Combat continues (can see projectiles launching)
- Smooth, gentle motion (units don't overlap text)

**4. Zoom Out**
- Button: "← Back to Battlefield"
- Smooth zoom out animation (500ms)
- Return to overview mode

### Technical Details

**Quadrant Zones**:
```javascript
const QUADRANTS = {
  goodPast: { x: 0, y: 0, width: 400, height: 300, name: "Good Memories" },
  badPast: { x: 0, y: 300, width: 400, height: 300, name: "Bad Memories" },
  goodFuture: { x: 400, y: 0, width: 400, height: 300, name: "Good Ideas" },
  badFuture: { x: 400, y: 300, width: 400, height: 300, name: "Bad Ideas" }
};
```

**Zoom State**:
```javascript
let zoomState = {
  active: false,
  quadrant: null, // 'goodPast', 'badPast', 'goodFuture', 'badFuture'
  scale: 2.5 // How much to zoom
};
```

**Rendering in Zoom Mode**:
- Only draw units in focused quadrant (or draw others at low opacity)
- Increase unit size by 2x
- Show text labels beside each unit
- Add "about to fire" animation (glow 1 second before firing)

---

## NEW FEATURE 2: Onboarding Tutorial

### Purpose
Teach users the system experientially - they learn by doing, not reading.

### Flow

**Step 1: Welcome Screen** *(existing)*
- "Welcome to Mind Field"
- Brief intro text
- "Begin" button → diagnostic

**Step 2: Diagnostic Questions** *(existing)*
- 8 questions
- Populate battlefield based on answers

**Step 3: Battlefield Reveal** *(NEW - enhanced)*
- Smooth fade-in of battlefield
- Message overlay: "This is what's firing at you right now."
- Units are already fighting
- NOW orb is taking hits
- Pause button appears: "⏸ Pause to Explore"
- User clicks pause

**Step 4: Guided Exploration** *(NEW)*
- Combat pauses
- Highlight Good Memories quadrant with subtle glow/pulse
- Message: "Click 🔍 Inspect to see what's in your Good Memories"
- Wait for user to click inspect

**Step 5: Zoomed Tutorial** *(NEW)*
- User is now zoomed into Good Memories
- One unit pulses/highlights
- Message: "This is a unit. Right now it's firing at your present moment."
- Overlay shows:
  - Unit label (the actual thought)
  - Type (light/medium/heavy)
  - "This unit fires every X seconds"
- Button: "Got it →"

**Step 6: Upgrade** *(NEW)*
- Same unit still highlighted
- Message: "Let's strengthen this memory."
- Show upgrade preview:
  - Infantry → Tank transformation
  - Gets a name (e.g., "Birthday" or "Bubba Birthday")
  - Visual transformation (shape changes, gets icon)
- Button: "Nice →"

**Step 7: The Problem** *(NEW)*
- Zoom out to overview
- Resume combat
- Message: "Notice: both sides are fighting for control. Lets lead our forces..."
- Button: "Battle →"

**Step 8: The Arms Race** *(existing behavior, NEW messaging)*
- User adds many good thoughts
- Good side dominates (85:15)
- Auto-balance triggers
- Bad thoughts spawn in response
- Message: "Units emerge. The resistance grows and there's no end in sight."
- Button: "Request ceasefire! →"

**Step 9: Introduce Meditation** *(NEW)*
- Message: "Ceasefire awaiting agreement from both sides →"
- Meditation button pulses/highlights
- Wait for user to click

**Step 10: Guided Meditation** *(existing)*
- Box breathing (6 cycles)
- Combat slows, then stops
- Battlefield calms
- Meditated Mech spawns

**Step 11: Tutorial Complete** *(NEW)*
- Message: "These forces are at a XX year battle. Help bring peace by initiating a mindful ceasefire." (Use the user's age for the battle length)
- Show daily practice suggestions:
  - "Check in"
  - "Add thoughts"
  - "Meditate"
- Button: "Start"
- Tutorial state saved (doesn't repeat)

### Technical Implementation

```javascript
let tutorialState = {
  active: true, // false after completion
  step: 1, // current step number
  completed: false
};

// Save to localStorage
function saveTutorialState() {
  localStorage.setItem('mindFieldTutorial', JSON.stringify(tutorialState));
}

// Check on load
function loadTutorialState() {
  const saved = localStorage.getItem('mindFieldTutorial');
  if (saved) {
    tutorialState = JSON.parse(saved);
  }
}

// Skip tutorial option
// Add button on welcome screen: "Skip Tutorial" (for returning users)
```

**Tutorial Overlay Style**:
- Semi-transparent dark background (rgba(0,0,0,0.85))
- White/light text
- Clear buttons
- Highlight target elements with glow/pulse
- Smooth transitions between steps

---

## NEW FEATURE 3: Polish Pass

### Visual Improvements

**1. Unit Sprites**
- Replace basic shapes with more refined SVG designs
- Good units: Warmer, brighter colors (gold, green, blue)
- Bad units: Cooler, darker colors (purple, dark blue, grey)
- Clear visual distinction between types:
  - Infantry (light): Small circles
  - Tanks (medium): Squares/rectangles
  - Artillery (heavy): Larger, angular shapes
- Add subtle shadows/outlines

**2. Projectile Trails**
- Current: Simple lines that fade
- Improved: Particle trails with glow effect
- Different colors based on quadrant

**3. NOW Orb Enhancement**
- Current: Color blending and pulse
- Improved: 
  - Particle effects around edge when hit
  - Ripple effect on impact
  - More dramatic glow when chaos high
  - Breathing animation smoother (ease-in-out)

**4. Battlefield Background**
- Current: Solid colors per quadrant
- Improved:
  - Subtle gradient overlays
  - Texture/noise to break up flat color
  - Quadrant borders more defined (subtle glow line)
  - Water/edges around island (cosmetic)

**5. Animations**
- Unit spawn: Fade-in + scale-up (not instant)
- Unit fire: Brief recoil animation
- Meditation calming: Wave effect spreading from center
- Meditated Mech: Pulsing aura (breathing animation)

### UX Improvements

**1. Loading State**
- "Loading Mind Field..." on startup
- Smooth fade-in when ready

**2. Button States**
- Hover effects (scale, glow)
- Active/pressed states
- Disabled state when not available

**3. Notifications**
- Auto-balance messages: Slide in from top, slide out
- Tutorial messages: Centered overlay with backdrop
- Meditation complete: Celebratory message

**4. Mobile Responsive** *(if time allows)*
- Canvas scales to fit screen
- Touch controls for zoom
- Buttons larger on mobile
- Portrait mode support

**5. Accessibility**
- Keyboard shortcuts:
  - Space: Pause/Resume
  - M: Meditate
  - Z: Zoom (cycles through quadrants)
  - Escape: Zoom out
- Screen reader labels on buttons
- High contrast mode option (future)

### Performance

**1. Optimization**
- Limit max units (e.g., 50 per quadrant = 200 total)
- Cull off-screen projectiles
- RequestAnimationFrame for smooth 60fps
- Reduce particle count on older devices

**2. Settings Panel** *(optional)*
- Graphics quality: Low/Medium/High
- Particle effects: On/Off
- Animation speed: 0.5x / 1x / 1.5x

---

## NEW FEATURE 4: Save/Load State

### Purpose
Let users return to their battlefield without re-doing diagnostic.

### What to Save

```javascript
const saveState = {
  version: "1.0",
  timestamp: Date.now(),
  tutorialCompleted: true,
  thoughts: [
    { text: "...", type: "past", valence: "good", weight: "medium" },
    // ... all user-added thoughts
  ],
  diagnosticAnswers: {
    // Store original answers so we can reference them
  },
  meditationCount: 5, // Track total meditations
  lastVisit: Date.now()
};
```

### Implementation

**Auto-save**: Every time user adds a thought or completes meditation  
**Load**: On page load, check `localStorage` for saved state  
**UI**: 
- Welcome screen shows "Continue" button if save exists
- "Start Fresh" option to reset
- Small indicator: "Last visit: 2 days ago"

**Clear Data**:
- Settings menu option: "Reset Mind Field"
- Confirmation dialog before clearing

---

## UI LAYOUT - v1.0

```
┌─────────────────────────────────────────────┐
│  Mind Field                    [⚙ Settings] │
├─────────────────────────────────────────────┤
│                                             │
│   ┌──────────┬──────────┐                  │
│   │  Good    │  Good    │                  │
│   │ Memories │  Ideas   │                  │
│   │    🔍    │    🔍    │                  │
│   ├──────────┼──────────┤   ╭───────╮     │
│   │          │          │   │ NOW   │     │
│   │   [active combat]   │   │  ORB  │     │
│   │          │          │   ╰───────╯     │
│   ├──────────┼──────────┤                  │
│   │  Bad     │  Bad     │                  │
│   │ Memories │  Ideas   │                  │
│   │    🔍    │    🔍    │                  │
│   └──────────┴──────────┘                  │
│                                             │
├─────────────────────────────────────────────┤
│  Firing Intensity: [━━━━━━━━━░] 80%        │
├─────────────────────────────────────────────┤
│  [Add Thought] [🧘 Meditate] [⏸ Pause]     │
├─────────────────────────────────────────────┤
│  Your Thoughts:                             │
│  • "I can handle this" (Good Memory)        │
│  • "What if I fail?" (Bad Idea)             │
│  • 🧘 Meditated Mech (1:23 remaining)       │
│    [+3 more...]                             │
└─────────────────────────────────────────────┘
```

---

## FILE STRUCTURE - v1.0

**Single HTML file** (like current prototypes):
- All HTML, CSS, JavaScript in one file
- No external dependencies
- ~4000-5000 lines (estimated)
- Standalone, shareable

**Code Organization**:
```javascript
// 1. Configuration & Constants
// 2. State Management
// 3. Canvas Setup
// 4. Unit & Projectile Classes
// 5. Combat Logic
// 6. Meditation System
// 7. Tutorial System
// 8. Zoom/Inspect System
// 9. Save/Load System
// 10. Rendering Pipeline
// 11. UI Controls
// 12. Initialization
```

---

## TESTING CHECKLIST

Before calling v1.0 complete, verify:

### Core Mechanics
- [ ] Diagnostic creates balanced battlefield
- [ ] Combat fires at expected rate
- [ ] NOW orb responds to hits (color, pulse)
- [ ] Auto-balance triggers at 85:15
- [ ] Meditation completes full 6 cycles
- [ ] Meditated Mech spawns and reduces fire rate
- [ ] Mech expires after duration
- [ ] Manual thought input works (all types)

### Tutorial Flow
- [ ] Welcome → diagnostic → battlefield reveal
- [ ] Pause → zoom tutorial → upgrade demo
- [ ] Arms race demonstration works
- [ ] Meditation introduction triggers
- [ ] Tutorial completion saves state
- [ ] Tutorial doesn't repeat after completion
- [ ] Skip tutorial option works

### Zoom/Inspect
- [ ] Zoom into each quadrant works
- [ ] Unit labels visible and readable
- [ ] Combat continues during zoom
- [ ] Zoom out returns to overview
- [ ] Smooth animations (no jank)

### Polish
- [ ] All buttons have hover states
- [ ] Animations are smooth (60fps)
- [ ] No visual glitches
- [ ] Loading state shows briefly
- [ ] Notifications slide in/out cleanly

### Save/Load
- [ ] State saves on thought add
- [ ] State saves on meditation
- [ ] Load on return works
- [ ] "Start Fresh" clears data
- [ ] No data corruption errors

### Edge Cases
- [ ] Max units doesn't crash
- [ ] Rapid clicking doesn't break state
- [ ] Meditation can't start during meditation
- [ ] Zoom can't break during tutorial

---

## SUCCESS CRITERIA

v1.0 is ready to ship when:

1. **Complete**: All features in this spec implemented
2. **Stable**: No crashes, no major bugs
3. **Polished**: Animations smooth, UI clean
4. **Teachable**: New user can complete tutorial and understand the tool
5. **Reusable**: Save/load lets users return to their battlefield

---

## COST ESTIMATE

**Writing this spec**: Already done  
**One comprehensive build**: $5-8 (Opus, ~2-3 hours)  
**Testing/fixes**: $1-2 (minor adjustments)  
**Total**: ~$6-10

**vs. Incremental approach**:  
v7.3 ($2) + v7.4 ($2) + v0.8 ($3) + v0.9 ($2) + polish ($2) + fixes ($1-2) = $12-13

**Savings**: ~$2-3 + cleaner codebase + less context-switching

---

## BUILD INSTRUCTIONS FOR SUB-AGENT

**Base file**: `/Users/flint/.openclaw/workspace/mind-field/prototypes/mind-field-prototype-v7.2.html`

**Output file**: `/Users/flint/.openclaw/workspace/mind-field/mind-field-v1.0.html`

**Instructions**:
1. Read this spec completely (MIND-FIELD-V1.0-BUILD-SPEC.md)
2. Read v7.2 prototype to understand current implementation
3. Implement all NEW FEATURES (1-4)
4. Preserve all existing v7.2 functionality
5. Follow UI layout and code organization guidelines
6. Test against checklist before completion
7. Document any deviations or unimplemented features

**Time limit**: 2 hours (timeout if stuck)

**Model**: Opus 4-5 (for complex implementation)

---

_Spec created: 2026-02-04 09:47 EST_  
_Ready to build: YES_  
_Estimated completion: 1 comprehensive build_
