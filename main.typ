// #import "@preview/stellar-springer-nature:0.1.0": article, bmhead


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


#align(center)[= Multi-allelic mutations reflect inherited DNA lesions in _C. elegans_]
\

#align(center)[Thomas A. Sasani and Aaron R. Quinlan]
#align(center)[Dept. of Human Genetics, University of Utah, Salt Lake City, UT]
#align(center)[corresponding authors: #link("tom.sasani\@utah.edu")[tom.sasani\@utah.edu], #link("aquinlan\@genetics.utah.edu")[aquinlan\@genetics.utah.edu]]
\

== Abstract

How long does DNA damage last? 
Exogenous and endogenous mutagens create bulky adducts, chemical modifications, and single- or double-stranded DNA breaks. 
These lesions might be bypassed by error-prone polymerases or improperly repaired by DNA repair machinery, leaving behind mutations.
A phenomenon called "lesion segregation," in which DNA lesions evade repair and persist for multiple cell divisions, was recently documented in tumors and healthy somatic tissues from mice and humans, respectively. 
Persistent lesions serve as templates for multiple rounds of error-prone translesion synthesis, generating multi-allelic variants (MAVs).
By reanalyzing sequencing data from a large #cel mutagenesis experiment, we observed robust evidence for MAVs at a small fraction (\~0.2%) of mutated sites in strains treated with alkylating agents. 
Because each strain was derived from a single F1 animal — the offspring of a mutagenized P0 — we believe that these MAVs are caused by inherited DNA lesions.
Lesions present in a parental gamete are transmitted to an F1 zygote, persist for at least four embryonic cell divisions, and later serve as templates for the incorporation of multiple _de novo_ alleles during gametogenesis.
Gametic mosaicism then manifests as multi-allelism in the sequenced progeny of those F1s. 
Given the life stage at which  worms were mutagenized, we hypothesize that lesions were primarily inherited from parental sperm cells.
These results strongly suggest that DNA lesions are inherited from gamete to zygote in #cel, and generate multi-allelic variation in subsequent generations.
DNA damage in the early embryo may be a source of multi-allelic mutations in humans, as well.

== Introduction

Myriad sources of damage, from reactive oxygen species to ultraviolet radiation, leave behind lesions on DNA molecules.
While many lesions are efficiently repaired, others survive long enough to be encountered by DNA polymerases during cell division.
These high-fidelity polymerases are often unable to replicate across lesions, triggering the recruitment of specialized translesion synthesis (TLS) polymerases @Sale2013-gj @Minocha2026-bv.
Owing to their unique structural features, including large, accommodating active sites and a lack of exonuclease proofreading abilities, TLS polymerases are capable of synthesizing over bulky DNA adducts, abasic sites, and other lesions that might normally lead to polymerase stalling and replication fork collapse @Sale2013-gj @Gyure2023-ni.
However, the permissive nature of TLS polymerases comes at a cost.
Translesion synthesis is relatively low-fidelity, and incorrect nucleotides are frequently incorporated opposite lesions @Sale2012-zy @Sale2013-gj @Gyure2023-ni @Matsuda2001-ud @Roerink2012-ow @Vaisman2017-jw.
TLS polymerases also introduce new mutations downstream from lesions in a process called "collateral mutagenesis" @Poti2022-ms @Spisak2025-pk @Anderson2024-fl.

=== Lesion segregation and multi-allelic mutations

Aitken et al. (2020) @Aitken2020-fy previously documented a phenomenon called "lesion segregation," in which DNA lesions persist unrepaired for at least one cell division following a mutagenic insult. 
As long as a lesion evades DNA repair machinery, it can serve as a template for error-prone translesion synthesis. 
In one round of DNA replication, an incorrect base might be incorporated opposite a lesion; in a subsequent round of replication, another incorrect base might be incorporated (@fig-1).
Persistent lesions therefore become "engines of genetic diversity" by generating multi-allelic mutations @Aitken2020-fy @Anderson2024-fl.
Remarkably, some lesions can persist for years in human blood, liver and bronchial tissue @Spencer-Chapman2025-er.

#figure(
  image("fig/Figure 1.png", width: 80%), caption: [*Persistent lesions can create multi-allelic mutations.* DNA lesions (shown as red triangles) occur after exposure to an exogenous or endogenous mutagen. If lesions are not removed or repaired prior to DNA replication, error-prone translesion synthesis (TLS) polymerases might incorporate an incorrect base opposite the lesion, creating a lesion-mutation duplex. Lesion-mutation duplexes resolve into double-stranded mutations following a subsequent round of DNA replication. If a lesion continues to evade DNA repair machinery, it may eventually serve as a template for the incorporation of a different incorrect base (shown as a green circle). Figure adapted from @Anderson2024-fl and @Aitken2020-fy.], 
) <fig-1>

=== Transgenerational DNA damage in #cel

Wang et al. @Wang2023-lg recently demonstrated that paternal exposure to ionizing radiation creates persistent, transgenerational DNA damage in #cel.
In their study, irradiated male worms were mated to healthy, "feminized" hermaphrodites.
While the F1 offspring of these irradiated males were mostly viable, a large proportion of F2s exhibited embryonic lethality.
The authors concluded that DNA damage — primarily in the form of double-stranded DNA breaks — was transmitted from P0 sperm cells to the zygotes of the F1 generation.
// The authors speculated that mature _C. elegans_ sperm, which have a highly-compacted chromatin structure, are inaccessible to DNA repair machinery @Marchetti2007-rh.
// Only after those sperm have fertilized a zygote can their damaged DNA be repaired.
Maternally-deposited machinery (including the error-prone theta-mediated end joining pathway) attempted to repair paternal DNA damage in those F1 zygotes, creating _de novo_ structural variants in the process.
Although damaged chromosomes were able to bypass mitotic checkpoints during F1 embryogenesis, they failed to do so in the F2 embryos, leading to high levels of embryonic lethality. 
These results demonstrated that radiation-induced DNA damage can persist from a parental gamete to a fertilized zygote, and that DNA damage repair in the embryo has significant consequences for the viability and genetic diversity of future generations.


