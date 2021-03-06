%*************************************************************************%
%@BeginVerbatim 
% Function: DisplayResult
% Description: Create a graph of the optimal route for the traveling
%   salesman
% Parameter(s): chromosome, matrix;
% Filename: DisplayResult.m
% Version: v00.02
% Author: Group 1
% Yr&Sec: 3-4
% Subject: Computational Intelligence
%@EndVebartim 
%*************************************************************************%

% Last Reviewed by: Periabras, 17 February 2017

%@Code Body***************************************************************%

function [ ] = DisplayResult( best_chromosome )
    %@Intialization*******************************************************%
    SCHOOL_COORD = [[2,5];[0,8];[7,4];[1,9];[6,3];[5,0];[4,8];[2,6];[10,2];[4,9]]; %Coordinates of all the schools
    SCHOOL_NAME = ['FEU     ';'CEU     ';'Adamson ';'UST     ';'TUP     ';'San Beda';'Arellano';'UE      ';'NU      ';'Mapua   '];  %Identification of the coordinates of the schools
    x=[];   %all x coordinates
    y=[];   %all y coordinates
    z=[];   %names of the schools
    %*********************************************************************%
        
    %Put into order all x,y, and z according to the chromosome
    for dna = 1:length(best_chromosome)
        dna_link = best_chromosome(dna);
        x = cat(2,x,SCHOOL_COORD(dna_link,1));
        y = cat(2,y,SCHOOL_COORD(dna_link,2));
        z = vertcat(z,SCHOOL_NAME(dna_link,:));
    end
    
    %Create Graph
    hold on;
    title(strcat('Route Distance:  ',num2str(Fitness(best_chromosome))));
    xlabel('x coordinates');
    ylabel('y coordinates');
    plot(x, y);
    plot(x, y, 'or');
    text(x, y, z, 'fontsize', 10, 'verticalalignment','cap');
    legend('Route');
    axis([-1 11 -1 10]);
    hold off;
    
end

%*************************************************************************%


