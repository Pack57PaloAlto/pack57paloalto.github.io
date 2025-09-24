---
# Feel free to add content and custom Front Matter to this file.
# To modify the layout, see https://jekyllrb.com/docs/themes/#overriding-theme-defaults

layout: default
navbarText: Palo Alto, CA
---

<!-- HERO -->
<section class="relative">
  <div class="absolute inset-0">
    <!-- Replace with your hero image -->
    <img src="/assets/images/hiking-together.jpg" alt="Cub Scouts hiking together" class="object-cover w-full h-full" />
    <div class="absolute inset-0 bg-black/45"></div>
  </div>
  <div class="relative max-w-6xl px-4 py-24 mx-auto text-center text-white sm:py-32">
    <h1 class="text-4xl font-extrabold tracking-wide uppercase sm:text-5xl md:text-6xl text-cub-gold">
      Adventure Begins Here
    </h1>
    <p class="max-w-2xl mx-auto mt-4 text-lg sm:text-xl">
      Join <span class="font-semibold">Pack 57</span> — where every child explores, belongs, and leads.
    </p>
    <div class="flex flex-wrap justify-center gap-4 mt-8">
      <a href="/join" class="inline-flex items-center px-6 py-3 font-bold transition bg-yellow-400 rounded-xl text-slate-900 hover:bg-yellow-300">
        Join Now
      </a>
      <a href="/calendar" class="inline-flex items-center px-6 py-3 font-semibold text-black transition rounded-xl bg-white/90 ring-1 ring-white/40 hover:bg-white/100">
        Upcoming Events
      </a>
    </div>
  </div>
</section>

<!-- EVENTS / CALENDAR PREVIEW -->
{%- assign now_epoch = site.time | date: "%s" -%}
{%- assign shown = 0 -%}
{%- assign remaining_events = 0 -%}
{%- assign additional_events = '' -%}

<!-- Collect and sort events -->
{%- assign upcoming = '' | split: '' -%}
{%- for p in site.pages -%}
  {%- if p.url and p.url contains '/events/' and p.event -%}
    {%- assign ev_iso = p.event.start.dateTime | default: p.event.start.date -%}
    {%- if ev_iso -%}
      {%- assign ev_epoch = ev_iso | date: "%s" -%}
      {%- if ev_epoch >= now_epoch -%}
        {%- assign upcoming = upcoming | push: p -%}
      {%- endif -%}
    {%- endif -%}
  {%- endif -%}
{%- endfor -%}
{%- assign upcoming = upcoming | sort: 'event.start.dateTime' -%}