=== A large-scale mutagenesis experiment in #cel
In 2020, Volkova _et al._ @Volkova2020-gt mutagenized 54 _C. elegans_ strains with 12 DNA damaging agents. 
Most of these strains harbored homozygous loss-of-function (LOF) alleles in genes related to DNA replication and repair, including translesion synthesis (_polk-1_) and nucleotide excision repair (_xpa-1_, _xpc-1_, and _xpf-1_).  

Here, we reanalyze sequencing data from these mutagenesis experiments and find compelling evidence for multi-allelic variants (MAVs) in many strains.
We are confident that these MAVs are not due to sequencing errors or alignment artifacts.
Instead, we believe that MAVs arise when a lesion occurs in a parental gamete, is transmitted to an F1, and persists for long enough during embryogenesis to serve as a template for the incorporation of multiple derived alleles. 
Given the invariant developmental lineage of #cel @Sulston1977-gh @Sulston1983-zz, we estimate that a lesion present in a P0 gamete must persist for at least 4 embryonic F1 cell divisions in order to generate multi-allelism in the gametes of that F1. 
Certain mutagens appear to cause greater multi-allelism than others, though the stochastic nature of post-zygotic lesion segregation and the effects of survival bias make it difficult to confidently interpret these differences.
Nevertheless, our results demonstrate that multiple forms of DNA damage can persist from generation to generation in #cel. 
These persistent lesions become potent engines of mutagenesis, influencing the genetic diversity of future generations long after they arise.

// While the presence of sperm-derived DNA damage in the early embryo is not new (https://www.pnas.org/doi/epdf/10.1073/pnas.76.1.435), we demonstrate that the consequences of embryonic repair (or lack thereof) are easily and readily detectable.

== Results

=== Re-analyzing a #cel mutagenesis experiment

In #vlk, 54 strains of _Caenorhabditis elegans_ nematodes were either a) maintained for between 5 and 40 generations in a mutation accumulation (M.A.) experiment or b) treated with various concentrations of  DNA damaging agents.

#block(
  fill: luma(230),
  inset: 8pt,
  radius: 4pt,
  [*#underline[Box 1]: Mutagenesis strategy in Volkova et al. (2020)*.
P0 hermaphrodites were treated with twelve genotoxins, including alkylating agents, gamma radiation, and UV.
In most experiments, L4 or young adult (YA) worms were treated with the genotoxin of interest, allowed to recover for 24 hours, and transferred to fresh plates.
Two F1 animals at the L4 stage (the offspring of the mutagenized P0s) were transferred to individual plates and allowed to proliferate. 
A single one of these F1 lines was then expanded and used for DNA extraction and sequencing.
Typically, three replicate lines were created for each genotoxin/genotype experiment.]
) <box-1>

Inspired by recent work @Aitken2020-fy @Anderson2024-fl @Spencer-Chapman2025-er, we hypothesized that a potent burst of genotoxins could create DNA lesions that persist for multiple cell divisions in #cel.
Because a single F1 – the “child” of a mutagenized P0 – was used to initiate the population of worms used for sequencing (see #link(<box-1>, "Box 1")), we should only observe mutations derived from lesions that were present in a single P0 sperm or egg cell (or the progenitors of those cells).
As it’s succinctly described in #vlk:

#set quote(block: true)
#quote()[
"_The zygotes which lead to the F1 generation provide a single cell bottleneck where mutations of exposed male and female germ cells are fixed before being clonally amplified during #cel development and passed on to the next generation in a Mendelian ratio._"]

After genotoxin treatment and sequencing, #vlk performed read alignment, called single-nucleotide, insertion/deletion (indel), and structural variants (SVs), and removed recurrent artifactual mutations across strains.
In total, the authors identified 135,348 high-confidence _de novo_ single-nucleotide variants (SNVs) in 54 strains treated with genotoxins or maintained in M.A. experiments.
Here, we limit our analyses to the subset of SNVs observed in strains treated with three alkylating agents: ethyl methanesulfonate (EMS), dimethyl sulfate (DMS), and methyl methanesulfonate (MMS).
We chose these genotoxins for three reasons: first, because they primarily generated single-nucleotide and multi-nucleotide (as opposed to indel or SV) mutations; second, because they were among the most potent mutagens used in the study; and third, because worms treated with these three genotoxins were mutagenized at the same life stage (young adult; YA). 
We further filtered the SNVs in EMS, DMS, and MMS-treated strains to remove variants in annotated low-complexity sequences (*Materials and Methods*), producing a final callset of 68,796 alkylation-induced SNVs (@fig-2).
We expect these SNVs to be biallelic, as each sequenced population of worms was derived from a single F1 animal.


#figure(
  image("fig/Figure 2.png", width: 80%), caption: [*Number of genotoxin-treated strains and aggregate mutation counts in #vlk*. *a)* Number of strains corresponding to each mutagenesis approach. 475 strains were used in mutation accumulation (M.A.) experiments rather than being treated with genotoxins. DMS: dimethyl sulfate, EMS: ethyl methylsulfonate, HU: hydroxyurea, MMS: methyl methanesulfonate. *b)* Number of SNVs attributed to each mutagen, aggregated across all mutagenized strains. Darker bars (outlined in black) indicate numbers of filtered SNVs, while lighter bars indicate the total number of SNVs before stringent filtering (see *Materials and Methods*). Numbers to the right of each bar indicate the number of filtered SNVs used in this study (unfiltered counts are shown in parentheses). In this study, we exclusively analyzed mutations caused by the alkylating agents DMS, EMS, and MMS.]
) <fig-2>


=== Multi-allelism at mutated sites

