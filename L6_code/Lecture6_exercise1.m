%% Lecture 6 exercise1 - Segmentation reproducibility test
% The objective is to check the reproducibility of the segmentation
% results.
% To evaluate the consistency between the mass masks generated by the
% mass_segment function you can:
% 1) Run the segmentation algorithm twice for each mass lesion
% 2) Compute the Dice index between the two masks
% 3) Identify the mass example with less reproducible segmentation


%% 1) Run the segmentation algorithm twice for N mass lesions

% define the list of images to segment

% Run mass_segment twice for each mass and store the result in a (Si x Sj x 2 x N) numeric array

% Define the empty array where to store the (Si x Sj x 2 x N) masks.
% you can use the cat function to concatenate arrays in the 3rd and 4th
% dimensions. 
% 

% Check the size of Im_segmented_all

%% 2) Compute the Dice index between the two masks
% Use the dice function, i.e. similarity = dice(BW1, BW2)


%% 3) Identify the mass example with less reproducible segmentation
 