<section class="pt-2 pb-8 bg-slate-50">
  <div class="max-w-6xl px-4 mx-auto">
    <h2 class="text-2xl font-extrabold tracking-wide text-center uppercase sm:text-4xl text-cub-blue leading-1">Coming Up</h2>
    <div class="grid items-stretch gap-6 mt-10 md:grid-cols-3">
      {%- for p in upcoming -%}
        {%- if shown < 2 -%}
          {%- assign ev_iso = p.event.start.dateTime | default: p.event.start.date -%}
          {%- assign end_iso = p.event.end.dateTime | default: p.event.end.date -%}
          {%- assign ev_day  = ev_iso  | date: "%Y-%m-%d" -%}
          {%- assign end_day = end_iso | date: "%Y-%m-%d" -%}
          <article class="flex flex-col justify-between h-full p-5 bg-white shadow-sm rounded-2xl ring-1 ring-slate-200">
            <!-- Date pinned top -->
            <p class="text-sm text-slate-500">
              {{ ev_iso | date: "%a • %b %-d" }}
              {%- if end_iso and end_day != ev_day -%}
                – {{ end_iso | date: "%a • %b %-d" }}
              {%- endif -%}
            </p>

            <!-- Middle content centered -->
            <div class="flex flex-col items-center justify-center text-center">
              <h3 class="mt-1 font-semibold">
                <a href="{{ p.url | relative_url }}" class="hover:underline">
                  {{ p.title | default: "Pack Event" }}
                </a>
              </h3>

              <!-- Location -> city only (public events only) -->
              {%- assign loc = p.event.location | default: p.location | default: p.venue -%}
              {%- if loc and p.layout contains "public" -%}
                {%- assign parts = loc | split: ',' -%}
                {%- if parts.size >= 3 -%}
                  {%- assign city = parts[1] | strip -%}
                {%- elsif parts.size == 2 -%}
                  {%- assign city = parts[0] | strip -%}
                {%- else -%}
                  {%- assign city = loc -%}
                {%- endif -%}
                <p class="mt-2 text-sm text-slate-600">{{ city }}</p>
              {%- endif -%}

              <!-- Times only for same-day timed events -->
              {%- if p.event.start.dateTime and end_iso and end_day == ev_day -%}
                <p class="mt-1 text-xs text-slate-500">
                  {{ p.event.start.dateTime | date: "%-I:%M %p" }}
                  {%- if p.event.end and p.event.end.dateTime -%}
                    – {{ p.event.end.dateTime | date: "%-I:%M %p" }}
                  {%- endif -%}
                </p>
              {%- endif -%}
            </div>

            <a href="{{ p.url | relative_url }}" class="inline-flex mt-3 font-semibold text-slate-900 hover:underline">Details</a>
          </article>
          {%- assign shown = shown | plus: 1 -%}
        {%- else -%}
          {%- if remaining_events < 3 -%}
            {%- assign remaining_events = remaining_events | plus: 1 -%}
            {%- assign current_ev_iso = p.event.start.dateTime | default: p.event.start.date -%}
            {%- capture event_item -%}
              <li class="pb-3 mb-3 border-b border-slate-100 last:border-0 last:mb-0 last:pb-0">
                <p class="text-sm text-slate-500">{{ current_ev_iso | date: "%b %-d" }}</p>
                <a href="{{ p.url | relative_url }}" class="font-medium hover:underline">{{ p.title | default: "Pack Event" }}</a>
              </li>
            {%- endcapture -%}
            {%- assign additional_events = additional_events | append: event_item -%}
          {%- endif -%}
        {%- endif -%}
      {%- endfor -%}
      
      <!-- Third card with list of more events -->
      {%- if remaining_events > 0 -%}
        <article class="flex flex-col justify-between h-full p-5 bg-white shadow-sm rounded-2xl ring-1 ring-slate-200">
          <h3 class="py-0 mt-0 mb-3 font-semibold">More Upcoming Events</h3>
          <div class="flex items-center flex-1">
            <ul class="w-full text-sm">
              {{ additional_events }}
            </ul>
          </div>
          <a href="/events/" class="inline-flex mt-3 font-semibold text-slate-900 hover:underline">See All Events</a>
        </article>
      {%- endif -%}
    </div>

    {%- if upcoming.size == 0 -%}
      <p class="mt-6 text-center text-slate-600">No upcoming events found.</p>
    {%- endif -%}

    <div class="mt-8 text-center">
      <a href="/events/" class="inline-flex items-center px-5 py-3 font-semibold text-white transition rounded-lg bg-slate-900 hover:bg-slate-800">
        Full Calendar
      </a>
    </div>
  </div>
</section>

<!-- WHY CUB SCOUTING -->
<section class="max-w-6xl px-4 py-16 mx-auto">
  <div class="grid items-center gap-10 md:grid-cols-2">
    <div>
      <h2 class="text-3xl font-extrabold tracking-wide uppercase sm:text-4xl text-cub-blue">Why Cub Scouting?</h2>
      <p class="mt-4 text-lg leading-7">
        Scouting America welcomes every family to discover outdoor adventure, community, and character. In Pack 57,
        kids build confidence and leadership through hands-on experiences — and have a blast doing it.
      </p>
      <ul class="mt-6 space-y-3">
        <li class="flex items-start gap-3"><span class="mt-1">🌲</span> <span>Outdoor skills, hikes, and campouts</span></li>
        <li class="flex items-start gap-3"><span class="mt-1">🧪</span> <span>STEM, crafts, and curiosity-driven learning</span></li>
        <li class="flex items-start gap-3"><span class="mt-1">🤝</span> <span>Friendship, teamwork, and service</span></li>
        <li class="flex items-start gap-3"><span class="mt-1">✨</span> <span>Inclusive—every youth and family is welcome</span></li>
      </ul>
      <div class="mt-6">
        <a href="/about" class="inline-flex items-center px-5 py-3 font-semibold text-white transition rounded-lg bg-slate-900 hover:bg-slate-800">
          Learn About Pack 57
        </a>
      </div>
    </div>
    <div class="grid grid-cols-2 gap-4">
      <!-- Swap in your own images -->
      <img src="/assets/images/crafting.jpg" alt="Parent and child working on a craft" class="object-cover w-full h-48 rounded-xl">
      <img src="/assets/images/cleanup.jpg" alt="Pack at community clean-up" class="object-cover w-full h-48 rounded-xl">
      <img src="/assets/images/smores.jpg" alt="Close up of Smores" class="object-cover w-full h-48 rounded-xl">
      <img src="/assets/images/goo.jpg" alt="Two scouts inspecting yellow science goo" class="object-cover w-full h-48 rounded-xl">
    </div>
  </div>