By inspecting aligned sequencing reads at mutated sites in the genotoxin-treated lines, we observed  evidence for numerous multi-allelic variants (MAVs) (@fig-3).
We found almost a thousand ostensibly biallelic SNVs with at least one read supporting a "third allele," though the number of candidate MAVs declined substantially if we required additional reads as evidence (@fig-3\c).
To obtain a high-confidence callset, we required candidate MAVs to be supported by at least 3 sequencing reads, leaving us with 139 MAVs out of 68,796 total SNVs (\~0.2%).

The #vlk strains were sequenced with two different Illumina platforms (HiSeq 2000 and HiSeq X Ten).
Nearly all of the strains processed on the HiSeq X Ten were sequenced to an average of \~30X depth, while those processed on HiSeq 2000 were sequenced to an average of \~80X (#link(<fig-s1>)[Supplementary Figure 1]a).
To determine whether sequencing coverage significantly affected our ability to detect MAVs, we randomly downsampled every strain to an average of \~30X (*Materials and Methods*).
We detected 91 MAVs using the downsampled alignments, demonstrating that MAV detection requires relatively high sequencing depth, and suggesting the true number of MAVs in the #vlk strains is likely greater than our estimate here.

// Even after downsampling every strain to a uniform depth, it was challenging to determine whether we were more likely to detect MAVs in strains sequenced on a particular platform.
// Strains were not randomly assigned to be sequenced on HiSeq 2000 or HiSeq X Ten machines, and if the most "MAV-susceptible" strains (e.g., nucleotide excision repair mutants treated with high doses of mutagen) tended to be sequenced on a given platform, it would be difficult to disentangle the effects of sequencing platform from the effects of true biological variation on our observed counts of MAVs.
// Fortunately, for a small number of strains with multiple biological replicates, at least one replicate was sequenced on each platform.
// Using these replicate sequencing runs, 
// we observed 2 MAVs in  a significant effect of sequencing platform on observed counts of MAVs (permutation $p = 0.51$; *Materials and Methods*) 
// To truly estimate the effect of sequencing platform, we'd need to re-variant call everyone, since the SNVs themselves are derived from the original sequencing data.

#figure(
  image("fig/Figure 3.png", width: 100%), caption: [*Evidence for multi-allelism at mutated sites in #cel.* *a)* Diagram of aligned Illumina sequencing reads at a single-nucleotide variant observed in `CD0443a`, an _xpf-1_ mutant strain treated with 0.4mM MMS, and an untreated control strain. Sequencing reads are sorted by start position and colored by read orientation (light grey: aligned to the forward strand, dark grey: aligned to the reverse strand). Read bases aligned to the mutated reference nucleotide are colored. For simplicity of visualization, we show a maximum of 50 reads in each subplot. Legend shows the counts of each allele aligned to the forward or reverse strand. *b)* Dotted vertical line shows the number of SNVs at which we observed >=3 reads supporting an MAV. In each of 100 trials, we calculated the number of SNVs at which we observed evidence for multi-allelism using a random strain's sequencing reads. The distribution of "spurious" MAVs identified in each trial is shown as a grey histogram. *c)* We performed the random sampling procedure described in *b)* using varying thresholds on the number of reads required to support a candidate MAV. The blue line shows the number of MAVs identified at each read threshold. The red line shows the enrichment of empirical vs. spurious MAVs identified at each threshold, calculated by dividing the total number of empirical MAVs by the average number of spurious MAVs identified across 100 random sampling trials.]
) <fig-3>

We were initially suspicious that MAVs were simply a result of sequencing error or alignment artifacts.
In each strain, we calculated the number of SNVs at which 3 or more reads supported a non-reference allele in a random strain (#link(<box-2>, "Box 2"), *Materials and Methods*).

#block(
  fill: luma(230),
  inset: 8pt,
  radius: 4pt,
  [*#underline[Box 2]: Generating a null expectation for the number of MAVs.*
To identify "empirical" multi-allelic variants (MAVs), we first searched for multi-allelic evidence at the set of $M$ SNVs (where $|M| = 68,796$) in 736 strains treated with DMS, EMS, or MMS. 
In a given strain, we asked whether there were 3+ sequencing reads supporting a 'third' allele at each of the strain's ostensibly biallelic SNVs $S; S in M$. 
If so, we classified the site as an MAV. 

We then calculated a null expectation for the number of MAVs we'd expect to see in a given strain due to sequencing error, alignment artifacts, and so on.
For a given strain with $S$ ostensibly biallelic SNVs, we randomly sampled a different strain's read alignments (excluding strains with the same genotype, as some _de novo_ mutations may have fixed in a strain prior to genotoxin treatment).
We then used that random strain's alignments to calculate evidence for multi-allelism at each of the $S$ variants in the original strain.
Since a random strain should be homozygous for the reference allele at every variant observed in the original strain, we considered any non-reference evidence to be evidence for a "spurious" MAV.
We repeated this process (randomly sampling a different strain's alignments and re-calculating evidence for spurious MAVs) 100 times.
One disadvantage of this approach is that it does not completely account for differences in sequencing coverage across the strains.
In a given trial, we might randomly sample a strain sequenced to 30X coverage, even if the original strain was sequenced to 80X. 
However, by performing many random sampling trials, we believe that differences in sequencing depth can be safely ignored.

// We therefore explored an alternative approach to generate a null expectation for the number of MAVs. 
// In each strain, we randomly sampled $R$ from the mutation callset $M in.not S$, such that $|R| = |S|$.
// At each site in $R$, we then asked if there were 3+ sequencing reads supporting a non-reference allele. 
// This second approach was also imperfect and likely produces an inflated number of "spurious" MAVs.
// In a given strain with $S$ SNVs, we randomly sample $|S|$ mutations from the complete SNV callset; in strains with large $|S|$, we are guaranteed to randomly sample the same sites multiple times over the course of 100 trials.
// Moreover, the majority of mutations in the callset are derived from EMS; thus, "spurious" MAVs will be biased toward sequence contexts that are preferentially damaged by EMS.

// Both approaches (either randomly sampling alignments or randomly sampling SNVs) produced similar results, and we consistently observed far more MAVs than expected by chance.
]
) <box-2>

Compared to this null expectation, MAVs occurred far more often than expected by chance (@fig-3\b).
We observed an average of 3.3 spurious MAVs across 100 random sampling trials, and never observed more than 18 spurious MAVs in a single trial. 
Even after removing SNVs in annotated low-complexity regions (*Materials and Methods*), we found that spurious MAVs occurred in lower-complexity sequences than "empirical" MAVs (two-sided Kolmogorov-Smirnov $p = 5.5 times 10^(-3)$; #link(<fig-s2>)[Supplementary Fig. 2]).
There was no difference in sequence complexity between empirical MAVs and biallelic SNVs (two-sided KS $p = 0.29$; #link(<fig-s2>)[Supp. Fig. 2]).
Because many of the strains in #vlk were barcoded and sequenced in multiplexed Illumina runs, we also searched for evidence that "index hopping" (a phenomenon in which reads originating from one sample are incorrectly assigned to another sample during sequencing @Costello2013-kc) could explain the presence of MAVs (*Materials and Methods*).
We found no evidence that the "extra" alleles at MAVs were present in other strains, indicating that index hopping was unlikely to explain multi-allelism at SNVs.
Finally, we observed similar levels of strand bias at empirical MAVs and biallelic SNVs ($chi^2$ $p = 0.37$; *Materials and Methods*).

=== All tested alkylating agents create multi-allelism

Using our stringently filtered callset, we measured the degree to which different genotoxins generated multi-allelic variants.
Compared to the null expectation, MMS caused the greatest enrichment of MAVs in #cel (approximately 0.7% of all MMS-induced SNVs were multi-allelic) (@fig-4).
A substantial fraction of DMS-induced SNVs were multi-allelic, as well (\~0.5%).
Despite generating the largest number of SNVs per unit dose, EMS generated relatively few MAVs (\~0.05%).
It is challenging to attribute these differences in MAV enrichment to the characteristics of specific mutagens, however (see *Discussion*). 

#figure(
  image("fig/Figure 4.png", width: 80%),
  caption: [*Enrichment of MAVs after treatment with three alkylating agents.*
  Using $n = 691$ strains treated with DMS, EMS, or MMS, we calculated the proportion of SNVs at which we observed 3 or more reads supporting a multi-allelic variant (MAV).
  The total number of "empirical" MAVs we identified in strains treated with a given mutagen is shown as a black "plus" sign.
  We then performed 100 random sampling trials to obtain a null expectation of the number of observed MAVs (see #link(<box-2>, "Box 2")).
  In each trial, we calculated the proportion of "spurious" MAVs we identified across strains treated with the specified mutagen.
  The distribution of these spurious MAV proportions across 100 trials is shown using a colored jitterplot.
  
]
) <fig-4>

=== A simple model of transgenerational DNA damage

Convinced that these multi-allelic mutations were real sequence variants, we next considered how they might occur.
Let's first assume that genotoxin treatment occurs at the young adult stage (YA) in a P0 animal.
In #cel hermaphrodites, spermatogenesis and oogenesis occur in sequence; spermatogenesis begins late in the third larval stage (L3) and completes by the end of L4, while oogenesis begins in adulthood @Hubbard2005-ky.
Thus, in YA animals, all sperm are mature gametes that will not undergo mitosis before fertilizing a zygote.


#figure(
  image("fig/Figure 5.png", width:90%), caption: 
  [*Lesions must persist until the $P_4$ cell stage in an F1 to create multi-allelism.*
  In this toy diagram, we track the fate of a single lesion-containing DNA strand during the first few cell divisions of #cel embryogenesis.
  *a)* Following genotoxin treatment in a young adult (YA) worm, a lesion (shown as a red triangle) is generated in a haploid gamete.
  Here, a lesion is created at an adenine on the reverse strand of a haploid sperm cell's genome (the probability of a lesion occurring on both strands at the same nucleotide is very small).
  An F1 zygote is then be fertilized by the sperm cell that harbors a DNA lesion.
  *b)* The sperm-derived lesion could persist during the first few F1 embryonic cell divisions.
  If the lesion is not repaired, and/or translesion synthesis polymerases pass over the lesion without incorporating an incorrect base, the lesion could persist into either the AB or $P_1$ cell (the two products of the first embryonic cell division).
  If the lesion-containing strand continues to be inherited by germline progenitor cells ($P_2$, $P_3$, and $P_4$) without being repaired, it could template the incorporation of multiple unique derived alleles in mature gametes.
  Critically, if the lesion-containing strand is inherited by the AB cell or any of the non $P$-lineage germline progenitors, it may generate multi-allelism in the soma, but the subsequent generation will inherit a maximum of two alleles at this site.
  Similarly, if the lesion templates the incorporation of an incorrect base but is repaired prior to the $P_4$ cell division (see inset), the F1's gametes will be mosaic for a T $#sym.arrow$ C mutation, but this mutation will appear biallelic in future generations.
]
)<fig-5>


#let wrong_c = [#highlight(radius: 2pt, top-edge: 8pt, extent: 1pt, fill: yellow)[#text(fill: black)[*`C`*]]]
#let wrong_g = [#highlight(radius: 2pt, top-edge: 8pt, extent: 1pt, fill: green)[#text(fill: black)[*`G`*]]]


Let's next imagine that in a mutagenized P0, a haploid sperm cell harbors a DNA lesion on a single strand (@fig-5).
After that sperm cell fertilizes an F1 zygote, what are the chances its lesion would persist long enough to create multi-allelism in the F1's gametes?
To answer this question, we can take advantage of the fact that the #cel embryonic lineage is invariant and completely resolved @Sulston1977-gh @Sulston1983-zz.
All #cel gametes are derived from a single germline progenitor cell called $P_4$.
The $P_4$ cell divides to create $Z_2$ and $Z_3$, which localize to the gonad and give rise to all eventual sperm and oocytes @Hubbard2005-ky.
At minimum, in order to generate gametic mosaicism, a lesion-containing strand would need to segregate into the $P_4$ cell without being repaired (@fig-5).
If the lesion undergoes error-free repair prior to the $P_4 #sym.arrow Z_2 / Z_3$ cell division — and never templates the incorporation of an incorrect base — the F1 gametes will only possess a single allele at that site, and any evidence of an inherited lesion will be invisible.
But what happens if an incorrect base _is_ incorporated opposite the lesion during prior to $P_4$?

For example, let's imagine that the lesion undergoes error-prone translesion synthesis (TLS) and a #wrong_c allele is incorporated opposite the lesion during the $P_3 #sym.arrow P_4$ division.
If the lesion persists to $P_4$ and is bypassed by error-prone TLS during the $P_4 #sym.arrow Z_2 / Z_3$ division (e.g., if a #wrong_g allele was incorporated during the $P_4 #sym.arrow Z_2$ division), both the first and second incorrect bases ( #wrong_c and #wrong_g ) will be present in mature gametes.
But if the lesion is repaired prior to the $P_4 #sym.arrow Z_2 / Z_3$ cell division, only a single incorrect base (the #wrong_c allele) will exist in the germline and the offspring of the F1 would appear to be biallelic (see inset in @fig-5).
If it segregates into a somatic precursor cell during any of the first four cell divisions, the lesion-containing strand could generate multi-allelism, but those multiple alleles would only exist in the soma and would not be present in sequenced F2 progeny.
We believe that this simple model, in which a lesion-containing strand persists for at least four embryonic cell divisions, explains the presence of MAVs in the #vlk dataset.

== Discussion

In this analysis, we demonstrate that genotoxin treatment creates DNA lesions that persist from generation to generation in #cel nematodes.
In line with recent results @Wang2023-lg, we find that transgenerational DNA damage can produce a measurable phenotype (here, the presence of multi-allelic variation) in the offspring of a mutagenized animal.
While we've long known that parental DNA damage is repaired by the early embryo @Generoso1979-oa, our work demonstrates that parental lesions can generate multiple _de novo_ genetic variants during gametogenesis, and suggests a number of exciting new directions.

=== How likely is gametic mosaicism due to inherited lesions?

The probability that a DNA lesion occurs on both strands at the same nucleotide in a P0 gamete (or, that it occurs at the same nucleotide in both gametes) is extremely small.
Thus, we can safely assume that a given MAV is caused by the presence of a single lesion in a fertilized zygote.
We can also estimate the probability that a lesion-containing strand would persist until the $P_4$ cell stage.
Assuming the lesion evades DNA repair machinery during each cell cycle, there is a 50% chance the lesion-containing strand will be inherited from a zygote to the $P_1$ cell, a 50% chance it will be inherited from $P_1$ to $P_2$, and so on (@fig-5).
Thus, the probability that a lesion is inherited by the $P_4$ cell (conditional on its persistence to that cell stage) is simply $0.5^4 = 0.0625$.
Lesion segregation in the early zygote is therefore stochastic, depending on the vagaries of Mendelian segregation.

=== Missing MAVs due to the duration of lesion segregation and low sequencing depth

Assuming it segregates unrepaired into a $Z_2$ or $Z_3$ cell, a lesion could also create gametic mosaicism by serving as a template for incorrectly incorporated nucleotides during the later stages of germ cell development.
These "late" MAVs would be present in correspondingly fewer mature gametes, and therefore present in a smaller fraction of the F1's progeny.
If we were to sequence a small number of pooled F2s, or sequence those pooled F2s to relatively low depth, the MAV might escape detection. 

If a lesion is bypassed by error-prone TLS and repaired in a subsequent cell division, it might generate _de novo_ mutations that appear biallelic in subsequent generations. 
For example, if a lesion is incorrectly bypassed during the $P_3 #sym.arrow P_4$ cell division, a lesion-mutation duplex would be present in the $P_4$ cell (see inset in @fig-5). 
But if the lesion is repaired or removed during the next cell cycle, the gametes produced by that worm would only contain one of two alleles, and its offspring would appear to be biallelic (@fig-5).
We therefore suspect that the early zygote inherits much more damage than is suggested by MAV prevalence; many biallelic SNVs observed in the sequenced F2+ offspring likely result from inherited lesions, as well.

=== Missing MAVs due to survival bias
MAVs might also be invisible due to the strength of genotoxin treatment. If a P0 animal were treated with an extremely high dose of mutagen, the F2 progeny of a heterozygous F1 could exhibit very high embryonic lethality as a consequence of newly homozygous null alleles.
If an F1's gametes are mosaic for multiple derived alleles at a given site, fewer F2 progeny provide us fewer opportunities to observe an "extra" allele at a given site.
In other words, MAV detection is complicated by survivor bias; high mutagen doses create more lesions, and these lesions might generate multi-allelic variation, but those multiple alleles may not segregate into living offspring.
Ultimately, then, our ability to detect MAVs is dependent on at least three distinct factors: 1) the random segregation of lesion-containing strands into somatic or germline progenitors, 2) the efficiency of lesion repair in the early embryo (i.e., the duration of lesion persistence), and 3) the relative fertility of the F1 and its progeny following mutagen exposure.


