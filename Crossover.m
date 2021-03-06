%*************************************************************************%
%@BeginVerbatim 
% Function: Crossover
% Description: Create an offspring with the 2 given chromosomes
% Parameter(s): parent_1, matrix; parent_2, matrix
% Filename: Crossover.m
% Version: v00.02
% Author: Group 1
% Yr&Sec: 3-4
% Subject: Computational Intelligence
%@EndVebartim 
%*************************************************************************%

% Last Reviewed by: Periabras, 17 February 2017

%@Code Body***************************************************************%

function [ child ] = Crossover( parent_1, parent_2 )
    %@Intialization*******************************************************%
    CHILD_DNA_SIZE = 10;    %default dna size
    STARTING_INDEX = 1;  %start index
    STARTING_INDEX_LIMIT = CHILD_DNA_SIZE/2; %start index limit
    ENDING_INDEX_LIMIT = 4; %limit for the range
    
    START_RANGE = randi([STARTING_INDEX STARTING_INDEX_LIMIT],1);   %random number from 1 to the half CHILD_DNA_SIZE to determine start index
    END_RANGE = START_RANGE + ENDING_INDEX_LIMIT;
    
    child = zeros(1,10); %Initialize child with 1x10 zeros
    %*********************************************************************%
    
    %Get the specified DNA from the parent_1
    parent_1 = parent_1(1,START_RANGE:END_RANGE);

    %Remove existing dna from parent_2
    for parent_1_dna = 1:length(parent_1)
        for dna = 1:length(parent_2)-1
            if parent_1(parent_1_dna) == parent_2(dna)
                parent_2(dna)=[];
            end
        end
    end

    %Put in the dna from parent_1 in place
    child(START_RANGE:END_RANGE) = parent_1;
    
    %Initial parent_2_dna index
    parent_2_dna = 1;

    %Place the remaining dna from parent_2 in proper order
    for dna = 1:CHILD_DNA_SIZE
       if child(dna) == 0
           child(dna) = parent_2(parent_2_dna);
           parent_2_dna = parent_2_dna + 1;
       end
    end
    
end

%*************************************************************************%
