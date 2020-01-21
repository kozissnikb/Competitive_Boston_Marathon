## Competitive Boston Marathon - An Analysis ##
The Boston Marathon is the oldest marathon in the world and it is a very special event not only for that fact. Unfortunately, since the Boston Marathon runs through 8 different cities/towns it's field size is limited to about 30,000 runners. Therefore, since 1970 have to qualify, by running a Boston certified marathon course, preferably faster than the Boston Qualifying time, in order get one of those coveted starting bibs. As a passionate runner myself, for my mid-course capstone, I decided to take a closer look at just how competitive it is to get into the Boston Marathon and specifically how hard it is to re-qualify for Boston at Boston.

My Shiny Dashboard is structured in

# Overview #
Displaying the current (2020) course map and elevation profile.

# Qualifying #
The Boston Athletic Association, who organizes the Boston Marathon and oversees the application process, tries to keep runners as happy as they can. But it is a fact that just because someone manages to finish a marathon at or slightly faster than the Boston Qualifying time, they are not guaranteed a starting bib. 

Here I display the 2013-19 BQ Standard vs 2020 BQ Standard (The time limit was lowered by 5 min) and the second graph I show the "real" average cut-off times (without regard for age-groups) that needed to be achieved in order to being able to start at Boston and the number of unhappy runners, who ran the BQ standard, but simply weren't fast enough.

# Re-Qualifying #
In this particular part of my analysis, I specifically looked runners that ran the BQ standard or faster at Boston between 2014 and 2019. Similar to the graph displaying the Boston Qualifying standards in the Qualifying section the more transparent bars represent the "old" 2013-19 Standard, while the solid bars represent the "new" 2020 Standard.

In the lower half of the section, the re-qualifiers can be further investigated by year and age group.

# Strategy #

Since, I had the splits for all re-qualifying runners, I was wondering whether I could see any trends emerging with regard to running strategy for Boston. Is the key to re-qualifying keeping a steady pace throughout the race? Is it better to run the first half of the race slightly slower and go all out in the second half? etc.


------------------------------------------------------------------------------------------------------------------------
Sources: 

All data, incl. the 2020 Boston Marathon Course Map were sourced from the official website of the Boston Athletic Association:
https://www.baa.org/races/boston-marathon

Race results were scraped with the help of Roberto Jourdain (https://github.com/rojour)
https://github.com/rojour/boston_results/blob/master/Boston%20Marathon%20Results%20-%20scrape.ipynb

If you are interested in further analysis of Boston Marathon results or specifically training to qualify for or run Boston, I would highly recommend visiting https://www.runtri.com/p/boston.html and taking a closer look at the fantastic analysis done by Raymond Britt, who was also an amazing resource for this project! THANK YOU Ray!
 
 