=== What mechanisms likely lead to multi-allelism?

As suggested in previous studies of lesion segregation @Aitken2020-fy @Anderson2024-fl, we hypothesize that multi-allelic variants arise from error-prone replication over persistent lesions.
In #cel, translesion synthesis is the preferred method for DNA damage bypass in the early embryo @Roerink2012-ow.
Roerink _et al._ (2012) hypothesize that TLS, as opposed to error-free repair via nucleotide excision repair (NER), is preferred when the rate of cell division is high (as it is in the early embryo).
What's more, #cel suppress DNA damage checkpoint activation during the first few embryonic cell divisions, and rely on TLS polymerases to prevent replication fork collapse @Holway2006-pd.
The same appears to be true in _Xenopus_ and _Drosophila_ @Lo-Furno2022-zq @Kermi2015-nd, suggesting that the rapidly dividing early embryo is unable to perform proper quality control and instead relies on TLS to bypass DNA damage that would otherwise stall the cell cycle @Ohkumo2006-em.
In worms that have not been treated with genotoxin, it remains to be seen whether endogenous DNA damage is likely to persist, or if damage that accumulates during zygotic genome activation @Butuci2015-xv could cause MAVs, as well.


=== Do some mutagens create more persistent lesions?

Compared to a null expectation, we observed that certain mutagens led to a greater enrichment of MAVs than others.
Despite causing the highest number of mutations per unit dose (@fig-2), EMS treatment led to a relatively modest enrichment of MAVs.
Without additional experimental data, it is difficult to conclusively say whether genotoxins like DMS and MMS are more potent engines of multi-allelism or create longer-lasting DNA lesions.
As discussed above, our ability to detect MAVs relies on a combination of factors: the chance segregation of lesion-containing strands into germline progenitors, the efficiency of embryonic DNA repair, and the lethality induced by a mutagen itself.
Mutagens like EMS almost exclusively create C:G #sym.arrow T:A mutations, and often generate premature stop codons, strong loss-of-function, and null alleles @Kutscher2014-ei @Flibotte2010-an.
EMS mutagenesis may therefore prove more lethal to F2+ progeny, limiting our ability to sequence the full complement of _de novo_ alleles present in an F1's germline.
While we likely failed to observe many of these large-effect alleles due to survivor bias (any worms with lethal null alleles were not sequenced), we did find that EMS-derived SNVs occurred at more conserved nucleotides in the #cel genome (#link(<fig-s3>)[Supp. Fig. 3]).

