clc 
clear all

%% Blue Background
MakeRectangle([12.5 22.5],[25 25],[0.2 0.8 1], 'None')
hold on
axis equal
axis([0 25 0 35])
%% Brown Tree Trunk
MakeRectangle([15 10],[2 8],[.4 .2 0], 'None')

%% Incrementing tree triangles
MakeTriangle([10.5 15 19.5],[14 20 14], [0 1 0], 'None')
MakeTriangle([11.5 15 18.5],[17 22 17],[0 1 0], 'None')
MakeTriangle([12 15 18],[20 25 20], [0 1 0],'None')
MakeTriangle([13 15 17],[23 27 23], [0 1 0], 'None')
MakeTriangle([13.5 15 16.5],[25.5 28 25.5], [0 1 0], 'None')

%% Christmas Lights
% Blue
MakeCircle([16 15],0.15,[0 0 1],'blue')
MakeCircle([13 15],0.15,[0 0 1],'blue')
MakeCircle([15 16],0.15,[0 0 1],'blue')
MakeCircle([16 18],0.15,[0 0 1],'blue')
MakeCircle([17 19],0.15,[0 0 1],'blue')
MakeCircle([13 17],0.15,[0 0 1],'blue')
MakeCircle([14 18],0.15,[0 0 1],'blue')
MakeCircle([15 19],0.15,[0 0 1],'blue')
MakeCircle([16 20],0.15,[0 0 1],'blue')
MakeCircle([14 21],0.15,[0 0 1],'blue')
MakeCircle([15.5 22],0.15,[0 0 1],'blue')
MakeCircle([14 18],0.15,[0 0 1],'blue')
MakeCircle([14.5 24],0.15,[0 0 1],'blue')
MakeCircle([15.8 25],0.15,[0 0 1],'blue')
MakeCircle([15.25 27],0.15,[0 0 1],'blue')

%Red
MakeCircle([14 17.2],0.15,[1 0 0], 'red')
MakeCircle([12 15],0.15,[1 0 0], 'red')
MakeCircle([14 16],0.15,[1 0 0], 'red')
MakeCircle([16 17],0.15,[1 0 0], 'red')
MakeCircle([17.5 18],0.15,[1 0 0], 'red')
MakeCircle([13 18],0.15,[1 0 0], 'red')
MakeCircle([14 19],0.15,[1 0 0], 'red')
MakeCircle([15 20],0.15,[1 0 0], 'red')
MakeCircle([16 21],0.15,[1 0 0], 'red')
MakeCircle([13 21],0.15,[1 0 0], 'red')
MakeCircle([14 22],0.15,[1 0 0], 'red')
MakeCircle([15 23],0.15,[1 0 0], 'red')
MakeCircle([16 24],0.15,[1 0 0], 'red')
MakeCircle([14.5 26],0.15,[1 0 0], 'red')


%% Brown House
MakeRectangle([22.5 12],[3 4],[.8 .4 0], 'None')

%% Red Chimney
MakeRectangle([23.25 16],[0.5 3],[1 0 0], 'None')

%% Black Roof
MakeTriangle([21,22.5,24],[14,17,14],[0 0 0],'None')

%% Black Door
MakeRectangle([22.5 11.25],[1 2.5],[0 0 0],'None')

%% Driveway to House
% fill([20.5,21.5,23.5,22.5],[0,10,10,0],[.5, .5, .5])

%% Clouds
MakeCircle([5 30],1.5,[1 1 1], 'None')
MakeCircle([2.5 30],1.5,[1 1 1],'None')
MakeCircle([3 28], 1.5, [1 1 1], 'None')
MakeCircle([6 29], 1.5, [1 1 1], 'None')
MakeCircle([5 27], 2, [1 1 1], 'None')
MakeCircle([7 27], 2, [1 1 1], 'None')
MakeCircle([10 28], 2, [1 1 1], 'None')
MakeCircle([8.5 29], 2, [1 1 1], 'None')
MakeCircle([7.5 30], 2, [1 1 1], 'None')

MakeCircle([24 32], 2, [1 1 1], 'None')
MakeCircle([21 33], 2, [1 1 1], 'None')
MakeCircle([19 30], 2, [1 1 1], 'None')
MakeCircle([19.5 32], 2, [1 1 1], 'None')
MakeCircle([23.5 29], 2, [1 1 1], 'None')
MakeCircle([22 32], 2, [1 1 1], 'None')
MakeCircle([21.5 28.5], 2, [1 1 1], 'None')
MakeCircle([19 28], 2, [1 1 1], 'None')

%% Smoke from Chimney
MakeCircle([23.25 18],0.25,[1 1 1], 'None')
MakeCircle([23.25 19],0.50,[1 1 1], 'None')
MakeCircle([23.25 20.5],0.75,[1 1 1], 'None')
MakeCircle([23.25 22.5],0.9,[1 1 1], 'None')


%% Snowman
MakeCircle([4.5 7], 2,[1 1 1], 'black')
MakeCircle([4.5 10.5],1.5,[1 1 1], 'black')
MakeCircle([4.5 13],1,[1 1 1],'black')

%% Snowman Eyes
MakeCircle([4.15 13.25],0.2,[0 0 0],'black')
MakeCircle([4.85 13.25],0.2,[0 0 0],'black')

%% Snowman Nose
MakeTriangle([4.35 4.5 4.65],[12.5 13 12.5],[1 0.5 .3],'None')

%% Snowman Mouth
MakeCircle([4.05 12.5],0.1, [0 0 0], 'black')
MakeCircle([4.25 12.35],0.1, [0 0 0], 'black')
MakeCircle([4.45 12.20],0.1, [0 0 0], 'black')
MakeCircle([4.65 12.35],0.1, [0 0 0], 'black')
MakeCircle([4.85 12.5],0.1, [0 0 0], 'black')

%% Snowman Hat
MakeRectangle([4.5 14.05], [2 0.35],[0 0 0],'black')
MakeRectangle([4.5 14.60], [1 1.5],[0 0 0],'black')

%% Snowman Arms
MakeRectangle([2 10.5], [2 0.35],[.4 .2 0],'None')
MakeRectangle([7 10.5],[2 0.35],[.4 .2 0],'None')

%% Pond
MakeEllipse([15 2.5],8,[0.1 1 1],'None')