**Play now on Itch.IO:** [https://aembear.itch.io/birthday-suffocation](https://aembear.itch.io/birthday-suffocation) 

# Birthday Suffocation

You're the big purple dinosaur at a backyard children's birthday party, and the zipper on your inflatable suit is jammed. You're running out of air.

Find the giant red shears and cut yourself free before your oxygen runs out, all while party guests in pointy hats chase you down to give you hugs you can't escape.

## How to play

- **WASD / arrow keys:** move
- **Mouse:** look around (click the game to lock the mouse; **Esc** pauses)
- **Shift:** run. It's faster, but you breathe harder and burn oxygen almost twice as fast.

**Goal:** find the spinning red shears (look for the faint red beam of light) and walk into them to cut yourself out of the suit.

- **Oxygen:** you start with 60 seconds of air. When it runs out, you pass out.
- **Air tanks:** green tanks around the yard each give you +15 seconds.
- **Kids:** the kids want hugs. When one reaches you, you're stuck for 2 seconds while they squeeze, and you lose a little extra air.
- **The suit:** you can only see through the costume's eyeholes, and they close in as your oxygen runs low.

## Running it locally

The game is a single HTML page with no build step. Browsers won't load ES modules from `file://`, so serve the folder:

```bash
python3 serve.py
```

Then open http://localhost:8000. The sound effects test page is at http://localhost:8000/sfx/.

## About

Birthday Suffocation was created for a game jam in the ASU course **AME 294: Creating Games with Artificial Intelligence**. The game was built with Claude Code, and the sound effects were generated with ElevenLabs.

The full record of prompts used to make the game is in the **[prompt log](PROMPT_LOG.md)**.

## Credits

- Built with Claude Code (Anthropic)
- Sound effects generated with [ElevenLabs](https://elevenlabs.io)
- 3D rendering by [three.js](https://threejs.org) (MIT license, included in `vendor/three/`)