Moreover, our analysis in this manuscript deals only with single-nucleotide mutations; the mutagens we analyzed also create insertions, deletions, and larger structural variants @Volkova2020-gt.
Certain mutagens are more likely to generate null alleles via these types of mutations, potentially leading to even greater F2+ lethality and a reduced ability to detect MAVs.

=== Implications for sex-biased mutagenesis

The #vlk dataset is extremely powerful, though it leaves one important question untested: are lesions more likely to be inherited from sperm or egg cells?
Wang et al. (2023) @Wang2023-lg hypothesize that the compacted chromatin architecture of #cel sperm @Marchetti2007-rh render them incapable of repairing damage caused by ionizing radiation. 
Indeed, prior work has shown that mature #cel sperm have a limited ability to respond to DNA damage, including oxidative stress @Smith2013-is.
In this study, we analyzed alkylating mutagens that were applied to P0 hermaphrodites at the young adult (YA) stage of development.
At this time point, #cel spermatogenesis is complete (having begun at the early L3 stage and ended at late L4), and mature sperm will not undergo any additional cell divisions before they fertilize F1 zygotes @Hubbard2005-ky.
Oocytes, on the other hand, begin oogenesis after spermatogenesis and continually divide into adulthood. 
As a result, it seems likely that most MAVs are caused by persistent lesions inherited from #cel sperm, as these lesions will not have had an opportunity to be repaired prior to fertilization.
Supporting this hypothesis, Wang _et al._ reported embryonic lethality in the offspring of males irradiated at the late L4 stage (when spermatogenesis is complete), but not in the offspring of males irradiated at the late L3 or early L4 stage (when spermatogenesis is ongoing) @Wang2023-lg. 
Future experiments, in which male and "feminized" hermaphrodites are separately mutagenized, could provide insight into the relative ability of sperm and oocytes to repair DNA lesions caused by alkylating agents.

