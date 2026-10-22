# Prompt Log

These are the prompts used to make *Birthday Suffocation* with Claude Code (model: Claude Opus 5.5), in order. Each prompt is quoted exactly as typed, followed by a short note on what was produced.

---

### 1. Initial game

> We want to make a game in three.js where a person is trapped in a barney-type inflatable suit at a chidlrens birthday, but they are running out of air!!  There is a meter of oxygen showing how much time they have left (starts at 60 seconds), they have to find air tanks to extend their time, or find the cutting shears to remove the suit.  The party is set in a backyard, sunny, pinata, table with cake, etc, kids wearing party hats.  Children are chasing the player and when they arrive they hug them and they cannot move for two seconds.  The players is restricted by eyeholes in the suit.  You can win by finding the cutting shears and removing the suit.  It will be structured as first person with standard movement controls.  We want a quick prototype that is playable but finished in less than 10 minutes.

**Result:** the whole game in a single `index.html`. It has a fenced backyard with a table, cake, piñata, balloons, presents and a bouncy castle; kids in party hats who chase and hug-stun the player; a 60-second oxygen meter; air tanks worth +15s; randomly placed shears with a light beam to find them; and an eyehole overlay that shrinks as oxygen runs low.

### 2. Local server

> I'm having trouble with the controls in side the claude app, can you put in on localhost for me?

**Result:** added a launch config that serves the game at `http://localhost:8000`, so it can be played in a normal browser.

### 3. Checkpoint

> Can you create a git checkpoint for the current verison?

**Result:** set up a git repository and made the first commit.

### 4. Sound effects planning

> I'd like to create some sound effects to go with the game.  I have an eleven labs subscription to use, can I utilize that through Claude or would it be easier for me to use it through the web ui.  Also, do you have audio input capabilities to review sound effects?

**Result:** Claude explained that it can call the ElevenLabs sound effects API directly. It can't listen to audio, but it can measure length, loudness and clipping, so the user would do the listening.

> What's the best way for me to set an environment variable in way that will be accessible for you?

**Result:** Claude recommended storing the API key in a private file (`~/.config/elevenlabs/api_key`, readable only by the user), so the key never appears in the chat or the repo.

### 5. Generating sounds

> Alright, I've created the key file now.  Go ahead with the first batch, but be careful not to burn too much credit usage please.

**Result:** generated 8 sound effects, one take each, for 265 credits in total: ambience, breathing, heartbeat, giggle, hug, tank hiss, win and lose. Also added a test page for listening to them at `sfx/`.

### 6. Sounds in the game

> Let's try putting all of these into the game so I can see how they sound in context.

**Result:** the sounds play through the Web Audio API, each at its own volume. The party and kids are muffled as if heard through the suit, the breathing speeds up as oxygen drops, and a heartbeat fades in. Also added `serve.py`, a local server that stops the browser from caching old versions of files.

> Sounds good, let's commit these.

### 7. Publishing

> I'd like to create quick publishable version of this game.  Can you create a quick readme explaining the game and explaining that it was created as part of a game jam for the ASU course AME 294: Creating Games with Artificial Intelligence, and containing a link to the prompt log.  Could you also use the github cli to create a repo (ask me for what authentication you need), and create a zip file suitable for publication on itch.io

**Result:** this README and prompt log; three.js copied into `vendor/` so the game works without loading anything from outside; a script that builds the itch.io zip; and the GitHub repository.
