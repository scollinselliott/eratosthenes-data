
# eratosthenes-data

This repository is used to track the creation of relative sequences,
absolute constraints, and finds data associated with the `R` package
[`eratosthenes`](https://github.com/scollinselliott/eratosthenes),
working toward a formal archaeological chrononology focusing on the
western and central Mediterranean, ca. 4th - 1st centuries BCE. These
chronological and spatial boundaries are not firm, however.
Archaeological events and finds beyond that stated scope necessarily
need to be included as part of the conditional relationships behind
dating relative events.

This project is ongoing, and datasets are uploaded as they are
completed.

## Introduction

Each dataset is identified by its date of generation wih the prefix of
`eda`, e.g., `eda20250628`, which label refers to a folder in the `data`
directory in this repository. Each directory will have its own `README`
to give an overview of the dataset (bibliographical references, issues),
any relevant code, as well as the dataset itself.

As noted in the documentation of `saveRDS`, the `rds` format is not
suitable as an interchange format. Hence, `rda` format is used for
storing data for `eratosthenes`, which also preferable as `rda` has the
ability to store multiple objects. object names are retained in `rda`
files, which have the potential to overwrite objects in active R memory.
To try to prevent this, each named object is appended with the date of
its posting.

## Latest

For the latest set of events, see:

- [eda20250628](data/20250628)
