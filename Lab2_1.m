clear all
clc


%% Intializing the Excel sheet and dimensions
data = xlsread('grade.xls');
[m n] = size(data);

%% Calculating Scores and Gathering Student Information
homeworkScores = data(1:m,2:10);
examScores = data(1:m,11:14);
avgHomeworkScores = mean(homeworkScores,2);
avgExamScores = mean(examScores,2);
avgHomeworkScoresWeighted = mean(homeworkScores,2) * 0.20;
avgExamScoresWeighted = mean(examScores, 2) * 0.80;
studentScores = avgHomeworkScoresWeighted + avgExamScoresWeighted;
studentIDNumbers = data(:,1);

Fgrade = (studentScores < 60) * 0.0;
Dgrade = (studentScores >= 60 & studentScores < 65) * 1.0;
Dplus = (studentScores >= 65 & studentScores < 70) * 1.5;
Cgrade = (studentScores >= 70 & studentScores < 75) * 2.0;
Cplus = (studentScores >= 75 & studentScores < 80) * 2.5;
Bgrade = (studentScores >= 80 & studentScores < 85) * 3.0;
Bplus = (studentScores >= 85 & studentScores < 90) * 3.5;
Agrade = (studentScores >= 90 & studentScores <= 100) * 4.0;

gradePoints = sum([Fgrade Dgrade Dplus Cgrade Cplus Bgrade Bplus Agrade],2);

%% Creating the Gradebook
gradeBook = [m,5];
gradebook(:,1) = studentIDNumbers;
gradebook(:,2) = avgHomeworkScores;
gradebook(:,3) = avgExamScores;
gradebook(:,4) = studentScores;
gradebook(:,5) = gradePoints;

xlswrite('results.xls', gradebook);

%% Summing the number of specific gradepoints
numberAs = sum((studentScores >= 90 & studentScores <= 100));
numberBplus = sum((studentScores >= 85 & studentScores < 90));
numberBs = sum((studentScores >= 80 & studentScores < 85));
numberCplus = sum((studentScores >= 75 & studentScores < 80));
numberCs = sum((studentScores >= 70 & studentScores < 75));
numberDplus = sum((studentScores >= 65 & studentScores < 70));
numberDs = sum((studentScores >= 60 & studentScores < 65));
numberFs = sum((studentScores < 60));


fprintf('A       B+      B       C+      C       D+      D       F\n');
fprintf('%i       %i       %i     %i      %i       %i      %i     %i\n', numberAs, numberBplus, numberBs, numberCplus, numberCs, numberDplus, numberDs, numberFs);