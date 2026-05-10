# Join Page Research Report

**Project:** Pack 57 join-page improvement
**Date:** 2026-05-10
**Scope:** Review Pack 57's current join experience, study strong nonprofit and scouting join pages, and synthesize practical recommendations for a better `/join` page.

---

## Executive summary

The current Pack 57 join experience already does a few important things well: it explains the time commitment, is unusually transparent about costs, and gives families a concrete sequence for getting started. The biggest opportunity is not information coverage; it is conversion flow.

Across strong nonprofit, youth-membership, and scouting join pages, the pattern is consistent:

1. **Lead with the child's outcome, not the organization's process.** Parents first want to know what their child gets.
2. **Offer one primary CTA and one softer fallback CTA.** The strongest pages capture both ready-to-join families and cautious families.
3. **Reduce first-click friction.** A long survey or registration flow is rarely the best first step.
4. **Show the pack is active and local.** Real photos, current meeting info, and a visible calendar do more work than generic copy.
5. **Answer parent objections directly.** Time, cost, safety, and “do we have to volunteer?” should be handled explicitly.
6. **Keep costs transparent and frame assistance positively.** Pack 57 is already ahead here.
7. **Mobile-first, parent-friendly layout matters.** Most families will encounter this page on a phone.

My recommendation is to reshape `/join` from a process page into a **conversion page**:
- top section focused on family value + next meeting + two CTAs,
- middle sections focused on “what to expect,” costs, FAQ, and trust,
- process details placed lower on the page after motivation and reassurance.

---

## Current Pack 57 join experience

### What is working now

From `join.md` and the homepage join sections:

- The page explains **time commitment** clearly and in family-friendly terms.
- The join flow is broken into **four understandable steps**.
- Cost information is **specific and transparent**, including pack dues, national fees, uniform costs, and financial assistance.
- The homepage already includes **testimonials** and a simplified “How to Join” section.
- The site has a visible **calendar** and strong local identity.

### What feels weak today

1. **The first meaningful CTA is a survey link buried inside step 1.**
   Families have to read into the page before they discover the primary action.

2. **The page starts with logistics, not aspiration.**
   It explains commitment and process before it sells the adventure, belonging, and growth families are signing up for.

3. **The current first step may feel like commitment too early.**
   “Complete the application form” is a high-friction first action compared with “Visit a meeting” or “Talk to us.”

4. **The join page lacks immediate social proof.**
   Testimonials live on the homepage, but the join page itself does not quickly show real families, recent activity, or “this pack is active.”

5. **Common parent questions are not grouped into an FAQ.**
   The page answers many of them indirectly, but families must read the whole page to find the answers.

6. **The page does not strongly distinguish a hard CTA from a soft CTA.**
   There is a contact button at the bottom, but no clearly paired choice like:
   - “Come to our next meeting”
   - “Have questions? Talk to us”

7. **The process is solid, but emotionally flat.**
   It is informative without being especially persuasive.

### Main takeaway

Pack 57 does not need dramatically more information. It needs **better sequencing**: motivation first, reassurance second, logistics third.

---

## Research stream 1: strong nonprofit and membership join pages

These examples were useful less because they match scouting exactly, and more because they show strong signup/page-conversion patterns.

### Notable examples

| Example | URL | What works | Takeaway for Pack 57 |
|---|---|---|---|
| BeAScout | https://beascout.scouting.org/ | Immediate location-based action, low-friction first step, clear “find a unit” flow | Let families start with a lightweight action before a full registration flow |
| Girl Scouts USA — Become a Girl Scout | https://www.girlscouts.org/en/get-involved/become-a-girl-scout.html | Minimal first-contact form, parent-friendly copy, FAQ structure, clear grade-level framing | Keep first-touch data collection small and parent-centered |
| YMCA of Metropolitan Los Angeles — Join | https://www.ymcala.org/join/ | Guided funnel, clear next step, optional softer path, family-centered benefits | Consider a stronger primary CTA with a lower-pressure secondary CTA |
| Little League — Play Little League | https://www.littleleague.org/play-little-league/ | Focuses on discovery and local fit rather than forcing signup too early | Local relevance should be emphasized more than administrative steps |
| Rotary — Join / Express Interest | https://www.rotary.org/en/get-involved/join | “Express Interest” lowers pressure and creates an easy soft CTA | A soft CTA like “Talk to a parent leader” could convert hesitant families |
| Membership examples summarized by Givebutter / JoinIt | https://givebutter.com/blog/membership-websites / https://joinit.com/blog/membership-site-examples | Tier clarity, benefits-first framing, stronger CTA wording than generic “submit” | Benefit framing and CTA language matter more than fancy layout |

### Cross-cutting lessons from nonprofit pages

- **Specific CTA language outperforms generic CTA language.**
  “Join Pack 57” is good; “Come to our next meeting” or “Start with a family visit” may be better at the top of the funnel.

- **Visitors need a reason before they need a form.**
  The best pages earn the click by clearly answering: why this, why now, why us?

- **Soft CTAs are not a compromise; they are a conversion tool.**
  Many families are curious before they are ready.

- **Trust signals should be near the CTA, not elsewhere on the site.**
  Real photos, parent quotes, and signs of activity reduce anxiety.

- **Minimal data collection wins.**
  If the first step is a Google Form, it should ask as little as possible and clearly explain how the information will be used.

---

## Review build results and identify next steps

The Jekyll build surfaced a calendar/config issue due to missing gcalendar-key.json, which is also needed in the worktree. I copied the key into the worktree as part of the isolated-branch workflow. We should retry serving from the worktree to verify the join page changes are rendering as intended.

Next actions:
- Resolve any remaining build-time calendar key issues (provide key.json in the worktree or adjust build config to fetch from secrets).
- Re-run bundle install and serve in the worktree.
- Open the local join page (http://localhost:4000/join) to review the new structure and copy.
- If acceptable, proceed with further content adjustments or confirmation steps.

Would you like me to continue with serving again now that the key issue is addressed, or would you prefer I perform any additional checks before re-serving?