---
name: join-page-design
description: Design specification for Pack 57 join page redesign
type: reference
---

# Join Page Design Spec

## Goal
Convert the Pack 57 join page into a conversion-focused, low-friction experience that clearly communicates value to families, surfaces trust early, and provides two clear calls to action (visit a meeting and ask questions).

## Architecture
- Hero/value proposition block (compelling, kid-focused outcomes)
- Two primary CTAs (primary action + soft secondary) near the hero
- Quick “Why join” section (3-4 bullets)
- “How it works” rewritten as a light 4-step flow
- Trust and activity signals (calendar link, photos, quotes)
- Costs & financial assistance summary with optional details below
- Visible FAQ addressing common objections
- Final CTA block mirroring the hero CTAs

## Copy Guidelines
- Hero headline: emphasize kid/adventure and Palo Alto locality
- CTAs: Primary = Visit a meeting; Secondary = Ask a question
- Use real stories and photos where possible; include at least one parent quote and one scout quote near the CTA
- Cost copy: upfront cost framing plus available assistance
- FAQ: direct, scannable sections with plain language

## Accessibility & Mobile
- Single-column layout for mobile; large tap targets; sufficient color contrast; aria-labels for controls; skip-links usable by keyboard

## Testing Plan
- Manual review: verify CTAs appear above the fold; ensure calendar/meeting links work; confirm FAQ is visible without expanding sections
- Content QA: ensure copy reflects local Palo Alto context
- Optional: lightweight A/B concept tests for CTA text and order (Visit a meeting first vs Join Now)

## Deliverables
- Updated join.md reflecting the new flow
- A plan for A/B tests (lightweight, no tooling required)
- The final design spec saved to docs/superpowers/specs/2026-05-10-join-page-design.md

