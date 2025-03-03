# Shorter Format Lesson Plan
This directory includes a template to be used when teaching the course in a shorter format (i.e. ~2.5 hours instead of 5).

The idea is to skip some of the project set up and focus on the implementation and coding with a goal of getting to the point of mobs spawning and being able to kill the player (i.e. the bare minimum game).


The template in this directory should be copied to the students' machines and has already set some initial features, as well as adding the mob spawning path and timer to skip that step and get to a usable game sooner.

To save more time, the Mob scene could be pre-created and included in the template. Some of the animation code could also be expedited.

## Steps

- Demonstrate working game from v0.6 build.
- Start with brief explanation of how the game engine works and node structure.
- Open Godot and begin existing lessons from Player scene creation:
	- Create player scene.
	- Add AnimatedSprite node and two animation sets, set as autoplay.
	- Add CollisionShape2D node.
	- **SKIP** scaling.
	- Add Player.tscn to Main.tscn and move to centre.
- Add script:
	- Demonstrate code for one move direction (printing output) and have students create other three.
	- Explain vectors & velocity, add to code with position updating.
	    - note: y sign is reversed.
	    - can use ``+`` instead of ``+=`` for velocity for simplicity.
	- **SKIP** normalisation.
	- Add speed and delta, **SKIP** over explaining delta in detail.
- This is usually the halfway point and a good time for a break.
- Animation:
	- Add play() & stop().
	- **SKIP** position clamp step
	- Add animation up/right selection.
	- Add animation flip -- as written in guide, or with if blocks for simplicity.
	- **SKIP** hit signal, hide(), and start() functions.
- Mob
	- Create scene (note different node type). 
	- Add sprite & collision nodes. Choose one animation set.
	- **SKIP** creating VisibilityNotifier2D node.
	- Update gravity and mask.
	- **SKIP** adding mob script.
- Main
	- Add mob scene to Main node exported variable.
	- Uncomment ``#$MobTimer.start()`` in ``_ready()``.
	- Test game (player is invulnerable).
	- Connect Player signal ``body_entered`` to existing code in main script.
		- This is simplified from lesson guide as it avoids creating a separate hit signal.
		- Make sure Player node is capitalised or signal connection will create new function.

