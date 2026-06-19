# Notion → Jekyll Content Migration Design

**Date:** 2026-04-20
**Status:** Approved (pending final review)
**Author:** Brainstorm with Jake (cubmaster/webmaster)

## Problem

Pack 57 currently splits its online presence between the Jekyll site (public, family-facing) and a Notion workspace (intended as an internal wiki for parents and volunteers). In practice, the Notion wiki doesn't get maintained — nobody else updates it — so it's neither a trusted reference nor a place worth pointing families to.

The Jekyll site is already the Pack's canonical source of public info. We want to consolidate by porting the useful Notion content into the Jekyll site and retiring the Notion wiki.

## Posture: Open Nonprofit

Pack 57 operates with an "open nonprofit" stance — akin to radical transparency practiced by groups like charity:water or Wikimedia. Private info (rosters, budgets, individual contact details) lives in a Google Sheet / Google Drive. Everything else — how-tos, training costs, policies — is public on the website. We are not trying to hide anything; we are trying to be a welcoming, legible Pack.

This shapes content decisions: candid language ("we currently ask volunteers to pay; we're working on fundraising to change that"), direct links to external tooling, no artificial "members-only" gates.

## Scope

### In scope

- Port substantive content from 6 Notion pages into new Jekyll pages
- Add a "Resources" top-level section with a hub landing page
- Add a calendar subscription page under `/calendar/subscribe`
- Enrich `/contact` with a mailing-list / Google Group sign-up Google Form
- Update one existing dollar figure on `/join` (Pack dues: $180 → $185 for new year)

### Out of scope

- Migrating the Notion page structure wholesale (we are curating, not mirroring)
- Any redesign of existing pages (home, about, join, calendar, contact keep current layouts)
- Automated sync from Google Sheets to the site (roster stays linked out, not embedded)
- Actually deleting / archiving the Notion workspace (separate task for after launch)

## Information Architecture

New and updated URLs:

```
/                                 (no change)
/about                            (no change)
/join                             (UPDATED — Pack dues figure)
/calendar                         (UPDATED — add "Subscribe" link at top)
/calendar/subscribe               NEW — how to subscribe via Google / iCal
/contact                          UPDATED — adds mailing-list Google Form + role emails
/events/...                       (no change — generated from Google Calendar)

/resources                        NEW — hub landing page (card grid)
/resources/safety                 NEW — Youth Protection & training
/resources/new-family             NEW — welcome/onboarding guide
/resources/volunteer              NEW — why + how to help, link to roster sheet
/resources/uniform                NEW — short uniform & gear guide
/resources/links                  NEW — curated external links hub
```

**Navigation:** add a single new top-level link, **Resources**, to the site navbar (in `_layouts/default.html`). Placement: between "Join" and "Calendar" (subject to visual check during implementation).

**Rationale:**

- `/resources` is a catch-all hub matching the purpose of the Notion workspace it replaces.
- Each child page gets its own URL so it can be shared directly ("go read `/resources/safety` before the next campout").
- `/calendar/subscribe` nests under calendar since it's obviously calendar-related; main `/calendar` gets a link at the top pointing to it.
- Mailing-list Google Form lives on `/contact` (rather than a new `/stay-in-touch` page) because Contact is currently nearly empty and is the natural "how do I reach you" page.

## Page Content Plans

### `/resources` (hub landing page)

- Short intro paragraph: "Everything current and new Pack 57 families need to look up."
- Card grid (Tailwind, reusing the card pattern from `/`): one card per child page — title, one-sentence blurb, link.
- Footer line: "Looking to join? → /join · Contact a leader → /contact"

### `/resources/safety` — Youth Protection & Training

- Callout: "Youth Protection is mandatory for adult volunteers — non-negotiable."
- **What's required:** both Scouting America Youth Protection Training (YPT) *and* California state training (AB 506 mandated reporter + Live Scan background check). Bullet list.
- **Costs (transparent):**
  - YPT modules: free through my.scouting.org
  - California mandated reporter training: ~$40, ~2 hours
  - Live Scan: ~$26 rolling fee + ~$17 FBI = ~$43 total
  - Pack currently asks volunteers to pay; we are working toward fundraising to cover these costs — reach out to the Cubmaster if you want to help organize that.
- **Core policies in plain English:** two-deep leadership, no one-on-one, buddy system, background checks, mandatory reporting, open-observation meetings.
- **Where to get trained:** link to my.scouting.org, californiascouting.org (Pacific Skyline Council).
- **Dropped from Notion source:** the extended "Why This Matters" philosophy section (vibey, not actionable).

### `/resources/new-family` — Welcome & Onboarding

- "Welcome to Pack 57 🐾" + one-paragraph orientation.
- **What Cub Scouts is:** K–5, ranks (Lion → Tiger → Wolf → Bear → Webelos → Arrow of Light), dens + pack structure, adventures → badges.
- **How the pack runs:** monthly pack meetings, 2–3× den meetings per month, 2–4 campouts per year. Mirror the time-commitment callout from `/join` but framed for families who already joined.
- **Getting-started checklist:** register, buy uniform (handbook provided), subscribe to calendars, YPT if volunteering, join mailing list.
- Links to `/join`, `/calendar/subscribe`, `/resources/safety`, `/resources/uniform`, `/contact`.
- **Dropped from Notion source:** the "Tips for New Families" pep-talk section.

### `/resources/volunteer` — How to Help

- "Volunteers run this Pack" — two sentences on why every family's involvement matters.
- **Ways to pitch in** (short, not per-role deep-dives):
  - One-time event help (Pinewood Derby, Blue & Gold, service days)
  - Recurring den helper
  - Committee roles (treasurer, advancement, etc.)
  - Event coordinators
