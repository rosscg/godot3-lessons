# Godot 3 Lesson Plan
A structured lesson plan for the Godot 3 tutorial project [available here.](https://docs.godotengine.org/en/3.3/getting_started/step_by_step/your_first_game.html)

**Students will develop a working game which they will have the skills to build upon in the future.**

This tutorial reworks the existing material into a format which may be taught to a class, and includes partial builds at each milestone. This allows the instructor to better explain the choices behind each decision and to demonstrate iterative builds.

It is designed to be taught to students with little-to-no coding experience, however it is expected that the instructor has some coding experience and is able to describe basic concepts as they arise independently from this documentation.

The lessons are designed for a format whereby the instructor can present the material on a projected screen and students are able to follow along on their own machines. The instructor can then demonstrate a working build at each milestone. Each 'milestone' is presented in a separate folder which includes the current build.

The class is expected to take between 3-5 hours in total. The course is designed such that the students will have a working game with which they can interact from as early as possible. Lessons iterate upon the core design, therefore ending the classes at any given milestone will be fulfilling.

### Software Requirements ###

Each student machine will need [Godot 3](https://godotengine.org/download/archive/) installed.

They will also need the art assets saved locally. These are contained in a zip file in the /Lessons/files directory.

This class was designed using Godot 3.3.3 and has been tested up to 3.5.2

### Short Format ###
For shorter sessions running for ~2 hours, an alternative lesson plan is included in /Lessons/ShortFormat/ see the enclosed README for details.


### Common Issues ###
Some common issues and mistakes encountered when running this course for classes aged ~17:

- ``Input.is_action_just_pressed()`` instead of ``Input.is_action_pressed()``
- If nodes are not names correctly (including capitalisation) later steps may fail.
- Elements within the Player/Mob scene may be moved away from the origin, making everything offset when they're added to the main scene.


- Importance of indentation
- Importance of code grammar, spelling, spaces
- Correct nesting within the Godot node hierarchy