// We also note that our proposed model of multi-allelic mutation generation suggests that damage must be repaired within four cell divisions to ensure a lack of multi-allelism. 
// #cel likely begin activating the zygotic genome by the 4-cell stage, meaning that the worm zygote only relies on maternally-deposited repair machinery for two divisions. 
// This implies, however, that #cel oocytes with more defective repair machinery might contribute to an increased likelihood of lesion persistence to (at least) the 4-cell stage. https://pmc.ncbi.nlm.nih.gov/articles/PMC4303375/


=== Implications for human _de novo_ mutagenesis

A recent study of human germline _de novo_ mutation (DNM) reported a positive correlation between maternal age and the number of DNMs on paternal haplotypes @Gao2019-yg. 
This unexpected result has been attributed to mutations that occur during early embryogenesis; because the early human zygote relies on maternally-deposited machinery to replicate and repair DNA, older oocytes may contribute more defective machinery, leading to elevated rates of post-zygotic mutation @Braude1988-hc @Dobson2004-ks @Zhang2009-am @Wong2016-un @Gao2019-yg.
Our results demonstrate that in #cel, DNA damage is passed down from gametes to the early zygote, providing a pool of lesions that must be repaired during embryonic development.
Thus, transgenerational DNA damage — which is improperly repaired by maternally-deposited machinery — may be an underappreciated source of human _de novo_ mutations, and possibly even multi-allelic mosaicism in human tissues.
// Mosaic mutations in human blood have previously been attributed to early embryonic mutations @Ju2017-ek.


=== What about indels and SVs?

Finally, we note that multi-allelic SNVs are not the only kind of multi-allelism that might be caused by a persistent lesion. 
#vlk demonstrated that genotoxins create a diverse range of DNA mutations, from SNVs and multi-nucleotide variants to insertions, deletions, tandem repeat expansions, and larger structural variants. 
Here, as a proof of concept, we focused on three alkylating agents that predominantly generate SNVs. 
Using long-read sequencing technologies, like the PacBio and Oxford Nanopore Technologies platforms, as well as new technologies that enable accurate sequencing in low-complexity regions of the genome, like Element Biosciences, we can begin to investigate the myriad consequences of persistent lesions on other kinds of DNA mutation.
For example, a persistent lesion might template the incorporation of two unique SNV alleles, as well as a small deletion; or an SNV allele and two unique indels; and so on.
We are excited to investigate the role that persistent, transgenerational DNA damage plays in generating inherited genetic diversity.

== Acknowledgments

