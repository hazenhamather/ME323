clear all
clc

%% Initialization
t = [-1.1:0.01:1.1]';
T = 1;

%% First Vector Plot
k_vec = [0:1]
sin_vec = sin((pi .*t *(2 .*k_vec + 1))/T);
other_vec = 1./(2 .*k_vec' + 1);
F_vec = sin_vec * other_vec;
plot(t, F_vec, 'r');
hold on

%% Second Vector Plot
k_vec = [0:3]
sin_vec = sin((pi .*t *(2 .*k_vec + 1))/T);
other_vec = 1./(2 .*k_vec' + 1);
F_vec = sin_vec * other_vec;
plot(t, F_vec, 'c');

%% Third Vector Plot
k_vec = [0:6]
sin_vec = sin((pi .*t *(2 .*k_vec + 1))/T);
other_vec = 1./(2 .*k_vec' + 1);
F_vec = sin_vec * other_vec;
plot(t, F_vec, 'b');

%% Fourth Vector Plot
k_vec = [0:10]
sin_vec = sin((pi .*t *(2 .*k_vec + 1))/T);
other_vec = 1./(2 .*k_vec' + 1);
F_vec = sin_vec * other_vec;
plot(t, F_vec, 'g');

%% Fifth Vector Plot
k_vec = [0:20]
sin_vec = sin((pi .*t *(2 .*k_vec + 1))/T);
other_vec = 1./(2 .*k_vec' + 1);
F_vec = sin_vec * other_vec;
plot(t, F_vec, 'm');

%% Sixth Vector Plot
k_vec = [0:200]
sin_vec = sin((pi .*t *(2 .*k_vec + 1))/T);
other_vec = 1./(2 .*k_vec' + 1);
F_vec = sin_vec * other_vec;
plot(t, F_vec, 'k');

legend('k = 1', 'k = 3', 'k = 6', 'k = 10', 'k = 20', 'k = 200')