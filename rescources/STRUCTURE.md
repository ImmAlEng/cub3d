# ver1.0 Directory Structure

This project is organized around a classic 42 cub3D layout: one main application, one custom C library (libft), one graphics library (MiniLibX), and project resources.

## Top-level files

- `Makefile`: Builds `cub3d`, compiles project sources, and builds `libft` + `mlx` dependencies.
- `README.md`: High-level project documentation.

## Core project folders

- `include/`: Shared headers for the project (main public header lives here).
- `srcs/`: Main cub3D application source code.
	- `main.c`: Program entry point.
	- `core/`: Initialization, event hooks, and exit/free/error handling.
	- `engine/`: Player movement, DDA, and raycasting math.
	- `parser/`: `.cub` file reading and map validation.
	- `render/`: Textures, drawing, and MLX image handling.
	- `utils/`: Small generic helper functions used across the project.
- `maps/`: Example/test `.cub` map files.
- `textures/`: Texture assets used by the renderer.

## External/internal dependencies

- `libft/`: Personal utility library (string/memory/list helpers, GNL, limits, etc.), built as `libft.a`.
- `mlx/`: MiniLibX graphics library (X11/Linux version), built as `libmlx.a`.

## Project tracking docs

- `rescources/`: Internal project notes and tracking files.
	- `SUBJECT.md`: Subject/specification notes.
	- `TODO.md`: Task checklist.
	- `CHANGELOG_IMENGELS.md`: Progress history.
	- `STRUCTURE.md`: This file.


