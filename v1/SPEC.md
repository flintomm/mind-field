# Mind Field — Improvement Spec Sheet

> Current: v1.0 | Mobile-responsive | Last updated: 2026-02-05

---

## 1. Visual & UX Polish

| Priority | Item | Description | Effort |
|----------|------|-------------|--------|
| P1 | **Unit idle animations** | Subtle breathing/pulsing when units aren't firing | Low |
| P1 | **Projectile impact variants** | Different impact effects based on unit type (infantry=small burst, artillery=shockwave) | Low |
| P2 | **Quadrant background textures** | Subtle patterns or gradients distinguishing the four zones | Medium |
| P2 | **Day/night cycle** | Optional theme that shifts based on time of day | Medium |
| P3 | **Particle ambient effects** | Floating dust, subtle fog, or energy wisps on the battlefield | Medium |

---

## 2. Audio Design

| Priority | Item | Description | Effort |
|----------|------|-------------|--------|
| P1 | **Firing sounds** | Distinct audio per unit type (soft pop for infantry, thud for tank, whistle for artillery) | Low |
| P1 | **Impact sounds** | Good vs bad side have different tonal qualities | Low |
| P1 | **Toggle mute** | Simple on/off, persisted to localStorage | Low |
| P2 | **Ambient battlefield audio** | Low drone that intensifies with chaos level | Medium |
| P2 | **Meditation audio cues** | Gentle bell or tone on breath transitions | Low |
| P3 | **Procedural soundscape** | Dynamic audio mixing based on battlefield state | High |

---

## 3. Core Mechanics

| Priority | Item | Description | Effort |
|----------|------|-------------|--------|
| P1 | **Unit retirement/fading** | Old thoughts gradually fade and disappear over time (configurable) | Medium |
| P1 | **Thought aging visual** | Units get slightly desaturated or smaller as they age | Low |
| P2 | **Chain reactions** | When one side dominates heavily, chance of "avalanche" (multiple auto-spawns) | Medium |
| P2 | **Critical hits** | Occasional powerful shots that shake the NOW orb more | Low |
| P2 | **Unit promotions** | Thoughts that persist long enough upgrade in visual weight | Medium |
| P3 | **Weather events** | Random "storms" that temporarily boost firing rates | Medium |

---

## 4. Meditation & Ceasefire

| Priority | Item | Description | Effort |
|----------|------|-------------|--------|
| P1 | **Multiple meditation types** | Box breathing, 4-7-8, simple countdown | Medium |
| P1 | **Meditation stats** | Track total meditation time, streaks | Low |
| P2 | **Guided meditation mode** | Optional text/voice guidance through breathing | Medium |
| P2 | **Post-meditation reflection** | Prompt to add a thought about how you feel | Low |
| P3 | **Scheduled reminders** | Gentle nudges to check in (if browser notifications enabled) | Medium |

---

## 5. Data & Persistence

| Priority | Item | Description | Effort |
|----------|------|-------------|--------|
| P1 | **Export/import save** | JSON backup/restore for user data | Low |
| P1 | **Session history** | Track daily snapshots of battlefield state | Medium |
| P2 | **Trend visualization** | Graph showing good vs bad forces over time | Medium |
| P2 | **Mood journaling** | Simple 1-5 rating + note after each session | Low |
| P3 | **Insights** | "Your bad memories fired 40% more this week" type observations | High |

---

## 6. Social & Sharing

| Priority | Item | Description | Effort |
|----------|------|-------------|--------|
| P2 | **Screenshot capture** | Save current battlefield as PNG | Low |
| P2 | **Shareable state** | Encode battlefield as URL hash for sharing | Medium |
| P3 | **Anonymous compare** | See aggregate stats ("Users meditate avg 3x/week") | High |
| P3 | **Guided sessions** | Link to share your battlefield with a friend for mutual support | Medium |

---

## 7. Performance & Technical

| Priority | Item | Description | Effort |
|----------|------|-------------|--------|
| P1 | **FPS monitoring** | Auto-reduce particle effects if frame rate drops | Low |
| P1 | **Mobile battery mode** | Detect low power and disable non-essential animations | Low |
| P2 | **PWA support** | Install as standalone app, offline basic functionality | Medium |
| P2 | **Cloud sync** | Optional sync across devices (Firebase/similar) | High |

---

## 8. Accessibility

| Priority | Item | Description | Effort |
|----------|------|-------------|--------|
| P1 | **Reduced motion mode** | Respect prefers-reduced-motion | Low |
| P1 | **Colorblind-friendly palette** | Alternative color scheme | Low |
| P2 | **Screen reader labels** | Proper ARIA for all interactive elements | Medium |
| P2 | **Keyboard navigation** | Full tab/arrow key control | Medium |
| P3 | **High contrast mode** | WCAG AAA compliant theme | Low |

---

## Quick Wins (Do These First)

1. **Toggle mute button** — Essential for mobile/public use
2. **Unit idle animations** — Makes battlefield feel alive
3. **Export save** — Users want to back up their data
4. **Reduced motion mode** — Accessibility baseline
5. **Screenshot capture** — Easy shareability

---

## Big Swing Ideas (Future Considerations)

- **AR mode**: View your battlefield in physical space
- **Voice input**: Add thoughts by speaking
- **AI therapist**: LLM-powered insights about your thought patterns
- **Multiplayer**: See friends' battlefields, send "peace reinforcements"
- **Seasonal events**: Holiday-themed visuals, special meditation modes

---

*Spec version: 1.0 | For discussion and prioritization*
