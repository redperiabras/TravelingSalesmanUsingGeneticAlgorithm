%*************************************************************************%
%@BeginVerbatim 
% Function: Initialize
% Description: Create an initial population
% Parameter(s): population_size, int
% Filename: Initialize.m
% Version: v00.02
% Author: Group 1
% Yr&Sec: 3-4
% Subject: Computational Intelligence
%@EndVerbatim 
%*************************************************************************%

% Last Reviewed by: Periabras, 17 February 2017

%@Code Body***************************************************************%

function [ population ] = Initialize(population_size)
    %@Intialization*******************************************************%
        DNA_SIZE = 10;  %represents 10 schools
        population = zeros(population_size, 10);
    %*********************************************************************%
    
    %Loop through the whole population size
    for chromosome = 1:population_size  
        %create a random sequence of numbers from 1 to the DNA_SIZE without
        %   repeating the one number twice
        population(chromosome,:) = randperm(DNA_SIZE, DNA_SIZE);
    end
end

%*************************************************************************%

