# This script generates random numbers for the purpose of selecting IAV samples for sequencing.
# The goal is to obtain a roughly equal number of samples per group A-H, defined as the folliwing: 
# A	6-12mo, no vaccine
#B	6-12mo + vaccine
#C	12mo - 5yr, no vaccine
#D	12mo - 5yr, +vaccine
#E	6yr - 12yr, no vaccine
#F	6yr - 12yo, +vaccine
#G	13 - 18yo, no vaccine
#H	13 - 18yo, +vaccine

# The limiting set is group A, which contains samples from children between 6-12 months who were not vaccinated against influenza virus. 
# The script works by generating a set of integers drawn at random from the total number  of samples. If a sample selected has already been sequenced, 
# I will draw another integer from that number. There will also be a list of alternates in case not all of the samples can be located in the IDDL freezer

# As of 6/22/22, the following number of previously identified samples (also drawn at random using the prviusly described integer method) are 1) available and 2) already sequenced

#A	6-12mo, no vaccine	21	21
#B	6-12mo + vaccine	80	17
#C	12mo - 5yr, no vaccine	24	14
#D	12mo - 5yr, +vaccine	44	16
#E	6yr - 12yr, no vaccine	17	4
#F	6yr - 12yo, +vaccine	15	4
#G	13 - 18yo, no vaccine	10	8
#H	13 - 18yo, +vaccine	18	12

# The goal is to obtain 80 samples for sequencing (enough for 2 plates of 40 samples each). To get the # of samples from each category to 21, the limiting # of available samples from each category, 
# I will need the following # of samples from each category: A = 0, B = 4, C = 7, D = 5, E = 17, F = 17, and G = 9. This brings the total to 
# 72 samples. I will also obtain an addition 1 sample per category (2 from category B). IF there are enough samples from the previously identified set,
# I will use those first. If there are not enough, I will randomly select from the unselected samples. 

Cat_B <- sample(44:106,4)
Cat_C <- sample(123:132,7)
