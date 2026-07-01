#let vlk = [Volkova _et al._ (2020)]
#let cel = [_C. elegans_]

#set text(
  font: "Libertinus Serif"
)

#show ref: set text(fill: blue)
#show link: set text(fill: blue)

#set page(numbering: "1")
    
#show heading.where(level: 1): set text(12pt)
#show heading.where(level: 2): set text(blue)

#show figure.caption: set align(left)
#show figure.caption: set text(10pt)

#align(center)[= Supplementary Figures for: Multi-allelic mutations reflect inherited DNA lesions in _C. elegans_]
\

#align(center)[Thomas A. Sasani and Aaron R. Quinlan]
#align(center)[Dept. of Human Genetics, University of Utah, Salt Lake City, UT]
#align(center)[corresponding authors: #link("tom.sasani\@utah.edu")[tom.sasani\@utah.edu], #link("aquinlan\@genetics.utah.edu")[aquinlan\@genetics.utah.edu]]
\

#set align(center)
#image("fig/Supp. Fig. 1.png", width: 60%, )
#set align(left)
#set text(size: 10pt)
#block([Supplementary Figure 1: *Sequencing depth across #vlk strains*. We used `mosdepth` @Pedersen2018-dc to calculate the average genome-wide sequencing depth in all strains treated with EMS, DMS, and MMS. Each point represents a single strain and is colored according to the Illumina platform (HiSeq 2000 or HiSeq X Ten) used for sequencing.])<fig-s1>

\

#set align(center)
#image("fig/Supp. Fig. 2.png", width: 60%, )
#set align(left)
#set text(size: 10pt)
#block([Supplementary Figure 2: *Empirical MAVs occur in higher-complexity sequences than spurious MAVs*. We used `mutyper` @DeWitt2020-xm to extract the flanking 10 nucleotides of sequence context surrounding every MAV with at least three reads of support (including $n$ = 139 "empirical" MAVs and $n$ = 235 "spurious" MAVs identified using a random strain's sequencing reads). We then calculated the Shannon entropy of the 20bp nucleotide context (excluding the mutated nucleotide) at each MAV. We also calculated the entropy of the 20bp nucleotide context surrounding all $n = 68,858$ biallelic SNVs (excluding MAVs) observed in DMS, EMS, and MMS-treated strains.])<fig-s2>

\

#set align(center)
#image("fig/Supp. Fig. 3.png", width: 60%, )
#set align(left)
#set text(size: 10pt)
#block([Supplementary Figure 3: *EMS-derived mutations occur in more conserved regions of the genome.* We measured the phyloP (cite) score (using the `phyloP135way` track for the `ce11` reference assembly, downloaded from the UCSC Table Browser) at every SNV identified in strains treated with DMS, EMS, and MMS in #vlk. Here, we show the cumulative fraction of SNVs with a phyloP score of at least $x$. Two-sided Kolmogorov-Smirnov $p$-values from comparisons of phyloP score distributions between DMS and EMS: $9.0 times 10^(-14)$; between DMS and MMS: $0.15$; between MMS and EMS: $1.7 times 10^(-27)$. ])<fig-s3>