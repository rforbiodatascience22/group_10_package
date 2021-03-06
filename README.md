
<!-- README.md is generated from README.Rmd. Please edit that file -->

# Introduction to centraldogma

<!-- badges: start -->

[![Lifecycle:
experimental](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](https://lifecycle.r-lib.org/articles/stages.html#experinental)
<!-- badges: end -->

The
[centraldogma](https://github.com/rforbiodatascience22/group_10_package)
package replicates the central dogma of molecular biology. More
specifically it replicates the flow of genetic information from DNA to
RNA to protein.

The package consists of the following five functions, which are
demonstrated below: `generate_dna`, `transcribe`, `split_codons`,
`translate` and `plot_aa_occurrence`.

### Generate DNA

The `generate_dna` is used to generate a random DNA sequence. The
`length` argument controls the length of the generated sequence:

``` r
set.seed(6942069)

generate_dna(length = 20)
#> [1] "ACTCTGTCATCAGGCCAACC"
```

### Transcribe DNA to RNA

The `transcribe()` function transcribes a DNA sequence into a RNA
sequence by replacing Thymine (T) with Uracil (U):

``` r
dna_fragment <- "CCATGTTATG"

transcribe(dna_fragment)
#> [1] "CCAUGUUAUG"
```

### Split RNA into Codons

The `split_codons` function splits a RNA sequence into codons. The
`start` argument specifies the start position of the reading frame. The
position can be any position in the RNA sequence with a default value of
one:

``` r
rna_fragment <- "AUCGUACGAUAUGAUACAGAGAUAGACAUAUUUAACGG"

split_codons(rna_fragment, start = 5)
#>  [1] "UAC" "GAU" "AUG" "AUA" "CAG" "AGA" "UAG" "ACA" "UAU" "UUA" "ACG"
```

### Translate RNA Codons into Protein

The `translate` function translates a sequence of RNA codons into a
protein sequence by replacing codons into the amino acids they code for
using a standard codon table. Stop codons are translated to “\_“. The
codon table can be accessed with the function `codon_table`.

Here is an example of the use of the `translate` function:

``` r
rna_codon_sequence <- c("GGG", "GGC", "GCG", "UCC", "GUC")

translate(rna_codon_sequence)
#> [1] "GGASV"
```

### Plot Amino Acid Occurrences in a Protein

The `plot_aa_occurrence` function makes a plot of the occurrence of each
amino acid in a protein sequence:

``` r
protein_sequence <- "GGASVTVSRFW_PSQSKQRHRVEPVS_IQSYLP"

plot_aa_occurrence(protein_sequence)
```

<img src="man/figures/README-unnamed-chunk-6-1.png" width="100%" />

### Example Workflow

The five functions included in `centraldogma` can be used in a pipeline
as follows:

``` r
dna_sequence <- generate_dna(length = 250)
rna_sequence <- transcribe(dna_sequence)
rna_codon_sequence <- split_codons(rna_sequence)
protein_sequence <- translate(rna_codon_sequence)
plot_aa_occurrence(protein_sequence)
```

### Use cases for package

`centraldogma` can e.g. be used to translate DNA sequences into protein
sequences by running the full pipeline of functions as shown under
example workflow. Alternatively one could start with RNA sequences
instead and do the translation or start with a protein sequence and make
an occurrence plot.

### Ideas for more functions for the package

Some other functions that could be implemented in the package could be:

-   A function to read FASTA-files
-   A function to write FASTA-files
-   A function for reverse transcription

Also it would be nice if the `translate` function could use other codon
tables than the standard one.

### Main points from discussion in Task 4

The number of dependencies should be limited such that the user does not
have to install a bunch of packages. It cannot be avoided if the R base
package does not include the functionality that you want and you do not
wish to implement it yourself.

Adding an `@importFrom package function` tag to a function description
has a small performance benefit compared to `package::function()` due to
`::` adding approximately 5 µs to function evaluation time. However, it
is more clear what package a function belongs to with `::`. Also,
`@importFrom` might cause name conflicts if another function with the
same name already exists in the namespace.