</section>

<!-- WHAT WE DO -->
<section class="bg-slate-50">
  <div class="max-w-6xl px-4 py-16 mx-auto">
    <h2 class="text-3xl font-extrabold tracking-wide text-center uppercase sm:text-4xl text-cub-blue">What We Do</h2>
    <p class="max-w-2xl mx-auto mt-3 text-center">
      A quick look at our favorite pack and den activities.
    </p>
    <div class="grid gap-6 mt-10 sm:grid-cols-2 lg:grid-cols-4">
      <!-- Card -->
      <article class="overflow-hidden bg-white shadow-sm rounded-2xl ring-1 ring-slate-200">
        <img src="/assets/images/hiking-with-adults.jpg" alt="A group of adults hiking outdoors" class="object-cover w-full h-40">
        <div class="p-4">
          <h3 class="font-bold">Outdoor Skills</h3>
          <p class="mt-1 text-sm text-slate-600">Hikes, campouts, nature study, and leave-no-trace basics.</p>
        </div>
      </article>
      <article class="overflow-hidden bg-white shadow-sm rounded-2xl ring-1 ring-slate-200">
        <img src="/assets/images/pinewood.jpg" alt="STEM project" class="object-cover w-full h-40">
        <div class="p-4">
          <h3 class="font-bold">STEM & Creativity</h3>
          <p class="mt-1 text-sm text-slate-600">From Pinewood Derby cars to hands-on projects, Scouts design, build, and discover new skills.</p>
        </div>
      </article>
      <article class="overflow-hidden bg-white shadow-sm rounded-2xl ring-1 ring-slate-200">
        <img src="/assets/images/food-drive.jpg" alt="Community service" class="object-cover w-full h-40">
        <div class="p-4">
          <h3 class="font-bold">Community Service</h3>
          <p class="mt-1 text-sm text-slate-600">Pack service days and projects that make a difference.</p>
        </div>
      </article>
      <article class="overflow-hidden bg-white shadow-sm rounded-2xl ring-1 ring-slate-200">
        <img src="/assets/images/ball-game.jpg" alt="Games and fun" class="object-cover w-full h-40">
        <div class="p-4">
          <h3 class="font-bold">Fun & Friendship</h3>
          <p class="mt-1 text-sm text-slate-600">Games, campfires, and celebrations that build our community.</p>
        </div>
      </article>
    </div>
  </div>
</section>

<!-- BE PART OF THE PACK (Leaders + Dens) -->
<section class="max-w-6xl px-4 py-16 mx-auto">
  <div class="grid gap-12 lg:grid-cols-2">
    <!-- Leaders -->
    <div markdown="1">
      {% include leaders.md %}
</div>
    <!-- Den Finder / Schedule -->
    <div>
      <h2 class="text-3xl font-extrabold tracking-wide uppercase sm:text-4xl text-cub-blue">Find Your Den</h2>
      <p class="mt-3">Meetings near you, tailored to grade/age. New families welcome—jump in anytime.</p>
      <div class="grid gap-4 mt-6">
        <div class="p-4 rounded-xl ring-1 ring-slate-200">
          <p class="font-semibold">Lions (K)</p>
          <p class="text-sm text-slate-600">Thursdays • 6–7pm</p>
        </div>
        <div class="p-4 rounded-xl ring-1 ring-slate-200">
          <p class="font-semibold">Tigers (1)</p>
          <p class="text-sm text-slate-600">Thursdays • 6–7pm</p>
        </div>
        <div class="p-4 rounded-xl ring-1 ring-slate-200">
          <p class="font-semibold">Wolves (2)</p>
          <p class="text-sm text-slate-600">Thursdays • 6–7pm</p>
        </div>
        <div class="p-4 rounded-xl ring-1 ring-slate-200">
          <p class="font-semibold">Bears and Webelos (3-4)</p>
          <p class="text-sm text-slate-600">Thursdays • 6–7pm</p>
        </div>
        <div class="p-4 rounded-xl ring-1 ring-slate-200">
          <p class="font-semibold">Arrows of Light (5)</p>
          <p class="text-sm text-slate-600">Thursdays • 6–7:30pm</p>
        </div>
      </div>
      <div class="mt-6">
        <a href="/contact" class="inline-flex items-center px-5 py-3 font-semibold text-white transition rounded-lg bg-slate-900 hover:bg-slate-800">
          Ask a Question
        </a>
      </div>
    </div>
  </div>
