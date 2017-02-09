function [] = MakeTriangle(xVertices, yVertices, color, EdgeColor)

object = fill([xVertices], [yVertices], [color]);
set(object, 'EdgeColor',EdgeColor);