%*************************************************************************%
%@BeginVerbatim 
% Function: Deletion
% Description: Determine if the new offspring will overwrite some
%              chromosome in the population or will be discarded
% Parameter(s): population, matrix; chromosome, matrix
% Filename: Deletion.m
% Version: v00.02
% Author: Group 1
% Yr&Sec: 3-4
% Subject: Computational Intelligence
%@EndVebartim 
%*************************************************************************%

% Last Reviewed by: Periabras, 17 February 2017

%@Code Body***************************************************************%

function [ population, rejected ] = Deletion( population, offspring )
    %@Intialization*******************************************************%
    worst_fitness = Fitness(offspring); %set the fitness of the offspring as an initilal worst fitness
    rejected = offspring; %set the offspring as the initial candidate for rejection
    %*********************************************************************%
    
    %Loop through the whole population
    for chromosome = 1:length(population)
        %If the Fitness of the current chromosome is greater than the
        %   current fitness
        if(Fitness(population(chromosome,:)) > worst_fitness )
            %Set as the new worst_fitness
            worst_fitness = Fitness(population(chromosome,:));
            %Get the index of the chromosome
            worst_chromosome_index = chromosome;
            %Set as the new candidate for rejection
            rejected = population(chromosome,:);
        end
    end
    
    %If the worst fitness is not equal to the fitness of the offspring
    if(worst_fitness ~= Fitness(offspring))
        %Insert the offspring to the population
        population(worst_chromosome_index,:) = offspring;
        fprintf('Status: Added');
    else
        %Do nothing
        fprintf('Status: Rejected');
    end
    
end

%*************************************************************************%

