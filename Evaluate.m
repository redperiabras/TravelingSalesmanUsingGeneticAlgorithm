%*************************************************************************%
%@BeginVerbatim 
% Function: Evaluate
% Description: Evaluate the given population
% Parameter(s): population, matrix
% Filename: Evaluate.m
% Version: v00.02
% Author: Group 1
% Yr&Sec: 3-4
% Subject: Computational Intelligence
%@EndVebartim 
%*************************************************************************%

% Last Reviewed by: Periabras, 17 February 2017

%@Code Body***************************************************************%

function [ evaluation, best_chromosome, worst_chromosome ] = Evaluate( population )
    %@Intialization*******************************************************%
    evaluation = 0;
    best_fitness = 100;
    worst_fitness = 0;
    %*********************************************************************%

    %Loop through the entire population
    for chromosome = 1:length(population)
        %Compute for the summation of the fitness of all chromosomes
        evaluation = evaluation + Fitness(population(chromosome,:));
    end
    
    %Loop through the entire population
    for chromosome = 1:length(population)
        %Fitness of current chromosome is greater than the current worst
        %   fitness score
        if(Fitness(population(chromosome,:)) > worst_fitness )
            %Replace the current worst fitness score
            worst_fitness = Fitness(population(chromosome,:));
            %Copy the worst chromosome
            worst_chromosome = population(chromosome,:);
        end
    end
    
    %Loop through the entire population
    for chromosome = 1:length(population)
        %Fitness of current chromosome is less than the current best
        if(Fitness(population(chromosome,:)) < best_fitness)
            %Replace the current best fitness score
            best_fitness = Fitness(population(chromosome,:));
            %Copy the best chromosome
            best_chromosome = population(chromosome,:);
        end
    end
    
end

%*************************************************************************%