We thank Drs. Bettina Meier and Anton Gartner for assisting with data access, and Dr. Gartner for helpful feedback on our initial findings as well as an early draft of the manuscript. We also thank members of the Quinlan Lab for helpful discussions and brainstorming. We thank funding CHPC.


== Materials and Methods

=== Data and code availability
No new data were generated as part of this study. 
All sequencing data are available on the European Nucleotide Archive (study accessions ERP000975 and ERP004086) and all single-nucleotide variant calls are available in VCF format in Supplementary Data File 6 from #vlk @Volkova2020-gt.
We have deposited a Snakemake pipeline that can be used to reproduce all data processing, statistical analysis, and figure generation. 

=== Processing sequencing data from Volkova et al. (2020)

We downloaded FASTQ files for all relevant strains from the European Nucleotide Archive (ENA) using the `fasterq-dump` utility (SRA tools v3.4.1):

```
fasterq-dump -e 4 -p -O /path/to/fastq/dir/ -o $sample_prefix $accession
```

We then filtered the reads (adapter trimming, quality filtering, length filtering, etc.) with FASTP v0.20.1 @Chen2018-ps, using the following command:

```
fastp --in1 /path/to/fastq.1.gz \
      --in2 /path/to/fastq.2.gz \
      --out1 /path/to/fastq.clean.1.gz \
      --out2 /path/to/fastq.clean.2.gz \
      --unpaired1 /path/to/fastq.unpaired.1.gz \
      --unpaired2 /path/to/fastq.unpaired.2.gz \
      --thread $threads \
      -V

```

We aligned the cleaned FASTQ files to the WBcel235/ce11 build of the #cel reference genome (downloaded from the UCSC Genome Browser) using `bwa mem` (v0.7.19-r1273) @Li2013-rn and the Picard toolkit within GATK (v4.6.0) @Picard2019toolkit @DePristo2011-xa to produce sorted, duplicate-marked BAM files:

```
bwa mem \
    -t $threads \
    -K 96000000 \
    -R "read_group_string" \
    /path/to/reference.fa \
    /path/to/fastq.1.clean.gz \
    /path/to/fastq.2.clean.gz \
    | \
gatk SortSam \
    --java-options -Xmx24g \
    --MAX_RECORDS_IN_RAM 5000000 \
    -I /dev/stdin \
    -O /path/to/sorted.bam \
    --SORT_ORDER coordinate \
    --TMP_DIR /path/to/tmpdir \
    --CREATE_INDEX true
  
gatk MarkDuplicates \
     --java-options -Xmx24g \
     -I /path/to/sorted.bam \
     -O /path/to/sorted.dupmarked.bam \
     --TMP_DIR /path/to/tmpdir \
     -M /path/to/metrics.txt

```

We downloaded single-nucleotide variant (SNV) VCF files for every strain (called with respect to the WBcel235/ce11 reference) from the Supplemental Material of #vlk.
We performed additional filtering on these SNV calls by removing SNVs that overlapped repetitive regions annotated by WindowMasker (`windowmaskerSdust` track for `ce11` downloaded from the UCSC Table Browser).
After filtering, we retained a total of 68,796 SNVs.

=== Identifying multi-allelic variants <sec-identifing-mavs>

At every SNV in a particular strain, we used `pysam` @Pysam  to query the strain's BAM file at the variant position.
We counted the number of sequencing reads that supported a particular single-nucleotide allele at the variant position, excluding the following:

#align(left)[
+ reads with mapping quality < 60
+ bases with Phred-scaled base quality < 20
+ improperly paired reads
+ read pairs aligned to different chromosomes
+ supplementary alignments
+ secondary alignments
+ bases within 5bp of the aligned start or end coordinate of a read
+ reads marked as duplicates
]

We additionally removed all reads that shared the same aligned start and end coordinates.

=== Calculating the expected number of multi-allelic variants

To determine whether we identified more MAVs than expected given the background rate of Illumina sequencing error and alignment artifacts, we took a simple random sampling approach.
For a given "focal" strain with $S$ SNV mutations, we randomly sampled a BAM file from the complete set of 2,713 strains (excluding the focal strain and any strains with the same genotype as the focal strain). 
We then searched for evidence of multi-allelic variants at all $S$ sites using that random strain's reads, as described #link(<sec-identifing-mavs>)[above]. 
We repeated this process 100 times for every focal strain.
In each of the 100 trials, we calculated the total number of "spurious" MAVs observed across all strains.

=== Testing for the presence of index hopping

One possible explanation for the presence of multi-allelic variants (MAVs) is "index hopping," a phenomenon that occurs in multiplexed Illumina sequencing runs @Costello2013-kc. 
Many of the mutagenized strains in #vlk were barcoded and run in a multiplexed library. 
After sequencing, these sample barcodes were used to "demultiplex" the reads, assigning each read to the sample from whom it originated. 
However, during Illumina sequencing runs, sample indices can occasionally "hop" from one sample to another on a flow cell, meaning that reads from one sample can be incorrectly assigned  to another sample. 
To test for the possibility that index hopping could explain the presence of MAVs in our datasets, we iterated over each of the 139 MAVs we identified in strains treated with DMS, EMS, and MMS. 
At each MAV, we searched for evidence of the non-reference alleles in every other strain's alignments (n = 2,713) using `pysam` @Pysam.
We did not find any evidence that non-reference alleles at MAVs were segregating in other #vlk strains.

==== Measuring strand bias
At every biallelic SNV, we counted the number of reads supporting the alternate allele that were aligned to the forward and reverse strand.
We performed a binomial test for strand bias using `scipy.stats` as follows:

```
binom = ss.binomtest($n_fwd, $n_fwd + $n_rev, p=0.5)
```

We considered a site with a binomial $p < 0.05$ to have significant strand bias.
At every candidate multi-allelic variant, we performed a similar test for strand bias using the number of reads supporting the "third" allele (i.e., neither the reference nor the alternate allele).
We then compared the count of strand-biased sites in the biallelic and multi-allelic callsets using a Chi-square contingency table:

\

