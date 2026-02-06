# Mind Field — Design Assets Tracker

Track everything that needs your input or approval.

---

## ✅ COMPLETED

| Asset | Status | Notes |
|-------|--------|-------|
| Core game loop | ✅ | Firing, meditation, auto-balance |
| Mobile responsive | ✅ | Collapsible panel, touch controls |
| Quadrant bases | ✅ | Sanctuary, Hope City, Ruins, Worry Works |

---

## 🔄 IN PROGRESS

| Asset | Status | What I Need From You |
|-------|--------|---------------------|
| Characters | 🔄 | Fill `character-roster.csv` with names/concepts |
| Cities/Regions | 🔄 | Review `city-roster.csv`, add flavor text |
| Conquerable Points | 🔄 | Names, locations, mechanics for capture |

---

## ⏳ PENDING YOUR INPUT

### 1. Characters (Priority: HIGH)
**File**: `characters/character-roster.csv`

Need from you:
- [ ] 8-12 character concepts (rough names okay)
- [ ] Which quadrant each belongs to
- [ ] What concept they embody (e.g., "doubt", "nostalgia")
- [ ] Vibe check: Are origins too sci-fi? More fantasy? Mix?

### 2. Conquerable Points (Priority: MEDIUM)
**File**: `cities/conquerable-points.csv`

Need from you:
- [ ] Confirm 8 points is right number (or more/less?)
- [ ] What happens when you capture one? (Stat boost? New unit type?)
- [ ] Can you lose control of captured points?

### 3. Game Mechanics (Priority: MEDIUM)
**Questions**:
- [ ] How do you send soldiers to capture points? (Drag and drop? Click point → select unit?)
- [ ] What are "habits" you mentioned? (Daily actions that spawn special units?)
- [ ] Win condition? Or endless like current version?

### 4. Visual Direction (Priority: LOW)
**Questions**:
- [ ] Character art style: Silhouettes? Detailed sprites? Abstract shapes?
- [ ] Map evolution: Does it grow as you capture points? Stay fixed?
- [ ] Day/night cycle or static lighting?

---

## 📝 TEMPLATES FOR YOU

### Adding a Character (copy to CSV):
```
Name,Origin,Quadrant,Unit Type,Thrives,Hates,Backstory
Vex Omen,The Void Between Thoughts,bad_idea,artillery,Planting seeds of doubt,Certainty and confidence,"A shadow that speaks in whispers only you can hear"
```

### Adding a Conquerable Point:
```
ID: courage_crest
Name: Courage Crest
Location: Top-center (between quadrants?)
Region: neutral_zone
Resource: bravery
Description: A hill where cowards become heroes
```

---

## 🎯 NEXT DECISION POINT

Once you fill the character CSV with 4-5 more entries, I can:
1. Generate full backstories for all of them
2. Create the random name generator
3. Start integrating characters into the game

**Blocker**: Need your character concepts first.

---

Last updated: 2026-02-05
