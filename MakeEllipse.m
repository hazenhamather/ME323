function [] = MakeEllipse(center,majorRadius, color, EdgeColor)

xCenter = center(1);
yCenter = center(2);

x = xCenter + majorRadius * sin(0:0.1*pi:2 * pi);
y = yCenter + 0.3 * majorRadius * cos(0:0.1*pi:2*pi);

object = fill(x,y,color);
set(object, 'EdgeColor',EdgeColor);