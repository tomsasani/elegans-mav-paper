#let vlk = "Volkova et al. (2020)"
#let cel = [_C. elegans_]

#set text(
  font: "New Computer Modern"
)

#show ref: set text(fill: blue)
#show link: set text(fill: blue)

#set page(numbering: "1")
    
#show heading.where(level: 1): set text(12pt)
#show heading.where(level: 2): set text(blue)

#show figure.caption: set align(left)
#show figure.caption: set text(10pt)

#align(center)[= Supplementary Information for: Multi-allelic mutations reflect inherited DNA lesions in _C. elegans_]
\

#align(center)[Thomas A. Sasani and Aaron R. Quinlan]
#align(center)[Dept. of Human Genetics, University of Utah, Salt Lake City, UT]
#align(center)[corresponding authors: #link("tom.sasani\@utah.edu")[tom.sasani\@utah.edu], #link("aquinlan\@genetics.utah.edu")[aquinlan\@genetics.utah.edu]]
\

#figure(
  image("entropy.png", width: 60%), caption: [*Empirical MAVs occur in higher-complexity sequences than spurious MAVs*. We used `mutyper` @DeWitt2020-xm to extract the flanking 10 nucleotides of sequence context surrounding every MAV with at least three reads of support (including $n$ = 153 "empirical" MAVs and $n$ = 1,254 "random" MAVs aggregated across 100 trials. We then calculated the Shannon entropy of the 20bp nucleotide context (excluding the mutated nucleotide) at each MAV.]
) <fig-s1>


#figure(
  image("phylop.png", width:70%), caption: 
  [*EMS-derived mutations occur in more conserved regions of the genome.*
  
]
)<fig-s2>

#bibliography("Paperpile - References - Jun 4.bib", style: "plos")