#align(center)[
  #table(
    columns: (auto, auto, auto),
    inset: 6pt,
    align: horizon,
    table.header(
      [], [*strand biased*], [*not strand biased*],
    ),
    [*biallelic*], "6,152", "62,505",
    [*multiallelic*], "16", "123",
  )]

We observed similar numbers of biallelic and multi-allelic sites with significant strand bias ($chi^2$ $p = 0.37$).

==== Downsampling experiments

We used `mosdepth` (v0.3.14) @Pedersen2018-dc to calculate average genome-wide sequencing depth in every strain from #vlk. 
```
mosdepth -t $threads \
         -nx \
         -f /path/to/reference.fa \
         $prefix \
         /path/to/input.cram
```
Most strains were sequenced to a genome-wide average of \~80X, but many were sequenced to an average of \~30X.
Sequencing coverage was highly correlated with the platform on which samples were processed; most strains with high (\~80X) coverage were sequenced on the Illumina HiSeq 2000 platform, while those with lower (\~30X) coverage were sequenced on Illumina HiSeq X Ten.
Because we require at least three reads of support to confidently detect multi-allelic variants (MAVs), increased sequencing depth would likely give us greater power to detect MAVs (especially if the "third" allele was introduced later during gametogenesis, and fewer F2+ progeny harbor the allele).
To test for the effects of both sequencing coverage and sequencing platform on MAV detection, we downsampled every strain's CRAM file to an average of 30X depth using `samtools` (v1.16) @Li2009-ge:

```
 samtools view --write-index \
               -C \
               -s $downsampling_factor \
               -T /path/to/reference.fa \
               -@ $threads \
              -o /path/to/output.cram \
              /path/to/input.cram
```
where `$downsampling_factor` was calculated as $min(0.999, (30/D_i))$, where $D_i$ is the average genome-wide depth in strain $i$.
We then searched for MAVs in each strain as described above, using downsampled CRAMs in place of the strains' original CRAMs.
We note that our downsampling experiments are imperfect, because we searched for MAVs at the ostensibly biallelic SNVs originally identified in #vlk.
These SNVs were called from the original alignments for each strain (which, in some cases, were sequenced to very high depth). 
For the purposes of this experiment, we assume that all of the original SNVs identified in #vlk would be detectable using a downsampled 30X alignment.

// ==== Testing for an effect of sequencing platform on MAV detection
// The #vlk strains were not randomly assigned to either the HiSeq 2000 or HiSeq X Ten platforms.
// To determine whether our ability to detect MAVs was impacted by sequencing platform, we therefore could only compare strains subject to identical treatment regimes (that is, strains with the same genotype, treated with the same mutagen at the same dose).
// We identified 14 groups of strains belonging to the exact same treatment regimes.
// Each group comprised between 2 and 4 strains; every strain in a group corresponded to the same genotype, mutagen, and mutagen dose.
// Every group contained at least one strain sequenced on HiSeq 2000 and at least one sequenced on HiSeq X Ten.
// Among the strains sequenced on the HiSeq 2000 platform, we observed 6 MAVs out of N total SNVs.
// This was not significantly different than the number we'd expect to see if we randomly assigned strains to a sequencing platform ($p = 0.14$).


#pagebreak()

#bibliography("Paperpile - References - Jun 29 (1).bib", style: "plos")

#include "supp.typ"



// === Combinatorial genetic diversity

// As reported in Aitken et al. (2020), multi-allelic mutations are not the only consequence of persistent DNA lesions.
// In a single round of DNA replication, error-prone translesion synthesis polymerases might incorporate an incorrect base opposite a DNA lesion but pass over a nearby lesion _without_ incorporating an incorrect base.
// As a result, lesions in close proximity can generate "combinatorial" genetic diversity; both mutated sites might appear bi-allelic, but due to inconsistent TLS bypass, they create three or more distinct haplotypes.
// Across the X strains treated with DMS, EMS, or MMS, we found 63 pairs of SNVs with evidence of combinatorial genetic diversity, providing further evidence that many DNA lesions persist unrepaired from P0 to F1.

// === Greater levels of multi-allelism in NER-deficient strains
// The longer a lesion persists, the more opportunities it has to become a template for the incorporation of a second "incorrect" base. 
// We hypothesized that multi-allelism would be more frequent in strains lacking the ability to efficiently remove lesions — i.e., those lacking nucleotide excision repair (NER) or base excision repair (BER) machinery.
// Most strains mutagenized with EMS did not exhibit higher levels of multi-allelism than expected by random chance. 
// However, EMS-derived MAVs were significiantly enriched in _xpa-1_ and _xpf-1_ KOs, and and DMS-derived MAVs were significantly enriched in _xpc-1_ and _xpf-1_ KOs.
// _xpf-1_ mutants are deficient in both global genome nucleotide excision repair (GG-NER) and transcription-coupled NER (TC-NER), while _xpc-1_ mutants are only deficient in the former and _xpa-1_ are deficient in the latter.
// DMS-derived MAVs were also highly enriched in _polk-1_ mutants, who lack a mostly error-free TLS polymerase. Volkova et al. (2020) postulated that in the absence of _polk-1_, other error-prone TLS polymerases like _rev-3_ must pick up the slack.

// === The multi-allelic mutation spectrum differs across alkylating agents

// The three alkylating agents we tested leave behind different kinds of DNA lesions. EMS is an ethylating agent that primarily creates $O^6$-ethyl guanine lesions, as well as small amounts of $N^3$-ethyl adenine (http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&dopt=Abstract&list_uids=16748923), while MMS and DMS are both methylating agents that predominantly generate $N^7$-methyl guanine, $N^3$-methyl adenine, and $O^6$-methyl guanine (http://www.ncbi.nlm.nih.gov/entrez/query.fcgi?cmd=Retrieve&db=PubMed&dopt=Abstract&list_uids=2195323). Because these three genotoxins preferentially attack different nucleotides, we hypothesized that the  spectrum of MAVs might differ between mutagenized strains.
