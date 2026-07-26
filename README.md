
# eratosthenes-data

This repository is used to track the creation of relative sequences, absolute constraints, and finds data associated with the `R` package
[`eratosthenes`](https://github.com/scollinselliott/eratosthenes), working toward a formal archaeological chrononology focusing on the
western and central Mediterranean, ca. 4th - 1st centuries BCE. These chronological and spatial boundaries are not firm, however.
Archaeological events and finds beyond that stated scope necessarily need to be included as part of the conditional relationships behind
dating relative events.

This project is ongoing. Datasets are uploaded as they are completed, using git to log changes from each previous dataset. The current development dataset is [eda20260723](data/eda20260723).

## Introduction

Each dataset is identified by its date of generation wih the prefix of `eda`, e.g., `eda20250628`, which label refers to a folder in the `data` directory in this repository. Each directory will have its own `README` to give an overview of the dataset (bibliographical references, issues), any relevant code, as well as the dataset itself.

Data are available in the following formats. For transparency, plaintext `.r` and `.csv` formats are used. The `.rda` file contains named objects that result from the execution of the `.r` script.

* `.r` : A plain text script containing all sequences, either derived from seriatied matrices stored in `.csv` format or input manually, as well as absolute constraints. 
* `.csv` : Seriated matrices, required as inputs into the `.r` script.
* `.rda` : R's interchange format, containing the sequences and constraints resulting from the `.r` script.

Any additional files dealing with the analysis of sequences (seriation criteria, displacement of events, artifact types' production, use, and depositional densities) may also be included.
