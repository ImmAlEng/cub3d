#ifndef CUB3D_H
#define CUB3D_H

#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <fcntl.h>
#include <math.h>  
#include "../mlx/mlx.h"

typedef enum e_error
{
    ERR_ARGC,
    ERR_FILE,
    ERR_MAP,
    ERR_TEXTURE,
    ERR_MLX,
    ERR_MEMORY,
    ERR_UNKNOWN
}   t_error;
typedef struct s_img
{
    void    *img;
    char    *addr;
    int     bits_per_pixel;
    int     line_length;
    int     endian;
}   t_img;

typedef struct s_player
{
    double  x;
    double  y;
    double  dir_x;
    double  dir_y;
    double  plane_x;
    double  plane_y;
}   t_player;

typedef struct s_map
{
    char    **map;
    int     width;
    int     height;
}   t_map;

typedef struct s_game
{
    void        *mlx;
    void        *win;
    t_img       img;
    t_player    player;
    t_map       map;
}   t_game;

typedef struct s_graphics
{
    t_img   north;
    t_img   south;
    t_img   east;
    t_img   west;
    int     floor;
    int     ceiling;
}   t_graphics;

typedef struct s_parser
{
    char    *file;
    int     fd;
}   t_parser;

typedef struct s_data
{
    t_error      error;
    t_game      *game;
    t_graphics  *graphics;
    t_parser     *parser;
    t_player     *player;

}   t_data;

/*      core      */

/*      engine    */

/*      parser    */

/*      render    */

/*      utils     */

/*      debug      REMOVE BEFORE EVAL   */

#endif