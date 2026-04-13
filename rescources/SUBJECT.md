````md
# cub3D

## Mandatory part

- **Program Name:** cub3D
- **Files to Submit:** All your files
- **Makefile:** `all`, `clean`, `fclean`, `re`, `bonus`
- **Arguments:** a map in format `*.cub`

## External Function

- `open`, `close`, `read`, `write`
- `printf`, `malloc`, `free`, `perror`, `strerror`, `exit`, `gettimeofday`
- All functions of the math library (`-lm`, `man 3 math`)
- All functions of the MinilibX library

- **Libft authorized:** Yes

## Description

You must create a “realistic” 3D graphical representation of the inside of a maze from a first-person perspective. You have to create this representation using the ray-casting principles mentioned earlier.

## Constraints

- You must use the miniLibX.
- The management of your window must remain smooth: changing to another window, minimizing, etc.
- Display different wall textures that vary depending on which side the wall is facing (`North`, `South`, `East`, `West`).
- Your program must be able to set the floor and ceiling colors to two different ones.

## Controls and window behavior

- The left and right arrow keys must allow you to look left and right in the maze.
- The `W`, `A`, `S`, and `D` keys must allow you to move the point of view through the maze.
- Pressing `ESC` must close the window and quit the program cleanly.
- Clicking on the red cross on the window’s frame must close the window and quit the program cleanly.
- The use of images of the MinilibX library is strongly recommended.

## Map file

- Your program must take as a first argument a scene description file with the `.cub` extension.
- The map must be composed of only 6 possible characters:
  - `0` for an empty space
  - `1` for a wall
  - `N`, `S`, `E`, or `W` for the player’s start position and spawning orientation

### Simple valid map

```text
111111
100101
101001
1100N1
111111
````

## Map rules

* The map must be closed/surrounded by walls, if not the program must return an error.
* Except for the map content, each type of element can be separated by one or more empty lines.
* Except for the map content, which always has to be the last, each type of element can be set in any order in the file.
* Except for the map, each type of information from an element can be separated by one or more spaces.
* The map must be parsed as it looks in the file.
* Spaces are a valid part of the map and are up to you to handle.
* You must be able to parse any kind of map, as long as it respects the rules of the map.

## Scene elements

Except for the map, each element must begin with its type identifier, followed by its specific information in a strict order.

### North texture

```text
NO ./path_to_the_north_texture
```

* identifier: `NO`
* path to the north texture

### South texture

```text
SO ./path_to_the_south_texture
```

* identifier: `SO`
* path to the south texture

### West texture

```text
WE ./path_to_the_west_texture
```

* identifier: `WE`
* path to the west texture

### East texture

```text
EA ./path_to_the_east_texture
```

* identifier: `EA`
* path to the east texture

### Floor color

```text
F 220,100,0
```

* identifier: `F`
* `R,G,B` colors in range `[0,255]`

### Ceiling color

```text
C 225,30,0
```

* identifier: `C`
* `R,G,B` colors in range `[0,255]`

## Minimalist `.cub` example

```text
NO ./path_to_the_north_texture
SO ./path_to_the_south_texture
WE ./path_to_the_west_texture
EA ./path_to_the_east_texture
F 220,100,0
C 225,30,0
1111111111111111111111111
1000000000110000000000001
1011000001110000000000001
1001000000000000000000001
111111111011000001110000000000001
100000000011000001110111111111111
11110111111111011100000010001
11110111111111011101010010001
11000000110101011100000010001
10000000000000001100000010001
10000000000000001101010010001
11000001110101011111011110N0111
11110111 1110101 101111010001
11111111 1111111 111111111111
```

## Errors

* If any misconfiguration of any kind is encountered in the file, the program must exit properly and return:

```text
Error
```

followed by an explicit error message of your choice.

---

# README Requirements

A `README.md` file must be provided at the root of your Git repository.

It must include at least:

* The very first line must be italicized and read:
  *This project has been created as part of the 42 curriculum by <login1>[, <login2>[, <login3>[...]]].*

* A **Description** section that clearly presents the project, including its goal and a brief overview.

* An **Instructions** section containing any relevant information about compilation, installation, and/or execution.

* A **Resources** section listing classic references related to the topic (documentation, articles, tutorials, etc.), as well as a description of how AI was used — specifying for which tasks and which parts of the project.

* Your README must be written in English.

---

# Bonus part

Bonuses will be evaluated only if your mandatory part is perfect.

## Bonus list

* Wall collisions
* A minimap system
* Doors which can open and close
* Animated sprites
* Rotate the point of view with the mouse

You are allowed to use other functions or add symbols on the map to complete the bonus part as long as their use is justified during your evaluation. You are also allowed to modify the expected scene file format to fit your needs.

```
```