</section>

<!-- HOW TO JOIN -->
<section class="bg-slate-50">
  <div class="max-w-6xl px-4 py-16 mx-auto">
    <h2 class="text-3xl font-extrabold tracking-wide text-center uppercase sm:text-4xl text-cub-blue">How to Join</h2>
    <div class="grid gap-6 mt-10 md:grid-cols-4">
      <div class="p-6 text-center bg-white rounded-2xl ring-1 ring-slate-200">
        <div class="text-3xl">📝</div>
        <p class="mt-3 font-semibold">1) Register</p>
        <p class="mt-1 text-sm text-slate-600">Fill out a quick online form.</p>
      </div>
      <div class="p-6 text-center bg-white rounded-2xl ring-1 ring-slate-200">
        <div class="text-3xl">👋</div>
        <p class="mt-3 font-semibold">2) Visit</p>
        <p class="mt-1 text-sm text-slate-600">Come to an open house or den meeting.</p>
      </div>
      <div class="p-6 text-center bg-white rounded-2xl ring-1 ring-slate-200">
        <div class="text-3xl">🎽</div>
        <p class="mt-3 font-semibold">3) Uniform</p>
        <p class="mt-1 text-sm text-slate-600">Grab the handbook & uniform basics.</p>
      </div>
      <div class="p-6 text-center bg-white rounded-2xl ring-1 ring-slate-200">
        <div class="text-3xl">🚀</div>
        <p class="mt-3 font-semibold">4) Start!</p>
        <p class="mt-1 text-sm text-slate-600">Jump into adventures with your den.</p>
      </div>
    </div>
    <div class="mt-8 text-center">
      <a href="/join" class="inline-flex items-center px-6 py-3 font-bold transition bg-yellow-400 rounded-xl text-cub-blue hover:bg-yellow-300">
        Join Pack 57
      </a>
    </div>
  </div>
</section>

<!-- TESTIMONIALS -->
<section class="max-w-6xl px-4 py-16 mx-auto">
  <h2 class="text-3xl font-extrabold tracking-wide text-center uppercase sm:text-4xl text-cub-blue">Families Love It</h2>
  <div class="grid gap-6 mt-10 md:grid-cols-2">
    <figure class="p-6 bg-white rounded-2xl ring-1 ring-slate-200">
      <blockquote class="text-lg">“My child has grown in confidence and kindness. Pack 57 feels like family.”</blockquote>
      <figcaption class="mt-4 text-sm text-slate-600">— Parent, J.D.</figcaption>
    </figure>
    <figure class="p-6 bg-white rounded-2xl ring-1 ring-slate-200">
      <blockquote class="text-lg">“I love camping with friends and learning new skills every month!”</blockquote>
      <figcaption class="mt-4 text-sm text-slate-600">— Scout, A.R.</figcaption>
    </figure>
  </div>
</section>

<!-- FINAL CTA -->
<section class="max-w-6xl px-4 py-16 mx-auto text-center bg-slate-50">
  <h2 class="text-3xl font-extrabold tracking-wide uppercase sm:text-4xl text-cub-blue">Ready to Explore?</h2>
  <p class="mt-3">New to Scouting? We’ll help you get started. Everyone’s welcome.</p>
  <div class="mt-6">
    <a href="/join" class="inline-flex items-center px-6 py-3 font-bold transition bg-yellow-400 rounded-xl text-cub-blue hover:bg-yellow-300">
      Join Pack 57
    </a>
  </div>
</section>
