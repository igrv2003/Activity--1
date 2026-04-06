# Activity #1

## What is included

- `laberinto.s`: RISC-V RV32I program for Ripes.
- `maze_layout.txt`: source maze design used for the assembly implementation.
- `tools/validate_maze.py`: validates the maze dimensions and reachability.
- `tests/test_validate_maze.py`: local tests for the validator.

## Maze design summary

- Size: `25x35`
- Start: `(1, 1)`
- Exit: `(33, 23)`
- Walkable tiles: `407`
- Every walkable tile is reachable from the start.

## How the game works

1. The assembly code draws the maze on the LED matrix.
2. The player starts in the upper-left corridor using a bright green pixel.
3. The exit is a red pixel near the bottom-right of the maze.
4. The D-pad moves the player one tile per button press.
5. Wall collisions are blocked.
6. Reaching the exit paints the entire screen green.

## What you still need to do manually

1. Confirm your Moodle group with your partner.
2. Open `laberinto.s` in Ripes and verify the controls visually.
3. Record the `<= 5` minute video with both partners explaining:
   - how the maze is stored and drawn
   - how movement and collision detection work
   - how the win condition is detected
4. Upload a PDF that contains the unlisted YouTube link.
