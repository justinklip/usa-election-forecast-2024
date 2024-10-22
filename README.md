# USA Election Forecast 2024

## Overview

This repository provides all the necessary information to replicate the Justin Klip and Dhruv Gupta's USA election forecast paper. It has the code, paper itself, and the necessary data.


## File Structure

The repo is structured as:

-   `data/raw_data` contains the raw data as obtained from 538.
-   `data/analysis_data` contains the cleaned dataset that was constructed.
-   `model` contains fitted models. 
-   `other` contains details about LLM chat interactions and sketches.
-   `paper` contains the files used to generate the paper, including the Quarto document and reference bibliography file, as well as the PDF of the paper. 
-   `scripts` contains the R scripts used to simulate, download and clean data.


## Statement on LLM usage

A lot of the code was written with the help of ChatGPT4 and ChatGPT40; the entire chat history is available in inputs/llms/usage.txt.

## Some checks

- [ ] Remove files that you're not using
- [ ] Update comments in R scripts
- [ ] Remove this checklist