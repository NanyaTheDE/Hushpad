# Hushpad

A small stress-relief app built from fidget toys and soft, ASMR-style sounds. It's a single HTML file with no build step and no dependencies apart from Google Fonts.

## Toys

- **Spin**: a weighted fidget spinner that hums and ticks, with sparks at high speed.
- **Pop**: bubble wrap that refills, with crisp pops and confetti.
- **Slime**: a jiggly blob you can poke and stretch, with squelch and crackle sounds.
- **Sand**: a zen sand garden with a rake, a finger tool and stones.
- **Ripple**: a water pad tuned to a soft scale. Tap for drops, drag for rain.
- **Breathe**: a glowing orb paced in for 4, hold for 4, out for 6.

The **Today** screen tracks minutes played against a 5-minute daily goal, a weekly streak and a tally of everything you did.

## Details

- All sounds are generated live with the Web Audio API. There are no audio files.
- Light and dark themes. It follows the system setting until you choose one.
- On wide screens the app sits inside an iPhone frame. On phones it runs full screen.
- Motion respects `prefers-reduced-motion`.
- Progress is stored only in the browser's `localStorage`.

## Run it

Open `hushpad.html` in a browser. To host it, enable GitHub Pages for this repo and visit `/hushpad.html`.
