var color = argument0,
sprite = argument1;
str = ""
switch color{
    case 0: str = ""; break;
    case 1: str = "red"; break;
    case 2: str = "blue"; break;
    case 3: str = "borange"; break;
    case 4: str = "bblue"; break;
    case 5: str = "bwhite"; break;
}

return asset_get_index(sprite_get_name(sprite) + str)
