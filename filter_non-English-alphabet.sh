#!/bin/bash

#Since some words are not English, we have to filter it.
#e.g., fiancé

grep -v -P '[^a-z]' all_word_orig.txt > all_word.txt

