function [] = MakeRectangle(center, width_height, rgb_color, EdgeColor)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  This function program defines the x-y coordinates of the four 
%  vertices of a rectangle and fills the interior area by the color 
%  specified by the RGB color code.
%
%  Input:
%    center       = a 1 x 2 vector which specifies the x and y 
%                   coordinates of the center of rectangle, respectively
%    width_height = a 1 x 2 vector which specifies the width and height
%                   of the rectangle, respectively
%    rgb_color    = a 1 x 3 vector which specifies the amount of red, 
%                   green and blue on a normalized scale (0 to 1)
%  Output:  None
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% South-west vertex
x_SW = center(1) - width_height(1) / 2.0;
y_SW = center(2) - width_height(2) / 2.0;

%% South-east vertex
x_SE = center(1) + width_height(1) / 2.0;
y_SE = center(2) - width_height(2) / 2.0;

%% North-west vertex
x_NW = center(1) - width_height(1) / 2.0;
y_NW = center(2) + width_height(2) / 2.0;

%% North-east vertex
x_NE = center(1) + width_height(1) / 2.0;
y_NE = center(2) + width_height(2) / 2.0;

%% Fill the rectangle with color
object = fill([x_SW x_SE x_NE x_NW], [y_SW y_SE y_NE y_NW], rgb_color);
set(object, 'EdgeColor',EdgeColor);