- **Recognition:** brief mention — Pack awards and Scouting awards (training/tenure, Scouter's Training Award, etc.).
- **Current roster + open roles:** link to the Pack's shared Google Sheet (covers calendar, volunteers, budget): `https://docs.google.com/spreadsheets/d/1dC3zg4eecdJuHQKvt8jr3OB_mXrnipVDs1b8nY89NAM/edit`. Link text should point people toward the volunteers tab.
- CTA: "Interested? → /contact"
- **Dropped from Notion source:** per-role deep descriptions (Jake confirmed these are too much info and not worth maintaining).

### `/resources/uniform` — Uniform & Gear

The Notion source page is empty; this gets written fresh from content already on `/join`:

- Short table by rank: rank → uniform shirt color + neckerchief + handbook title.
- Cost: ~$40–$75 for uniform. Pack 57 provides the handbook.
- Pack 57 **uniform bank**: lightly used uniforms available — contact us at webmaster@ or cubmaster@.
- Link out to Scout Shop (also listed in `/resources/links`).

### `/resources/links` — External Links Hub

Grouped list with one-line descriptions:

- **Scoutbook Plus** (`scoutbook.scouting.org`) — advancement tracking; where parents see their Scout's progress.
- **Scout Shop** (`scoutshop.org`) — uniforms and gear.
- **my.scouting.org** — Scouting America's training portal (YPT lives here).
- **californiascouting.org** — CA-specific training and council info (Pacific Skyline Council).
- **Scouting America "Welcome New Cub Scout Family"** — official BSA onboarding guide.
- **Scout Life magazine** — $15 add-on at registration.

### `/calendar/subscribe` — Subscribing to Calendars

- Short intro: which calendars exist (1 public Pack calendar + 5 private den calendars: Lion, Tiger, Wolf, Bear, Webelos/AOL), how to request den access (email `webmaster@pack57paloalto.com`).
- **Google Calendar instructions:** numbered steps (based on the 5-step flow in Notion). Screenshot placeholders (`<!-- TODO: screenshot -->`) for now — screenshots exist in Notion and can be exported/added later, but are not blockers.
- **Calendar IDs table:** calendar name → Calendar ID (pull from `_config.yml` so IDs stay in sync; may do this via Liquid or copy the values).
- **iCal format:** URL pattern + a worked example (the public Pack calendar URL).
- **Leader section at bottom** (not hidden — open-nonprofit posture): how to edit events, emoji conventions for den meeting titles, the "site rebuilds every 15 min at :00/:15/:30/:45" note.

### `/calendar` (existing — minor update)

- Add a "Subscribe to these calendars →" link near the top pointing to `/calendar/subscribe`.

### `/contact` (existing — enrich)

- Keep the existing `cubmaster@` email line.
- **Add role-specific contacts:** Cubmaster (`cubmaster@`), Committee Chair (`chair@`), Webmaster (`webmaster@`).
- **Add "Stay in the Loop" section:** Google Form for mailing-list sign-up. Form URL is a `<!-- TODO: form URL -->` placeholder — Jake to provide. Form should collect: name, Scout's grade (if applicable), email. Leaders then manually add requesters to the appropriate Google Group.
- Rationale for the Form approach (over a direct "Ask to join Google Group" link): reuses the pattern already used for the Incoming Family Survey on `/join`, gives leaders approval control, avoids Google Group admin-config dependencies.

### `/join` (existing — one-line update)

- Change the Pack dues figure from **$180 (2025)** to **$185 (2026)**. All other dollar amounts (national fee $85, Scout Life $15, uniform $40–$75, YPT $65, CA training ~$40) remain the same.

## Component Reuse

- Card grid on `/resources` reuses the Tailwind card pattern already in `index.md` (see the "Coming Up" and "What We Do" sections). Inline the cards in `/resources/index.md`; no new includes or layouts needed.
- All new pages use the existing `default` layout.
- No new data files, plugins, or build-time changes.

## Data Sources / External URLs

| Purpose | URL | Notes |
|---|---|---|
| Shared Pack Google Sheet (calendar / volunteers / budget) | `https://docs.google.com/spreadsheets/d/1dC3zg4eecdJuHQKvt8jr3OB_mXrnipVDs1b8nY89NAM/edit` | Linked from `/resources/volunteer` |
| Mailing-list Google Form | TODO — Jake to provide | Linked from `/contact` |
| Incoming Family Survey Form | (already on `/join`) | Unchanged |
| Calendar subscribe screenshots | exist in Notion | Export and add later; not launch-blocking |

## Testing & Verification

- `bundle exec jekyll build` must succeed with no errors/warnings on the new pages.
- `bundle exec jekyll serve` — manually walk the nav from each page to verify all new links resolve.
- Verify on mobile width that the `/resources` card grid reflows acceptably.
- Verify no broken internal links (every new cross-link target exists).
- Verify the updated `/join` dues figure ($185).

## Migration / Rollout Notes

- All changes are additive + one small edit; low risk.
- Deploy via the existing GitHub Actions / Cloudflare Pages pipeline (no workflow changes).
- After launch, retire the Notion wiki: replace all its content with a single link to the site.

## Open Questions (to resolve during implementation)

1. **Mailing-list Google Form URL** — Jake to provide; otherwise placeholder.
2. **Calendar subscribe screenshots** — pull from Notion export? Or leave placeholders and add later.
3. **Volunteer tab gid** on the shared sheet — link to the spreadsheet root, or a specific tab? (Link to root is simpler; user can tab-switch.)
