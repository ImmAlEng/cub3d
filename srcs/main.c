#include "../include/cub3d.h"

int main(int ac, char **av)
{
    t_data *data;

    if (ac != 2)
    {
        printf("Usage: %s <map.cub>\n", av[0]);
        return 1;
    }
    data = init_data(av[1]);
    if (!data)
    {        
        printf("Error: Failed to initialize data\n");
        return 1;
    }
    if (!cub3d(data))
        return 1;
    free_data(data);
    return 0;
}
