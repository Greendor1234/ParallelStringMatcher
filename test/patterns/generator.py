#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Sat Dec 11 16:15:35 2021

@author: alessandrobitocchi
"""

import random

def writeFile(filename, words):
    with open(filename, "w") as f:
        for word in words:
            if len(word) <= 2:
                continue
            f.write(word + '\n')
    
def sfoltisci(insieme):
    for i in range(len(insieme)//2):
        insieme.pop()

words = set()
with open("../packets/small.txt", "r") as file:
    for line in file.readlines():   
        l = line.split()
        for word in l:
            w = ''.join(x for x in word if x.isalpha())
            words.add(w)
                

print(len(words))
print(words)

if ' ' in words:
    words.remove(' ')
    




"""
* CHANGING RANDOM WORDS
"""
strings = ['cane', 'gatto', 'topo']
num_words_to_change = random.randint(len(words)//4, len(words)//2)
j = 0
temp = set()
for i, word in enumerate(words):
    if i % 2 == 0 and j <= num_words_to_change:
        temp.add(word + strings[i % 3])
        j += 1
    else:
        temp.add(word)

    
print(words)

#################################
# WORDS non è modificato, tutte la stringhe sono prese dal file così come sono
# TEMP è modificato, le stringhe hanno subito una modifica per non fargli fare
# match
#################################

sfoltisci(words)
sfoltisci(temp)

writeFile("specialCase/large.txt", words)
writeFile("large.txt", temp) 

sfoltisci(words)
sfoltisci(temp)
    
writeFile("specialCase/medium.txt", words)
writeFile("medium.txt", temp)

sfoltisci(words)
sfoltisci(temp)

writeFile("specialCase/small.txt", words)
writeFile("small.txt", temp)

