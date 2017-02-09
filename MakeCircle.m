function [] = MakeCircle(center, radius, color, EdgeColor)

xCenter = center(1);
yCenter = center(2);
radius = radius(1);

x = xCenter + radius * cos(0:0.1*pi:2*pi);
y = yCenter + radius * sin(0:0.1*pi:2*pi);

object = fill(x,y,color);
set(object, 'EdgeColor',EdgeColor);
