// #import "@preview/stellar-springer-nature:0.1.0": article, bmhead


#let vlk = "Volkova et al. (2020)"
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
Exogenous and endogenous mutagens create bulky adducts, chemical modifications, and DNA breaks. 
These lesions may be incorrectly bypassed by error-prone polymerases or improperly repaired by DNA repair machinery, leaving behind mutations.
A phenomenon called "lesion segregation," in which DNA lesions evade repair and persist for multiple cell divisions, was recently documented in tumors and healthy somatic tissues from mice and humans, respectively. 
Persistent lesions serve as templates for multiple rounds of error-prone translesion synthesis, generating multi-allelic variants (MAVs).
By reanalyzing sequencing data from a large #cel mutagenesis experiment, we observed robust evidence for MAVs at a small fraction (\~0.2%) of mutated sites in genotoxin-treated strains. 
Because each strain was derived from a single F1 animal — the offspring of a mutagenized P0 — we believe that these MAVs are caused by inherited DNA lesions.
Lesions present in a parental gamete are transmitted to an F1 zygote, persist for at least four embryonic cell divisions, and later serve as templates for the incorporation of multiple _de novo_ alleles during gametogenesis.
Gametic mosaicism then manifests as multi-allelism in the sequenced progeny of those F1s. 
Given the life stage at which  worms were mutagenized, we hypothesize that lesions were primarily inherited from parental sperm cells.
Future experiments will be required to confirm our findings, but these results strongly suggest that DNA lesions from alkylating agents are inherited from gamete to zygote in #cel, and generate multi-allelic variation in subsequent generations.

== Introduction

Myriad sources of damage, from reactive oxygen species to ultraviolet radiation, leave behind _lesions_ on DNA molecules.
While most lesions are efficiently repaired, others survive long enough to be encountered by DNA polymerases during cell division.
These high-fidelity polymerases are often unable to replicate across lesions, triggering the recruitment of specialized translesion synthesis (TLS) polymerases @Sale2013-gj (cite Minocha et al. "just bypass it").
Owing to their unique structural features, including large, accommodating active sites and a lack of exonuclease proofreading abilities, TLS polymerases are capable of synthesizing over bulky DNA adducts, abasic sites, and other lesions that might normally lead to polymerase stalling and replication fork collapse @Sale2013-gj @Gyure2023-ni.
However, the permissive nature of TLS polymerases comes at a cost.
Translesion synthesis is relatively low-fidelity, and incorrect nucleotides are frequently incorporated opposite lesions @Sale2012-zy @Sale2013-gj @Gyure2023-ni @Matsuda2001-ud @Roerink2012-ow @Vaisman2017-jw.
TLS polymerases also introduce new mutations downstream from lesions in a process called "collateral mutagenesis" @Poti2022-ms @Aitken2020-fy @Anderson2024-fl.

=== Lesion segregation and multi-allelic mutations

Aitken et al. (2020) @Aitken2020-fy previously documented a phenomenon called "lesion segregation," in which DNA lesions persist unrepaired for at least one cell division following a mutagenic insult. 
As long as a lesion evades DNA repair machinery, it can serve as a template for error-prone translesion synthesis. 
In one round of DNA replication, an incorrect base might be incorporated opposite a lesion; in a subsequent round of replication, another incorrect base might be incorporated (@fig-1).
Persistent lesions therefore become "engines of genetic diversity" by generating multi-allelic mutations @Aitken2020-fy @Anderson2024-fl.
Remarkably, some lesions can persist for _years_ in human blood, liver and bronchial tissue @Spencer-Chapman2025-er.

#figure(
  image("fig/Figure 1.png", width: 80%), caption: [*Persistent lesions can create multi-allelic mutations.* DNA lesions (shown as red triangles) occur after exposure to an exogenous or endogenous mutagen. If lesions are not removed or repaired prior to DNA replication, error-prone translesion synthesis (TLS) polymerases might incorporate an incorrect base opposite the lesion, creating a lesion-mutation duplex. Lesion-mutation duplexes resolve into double-stranded mutations following a subsequent round of DNA replication. If a lesion continues to evade DNA repair machinery, it may eventually serve as a template for the incorporation of a different incorrect base (shown as a green circle). Figure adapted from @Aitken2020-fy and @Anderson2024-fl.], 
) <fig-1>

=== Transgenerational DNA damage in #cel

In a recent study, Wang et al. @Wang2023-lg demonstrated that paternal exposure to ionizing radiation creates persistent, transgenerational DNA damage in #cel.
Irradiated male worms were mated to healthy, "feminized" hermaphrodites.
While the F1 offspring of these irradiated males were mostly viable, nearly all F2s exhibited embryonic lethality.
The authors concluded that DNA damage — primarily in the form of large, double-stranded DNA breaks — was inherited by the F1 offspring of irradiated males.
In the F1 zygote, maternally-deposited polymerase theta-mediated end joining (TMEJ) machinery attempted to repair this damage, creating _de novo_ structural variants in the process. 
The authors speculated that mature _C. elegans_ sperm, which have a highly-compacted chromatin structure, are inaccessible to DNA repair machinery @Marchetti2007-rh.
Only after those sperm have fertilized a zygote can their damaged DNA be repaired by maternal TMEJ.
These results demonstrate that radiation-induced DNA damage can persist from a parental gamete to a fertilized zygote, and that DNA damage repair in the embryo has consequences for future generations.

=== A large-scale mutagenesis experiment in #cel
In 2020, Volkova _et al._ @Volkova2020-gt mutagenized 54 _C. elegans_ strains with 12 DNA damaging agents. 
Most of these strains harbored homozygous loss-of-function (LOF) alleles in genes related to DNA replication and repair, including translesion synthesis (_polk-1_) and nucleotide excision repair (_xpa-1_, _xpc-1_, and _xpf-1_).  

Here, we reanalyze sequencing data from these mutagenesis experiments and find compelling evidence for multi-allelic variants (MAVs) in many strains.
We are confident that these MAVs are not due to sequencing errors or alignment artifacts.
Instead, we believe that MAVs arise when a lesion occurs in a parental gamete, is transmitted to an F1, and persists for long enough during embryogenesis to serve as a template for the incorporation of multiple derived alleles. 
Given the developmental lineage of #cel @Sulston1977-gh @Sulston1983-zz, we estimate that a lesion present in a P0 gamete must persist for at least 4 embryonic F1 cell divisions in order to generate multi-allelism in the gametes of that F1. 
Certain mutagens appear to cause greater multi-allelism than others, though the stochastic nature of post-zygotic lesion segregation and the effects of survival bias make it difficult to confidently interpret these differences.
Nevertheless, our results demonstrate that multiple forms of DNA damage can persist from generation to generation in #cel. 
These persistent lesions become potent engines of mutagenesis, influencing the genetic diversity of future generations long after they arise.

== Results

=== Re-analyzing a #cel mutagenesis experiment

In #vlk, 54 strains of #cel were either a) maintained for between 5 and 40 generations in a mutation accumulation (M.A.) experiment or b) treated with various concentrations of  DNA damaging agents.

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

All F1 animals should therefore possess a maximum of two unique alleles at a given site. 

After sequencing, #vlk performed read alignment, called single-nucleotide, insertion/deletion (indel), and structural variants (SVs), and removed recurrent artifactual mutations across strains.
In total, the authors identified 135,348 high-confidence single-nucleotide variants (SNVs) in 54 strains treated with genotoxins or maintained in M.A. experiments.
Here, we limit our analyses to the subset of SNVs observed in strains treated with three alkylating agents: ethyl methanesulfonate (EMS), dimethyl sulfate (DMS), and methyl methanesulfonate (MMS).
We chose these genotoxins for three reasons: first, because they primarily generated single-nucleotide and multi-nucleotide (as opposed to indel or SV) mutations; second, because they were among the most potent mutagens used in the study; and third, because worms treated with these three genotoxins were mutagenized at the same life stage (young adult; YA). 
We further filtered the SNVs in EMS, DMS, and MMS-treated strains to remove variants in low-complexity sequences (*Materials and Methods*), producing a final callset of 68,900 alkylation-induced SNVs (@fig-2).

#figure(
  image("fig/Figure 2.png", width: 80%), caption: [*Number of genotoxin-treated strains and aggregate mutation counts in #vlk*. *a)* Number of strains corresponding to each mutagenesis approach. 475 strains were used in mutation accumulation (M.A.) experiments rather than being treated with genotoxins. DMS: dimethyl sulfate, EMS: ethyl methylsulfonate, HU: hydroxyurea, MMS: methyl methanesulfonate. *b)* Number of SNVs attributed to each mutagen, aggregated across all mutagenized strains. Darker bars indicate numbers of filtered SNVs, while shaded bars indicate the total number of SNVs before stringent filtering (see *Materials and Methods*). In this study, we exclusively analyzed mutations caused by the alkylating agents DMS, EMS, and MMS.]
) <fig-2>


=== Multi-allelism at mutated sites

By inspecting aligned sequencing reads at mutated sites in the genotoxin-treated lines, we observed  evidence for numerous multi-allelic variants (MAVs) (@fig-3).
We found almost two thousand ostensibly biallelic SNVs with support for a "third allele," though the number of candidate MAVs declined substantially if we required additional supporting reads as evidence (@fig-3).
We required candidate MAVs to be supported by at least 3 sequencing reads, producing a callset of 136 high-confidence MAVs out of 68,900 total SNVs (\~0.2%).

#figure(
  image("fig/Figure 3.png", width: 100%), caption: [*Evidence for multi-allelism at mutated sites in #cel.* *a)* Diagram of aligned Illumina sequencing reads at a single-nucleotide variant observed in a _polk-1_ mutant strain treated with 0.08mM DMS. Sequencing reads are sorted by start position and colored by read orientation (light grey: aligned to the forward strand, dark grey: aligned to the reverse strand). Alleles aligned to the mutated reference nucleotide are colored. For simplicity of visualization, we show a maximum of 50 reads in each subplot. Legend shows the counts of each allele aligned to the forward or reverse strand. *b)* Dotted vertical line shows the number of SNVs at which we observed >=3 reads supporting an MAV. In each of 100 trials, we calculated the number of SNVs at which we observed evidence for multi-allelism using a random strain's sequencing reads. The distribution of "spurious" MAVs identified in each trial is shown as a blue histogram. *c)* We performed the random sampling procedure described in *b)* using varying thresholds on the number of reads required to support a candidate MAV. The blue line shows the number of identified MAVs at each read threshold. The red line shows the enrichment of empirical vs. spurious MAVs identified at each threshold.]
) <fig-3>

We were initially suspicious that MAVs were simply a result of sequencing error or alignment artifacts.
In each strain, we calculated the number of randomly sampled SNVs at which 3 or more reads supported a non-reference allele (#link(<box-2>, "Box 2"), *Materials and Methods*).

#block(
  fill: luma(230),
  inset: 8pt,
  radius: 4pt,
  [*#underline[Box 2]: Generating a null expectation for the number of MAVs.*
We first searched for multi-allelic evidence at all 68,900 SNVs in 763 strains treated with DMS, EMS, or MMS. 
In a given strain, we we asked whether there were 3+ sequencing reads supporting a 'third' allele at each of $S$ ostensibly biallelic SNVs. 
If so, we classified the site as a multi-allelic variant (MAV). 
We then performed 100 random sampling trials in each strain.
In each trial, we randomly sampled $m$ mutations from the complete mutation callset $M in.not S$.
At each site in $m$, we then asked if there were 3+ sequencing reads supporting a non-reference allele; since these random SNVs should be homozygous reference in the focal strain, we considered any non-reference evidence to be evidence for a "spurious" MAV.]
) <box-2>
// #show figure.where(
//   kind: table
// ): set figure.caption(position: top)

// #figure(caption: [*Permutation strategy for measuring MAV enrichment.* In each trial, we permute the strain labels associated with each identified biallelic SNV. We then calculate the amount of evidence for a non-reference allele at each permuted site. ], 
//   grid(
//     columns: (auto, auto, auto), 
//     gutter: 0.5em,      
//    table(
//     columns: (auto, auto),
//     inset: 5pt,
//     align: horizon,
//     table.header(
//       [*Strain*], [*Position*],
//     ),
//     "CD0001a",
//     [`chrI:100-101`],
//     "CD0001b",
//     [`chrI:200-201`],
//     "...",
//     "...",
//     "CD0999a",
//     [`chrX:9000000-9000001`],
//   ),
//   align(horizon + center)[*permute* strain labels\ $arrow.ccw$],
//   table(
//     columns: (auto, auto),
//     inset: 5pt,
//     align: horizon,
//     table.header(
//       [*Strain*], [*Position*],
//     ),
//     "CD0423b",
//     [`chrI:100-101`],
//     "CD0901c",
//     [`chrI:200-201`],
//     "...",
//     "...",
//     "CD0039a",
//     [`chrX:9000000-9000001`],))
// )
Compared to this null expectation, MAVs occurred far more often than expected by chance (@fig-3).
We note that our random sampling strategy is imperfect, and likely produces an inflated number of "spurious" MAVs.
In a given strain with $S$ SNVs, we randomly sample $S$ mutations from the complete SNV callset; in strains with large $S$, we are guaranteed to randomly sample the same sites multiple times over the course of 100 trials.
Moreover, the majority of mutations in the callset are derived from EMS; thus, "spurious" MAVs will be biased toward sequence contexts that are preferentially damaged by EMS.

MAVs did not exhibit greater levels of strand bias than biallelic SNVs, and "empirical" MAVs occurred in higher-complexity sequence than "spurious" MAVs identified at randomly sampled sites #link(<fig-s1>)[Supplementary Fig. 1].
We hypothesize that nearly all spurious MAVs occur due to alignment errors in low-complexity, repetitive regions of the genome.

// === Multi-allelic mutations don't appear to be artifacts


// First, we calculated the strand bias at candidate MAVs, and found that empirical MAVs did not exhibit greater strand bias than MAVs identified using randomly-sampled SNVs (Chi-square contingency $p = 1$).
// MAVs could also arise because alignment tools (e.g., `bwa mem`) struggle to map reads to low-complexity, repetitive sequence, and introduce base mismatches in the process. 
// To check if this might be the case, we first extracted the nucleotide context surrounding every SNV in the dataset, including both MAVs and biallelic SNVs.
// the Shannon entropy of the sequence context surrounding every SNV in the dataset, including both MAVs and biallelic SNVs. 
// Overall, the sequence context surrounding multi-allelic mutations is no less complex than the context surrounding biallelic mutations.

// Moreover, MAVs at randomly-sampled SNVs occur at sequences with lower sequence complexity than "true" MAVs.
// This result strongly suggests that "false-positive" MAVs are driven by alignment artifacts at simple repeats/homopolymers, while "empirical" MAVs are driven by something else.


// === Differences in sequencing technologies don't appear to explain differences in MAV abundance

// Most of the strains we analyzed (_n_ = 850) were originally sequenced using the Illumina HiSeq 2000 system, while the rest (_n_ = 235) were sequenced using the HiSeq X10 system.
// We considered the possibility that these two platforms might exhibit different error modes; and if MAVs were driven by sequencing errors, we might find fewer MAVs using either platform.
// It is somewhat challenging to compare the MAVs identified using either platform, because strains were not randomly assigned to one of the two sequencing platform. 
// For example, all of the _polk-1_ KO strains treated with MMS were sequenced on the HiSeq 2000; if MMS-derived lesions are less likely to be repaired in these strains, we'd expect to see more MAVs in strains sequenced on the HiSeq 2000.
// Only _n_ = 35 combinations of genotype, mutagen, and mutagen concentration were sequenced on both platforms.
// Regardless of which genotype background or mutagen was used, however, we would expect that MAVs identified using either sequencing platform would be supported by similar numbers of sequencing reads.
// Indeed, MAVs identified using the X10 platform are supported by similar fractions of reads as those identified on 2000 (_p_ = 0.87).
// Additionally, when we controlled for sequencing platform by limiting our analysis of MAVs to only those strains sequenced on the X10 platform, we observed similar enrichment of MAV counts and read support over the background expectation.

=== All tested alkylating agents create multi-allelism

Using our stringently filtered MAV callset, we measured the degree to which different genotoxins induced multi-allelic variants.
Compared to the null expectation, MMS caused the greatest enrichment of MAVs in #cel, followed by DMS and EMS.
It is challenging to attribute these differences in MAV enrichment to the characteristics of specific mutagens, however (see *Discussion*). 
#vlk also note that they observed significant batch effects when treating worms with EMS. 
// As discussed below, if EMS happens to cause greater F1/F2 lethality than MMS or DMS, #vlk would have sequenced fewer (or a less diverse) population of F1 offspring, limiting our ability to detect MAVs.
// We discuss some other challenges of identifying and interpreting MAV enrichments in the *Discussion.*

#figure(
  image("fig/Figure 4.png", width: 60%),
  caption: [*Enrichment of MAVs after treatment with three alkylating agents.*
  Using N strains treated with DMS, EMS, or MMS, we calculated the number of SNVs at which we observed 3 or more reads supporting a multi-allelic variant (MAV).
  The total number of MAVs we identified in strains treated with a given mutagen is shown as a vertical dotted line.
  In each of 100 trials, we then randomly sampled $M_i$ biallelic sites from every strain $i$ (where $M_i$ is the number of SNVs observed in strain $i$) from the complete callset of 135,348 SNVs.
  In each trial, we calculated the total number of MAVs we identified across all strains.
  The distribution of these "spurious" MAV counts across 100 trials (using strains treated with the specified mutagen) is shown as a blue histogram.
  
]
)

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

=== A simple model of transgenerational DNA damage

Convinced that these multi-allelic mutations were "real" sequence variants, we next considered how they might occur.
Let's first assume that genotoxin treatment occurs at the young adult stage (YA) in a P0 animal (other mutagens were administered at different larval stages).
In #cel hermaphrodites, spermatogenesis and oogenesis occur in sequence; spermatogenesis begins at the fourth larval stage (L4) and completes at the YA stage, while oogenesis begins at YA and continues through adulthood (cite).
Thus, in YA animals, all sperm are mature gametes that will not undergo mitosis before fertilizing an oocyte.


#figure(
  image("fig/Figure 5.png", width:90%), caption: 
  [*Lesions must persist until the $P_4$ cell stage in an F1 to create multi-allelism.*
  In this toy diagram, we track the fate of a single lesion-containing DNA strand during the first few cell divisions of #cel embryogenesis.
  An F1 zygote might be fertilized by a sperm cell or oocyte that harbors a DNA lesion (shown as a red triangle) on either the forward or reverse strand (the probability of a lesion occurring on both strands at the same nucleotide is very small).
  If translesion synthesis polymerases pass over that lesion without incorporating an incorrect base, the lesions could feasibly persist into either the AB or $P_1$ cell (the two products of the first embryonic cell division).
  If the lesion-containing strand continues to be inherited by germline progenitor cells ($P_2$, $P_3$, and $P_4$) without being removed by repair machinery, it could template the incorporation of multiple unique derived alleles in mature gametes.
  Critically, if the lesion-containing strand is inherited by the AB cell or any of the non $P$-lineage germline progenitors, it may screate multi-allelism in somatic cells, but not in the gametes produced by this F1.
]
)<fig-5>

Let's next imagine that in a mutagenized P0, a single haploid sperm cell harbors a DNA lesion on a single strand.
After that sperm cell fertilizes an oocyte, what are the chances its lesion would persist long enough to create multi-allelism in this F1's gametes?
To answer this question, we can take advantage of the fact that the #cel developmental lineage is completely resolved @Sulston1977-gh @Sulston1983-zz.
All #cel gametes are derived from a single germline progenitor cell called $P_4$.
The $P_4$ cell divides to create $Z_2$ and $Z_3$, which localize to the gonad and give rise to all eventual gametes @Hubbard2005-ky.
At minimum, in order to generate gametic mosiacism, a lesion-containing strand would need to segregate into the $P_4$ cell without being repaired.
If it segregates into a somatic precursor cell, the lesion-containing strand may serve as a template for incorrect bases; but these bases will only exist in the soma.
If the lesion serves as a template for an incorrect nucleotide, but is repaired prior to the $P_4$ cell division, only a single incorrect base has a chance to exist in the germline and the offspring of the F1 will appear to be biallelic (@fig-5).

We believe that this simple model, in which a lesion-containing strand persists for at least four embryonic cell divisions, explains the presence of MAVs in the #vlk dataset.

== Discussion

In this analysis, we demonstrate that genotoxin treatment creates DNA lesions that persist from generation to generation in #cel nematodes.
In line with recent results @Wang2023-lg, we find that transgenerational DNA damage can produce a measurable phenotype (here, the presence of multi-allelic variation) in the offspring of a mutagenized animal.
Our work provides a foundation for future analyses of transgenerational DNA damage inheritance, and suggests a number of new questions.

=== How likely is gametic mosaicism due to inherited lesions?

The probability that a DNA lesion occurs on both strands at the same nucleotide in a P0 gamete (or, that it occurs at the same nucleotide in both gametes) is extremely small.
Thus, we can safely assume that a given MAV is caused by the presence of a single lesion (from either the paternal or maternal germline) in a fertilized zygote.
We can also estimate the probability that a lesion-containing strand would persist until the $P_4$ cell stage and template mosaicism in an F1's gametes.
Assuming the lesion evades DNA repair machinery during each cell cycle, there is a 50% chance the lesion-containing strand will be inherited from a zygote to the $P_1$ cell, a 50% chance it will be inherited from $P_1$ to $P_2$, and so on (@fig-5).
Thus, the probability that a lesion is inherited by the $P_4$ cell (conditional on its persistence to that cell stage) is simply $0.5^4 = 0.0625$.
Lesion segregation in the early zygote is stochastic, depending partly on the vagaries of Mendelian segregation.

=== Missing MAVs due to the duration of lesion segregation

Because the descendants of the $P_4$ cell, known as $Z_2$ and $Z_3$, exclusively give rise to germ cells @Hubbard2005-ky, a lesion could create gametic mosaicism by serving as a template for incorrectly incorporated nucleotides during the later stages of germ cell development.
These "late" MAVs would be present in correspondingly fewer mature gametes, and might therefore escape detection by sequencing a small number of pooled F2s (or subsequent offspring). 
Conversely, if a lesion is rapidly repaired during embryogenesis, it might generate _de novo_ mutations that appear biallelic in subsequent generations. 
For example, if a lesion is incorrectly bypassed by TLS polymerase during the $P_3 #sym.arrow P_4$ cell division, a lesion-mutation duplex would be present in the $P_4$ cell (@fig-5). 
But if the lesion is repaired or removed during the next cell cycle, the gametes produced by that worm would only contain one of two alleles, and its offspring would appear to be biallelic (@fig-5).

=== Missing MAVs due to survival bias
MAVs might also be invisible due to the strength of genotoxin treatement. If a P0 animal were treated with an extremely high dose of mutagen, the F2 progeny of a heterozygous F1 could exhibit very high embryonic lethality.
If an F1's gametes are mosiac for multiple derived alleles at a given site, fewer F2 progeny provide us fewer opportunities to observe a "third" or "fourth" allele at a given site.
In other words, MAV detection is complicated by survival bias; high mutagen doses create more lesions, and these lesions might generate multi-allelic variation, but those multiple alleles may not segregate into living offspring.
Ultimately, then, our ability to detect MAVs is dependent on at least three distinct factors: 1) the random segregation of lesion-containing strands into somatic or germline progenitors, 2) the efficiency of lesion repair in the early embryo (i.e., the duration of lesion persistence), and 3) the relative fertility of the F1 and its progeny following mutagen exposure.



=== What mechanisms likely lead to multi-allelism?

As suggested in previous studies of lesion segregation @Aitken2020-fy @Anderson2024-fl, we hypothesize that multi-allelic variants arise from error-prone replication over persistent lesions.
In #cel, translesion synthesis is the preferred method for DNA damage bypass in the early embryo @Roerink2012-ow.
Roerink _et al._ (2012) hypothesize that TLS, as opposed to error-free repair via nucleotide excision repair (NER), is preferred when the rate of cell division is high (as it is in the early embryo).
The early embryo simply does not have time to perform NER, and rapid TLS bypass is preferred.
What's more, #cel suppress DNA damage checkpoint activation during the first few embryonic cell divisions, and rely on TLS polymerases to prevent replication fork collapse @Holway2006-pd.
The same appears to be true in _Xenopus_ and _Drosophila_ @Lo-Furno2022-zq @Kermi2015-nd, suggesting that the rapidly dividing early embryo is unable to perform proper quality control and instead relies on TLS to bypass DNA damage that would otherwise stall the cell cycle @Ohkumo2006-em.



=== Do some mutagens create more persistent lesions?

Compared to a null expectation, we observed that certain mutagens led to a greater enrichment of MAVs than others.
Despite causing the highest number of mutations per unit dose (@fig-2), EMS treatment led to a relatively modest enrichment of MAVs.
Without additional experimental data, it is difficult to conclusively say whether genotoxins like DMS are more potent engines of multi-allelism, or create longer-lasting DNA lesions.
As discussed above, our ability to detect MAVs relies on both the segregation of lesion-containing strands into germline progenitors, as well as the lethality induced by the mutagen itself.
For example, mutagens like EMS almost exclusively create C #sym.arrow T mutations, and often generate premature stop codons, strong loss-of-function, and null alleles @Kutscher2014-ei.
EMS mutagenesis may therefore prove more lethal to F2+ progeny, limiting our ability to sequence the full complement of _de novo_ alleles present in an F1's germline.
While we likely failed to observe many of these large-effect alleles due to survivor bias (any worms with lethal null alleles were not sequenced), we did find that EMS-derived SNVs occurred at more conserved nucleotides in the #cel genome (#link(<fig-s2>)[Supplementary Fig. 2]).

Moreover, our analysis in this manuscript deals only with single-nucleotide mutations;  many of the mutagens we analyze also create insertions, deletions, and larger structural variants.
Certain mutagens are more likely to generate null alleles via these types of mutations, potentially leading to even greater F2+ lethality and a reduced ability to detect MAVs.
Future work may be able to uncover the relative amounts of multi-allelism generated by different mutagens.

=== Implications for sex-biased mutagenesis

The #vlk dataset is extremely powerful, though it leaves one important question untested: are lesions more likely to be inherited from sperm or egg cells?
Wang et al. (2023) @Wang2023-lg hypothesize that the compacted chromatin architecture of #cel sperm @Marchetti2007-rh render them incapable of repairing damage caused by ionizing radiation. 
Indeed, prior work has shown that mature #cel sperm have a limited ability to respond to DNA damage, including oxidative stress @Smith2013-is.
In this study, we analyzed mutagens that were applied to P0 hermaphrodites at the young adult (YA) stage of development.
At this time point, #cel spermatogenesis is complete (having begun at the early L3 stage and ended at late L4), and mature sperm will not undergo any additional cell divisions before they fertilize F1 zygotes @Hubbard2005-ky.
Oocytes, on the other hand, begin oogenesis after spermatogenesis and continually divide into adulthood. 
As a result, it seems quite likely that most MAVs are caused by persistent lesions inherited from #cel sperm, as these lesions will not have had an opportunity to be repaired prior to zygote fertilization.
Supporting this hypothesis, Wang _et al._ reported embryonic lethality in the offspring of males irradiated at the late L4 stage, but not in the offspring of males irradiated at the late L3 or early L4 stage @Wang2023-lg. 
Future experiments, in which male and "feminized" hermaphrodites are separately mutagenized, could provide insight into the relative ability of sperm and oocytes to repair DNA lesions caused by alkylating agents.

=== Implications for human _de novo_ mutagenesis

A recent study of human germline _de novo_ mutation (DNM) reported a positive correlation between maternal age and the number of DNMs on paternal haplotypes @Gao2019-yg. 
This unexpected result has been attributed to mutations that occur during early embryogenesis; because the early human zygote relies on maternally-deposited machinery to replicate and repair DNA, older oocytes may contribute more defective machinery @Braude1988-hc @Dobson2004-ks @Zhang2009-am @Wong2016-un @Gao2019-yg.
Our results demonstrate that in #cel, DNA damage is passed down from gametes to the early zygote, providing a pool of lesions that must be repaired during embryonic development.
Thus, transgenerational DNA damage — which is improperly repaired by maternally-deposited machinery — may be an underappreciated source of human _de novo_ mutations, and possibly even multi-allelic mosaicism in human tissues.
=== What about indels and SVs?

Finally, we note that multi-allelic SNVs are not the only kind of multi-allelism that might be caused by a persistent lesion. 
#vlk demonstrated that certain genotoxins create a diverse range of DNA mutations, from SNVs and multi-nucleotide variants to insertions, deletions, tandem repeat expansions, and larger structural variants. 
Here, as a proof of concept, we focused on three alkylating agents that predominantly generate SNVs. 
Using long-read sequencing technologies, like the PacBio and Oxford Nanopore Technologies platforms, as well as new technologies that enable accurate sequencing in low-complexity regions of the genome, like Element Biosciences, we can begin to investigate the myriad consequences of persistent lesions on other kinds of DNA mutation.
For example, a persistent lesion might template the incorporation of two unique SNV alleles, as well as a small deletion; or an SNV allele and two unique indels; and so on.

== Acknowledgments

We thank Drs. Bettina Meier and Anton Gartner for assisting with data access, and Dr. Gartner for helpful feedback on our initial findings as well as an early draft of the manuscript. We also thank members of the Quinlan Lab for helpful discussions and brainstorming. We thank funding CHPC.


== Materials and Methods

=== Data and code availability
No new data were generated as part of this study. 
All sequencing data are available on the European Nucleotide Archive and all single-nucleotide variant calls are available in the Supplementary Material of #vlk @Volkova2020-gt.
We have deposited a Snakemake pipeline that can be used to reproduce all data processing, statistical analysis, and figure generation. 

=== Processing sequencing data from Volkova et al. (2020)

We downloaded FASTQ files for all relevant strains from the European Nucleotide Archive (ENA) using the `fasterq-dump` utility (SRA tools v3.4.1):

```
fasterq-dump -e 4 -p -O /path/to/fastq/dir/ -o $sample_prefix $accession
```

We then filtered the reads (adapter trimming, quality filtering, length filtering, etc.) with FASTP v0.20.1 @Chen2018-ps, using the following command:

```
fastp --in1 $fq1 \
      --in2 $fq2 \
      --out1 $fq1_out \
      --out2 $fq2_out \
      --thread $threads \

```

We aligned the cleaned FASTQ files to the WBcel235/ce11 build of the #cel reference genome (downloaded from the UCSC Genome Browser) via `singularity` using the NVIDIA Parabricks `fq2bam` utility (v4.6.0) on a NVIDIA H100 GPU, which produced sorted, duplicate-marked BAM files:

```
singularity exec --cleanenv \
        --nv \
        -H $SINGULARITYENV_TMPDIR \
        --bind $(pwd):/workdir \
        --bind $(pwd):/outputdir \
        --pwd /workdir \
        /path/to/parabricks.sif \
        pbrun fq2bam \
            --ref $ref \
            --in-fq $fq1 $fq2 \
            --out-bam /path/to/output.bam \
            --read-group-sm $sample_name \
            --read-group-lb lib1 \
            --read-group-pl ILLUMINA \
            --read-group-id-prefix $sample_name \
            --memory-limit $mem_gb \
            --tmp-dir /path/to/tmpdir \
            --bwa-options="-K 10000000" \
            --bwa-nstreams $n_streams \
            --bwa-cpu-thread-pool $n_cpus
```

// We called single-nucleotide variants (SNVs) in each genotoxin-treated strain via `singularity` using the NVIDIA Parabricks implementation of DeepSomatic (v4.6.0) on a NVIDIA H100 GPU.
// Each genotoxin-treated strain was treated as the "tumor" sample, and an untreated control strain (specified in Volkova et al. ) was treated as the "normal" sample.

// ```
// singularity exec --cleanenv \
//         --nv \
//         -H $SINGULARITYENV_TMPDIR \
//         --bind $(pwd):/workdir \
//         --bind $(pwd):/outputdir \
//         --pwd /workdir \
//         /path/to/parabricks.sif \
//         pbrun deepsomatic \
//             --ref /path/to/ref \
//             --in-tumor-bam /path/to/tumor/bam \
//             --in-normal-bam /path/to/normal/bam \
//             --out-variants /path/to/output/bam \
//             --tmp-dir /path/to/tmpdir \
//             --num-cpu-threads-per-stream $n_threads \
//             --num-streams-per-gpu $n_streams \
//             --bwa-nstreams $n_streams \
//             --bwa-cpu-thread-pool $n_cpus
// ```


// We applied the following filters to the SNV calls:

// + variant `FILTER` must be `"PASS"`
// + fraction of reads supporting the ALT allele >= 0.2
// + number of reads supporting the ALT allele >= 5

We downloaded single-nucleotide variant (SNV) VCF files for every strain (called with respect to the WBcel235/ce11 reference) from the Supplemental Material of #vlk.
We performed additional filtering on these SNV calls by removing any SNVs that overlapped regions annotated by RepeatMasker ().
After filtering, we retained a total of 68,900 SNVs.

=== Identifying multi-allelic variants <sec-identifing-mavs>

At every SNV in a particular strain, we used `pysam` to query the strain's BAM file at the variant position.
We counted the number of sequencing reads that supported a particular single-nucleotide allele at each site, excluding the following:

#align(left)[
+ reads with mapping quality < 60
+ bases with Phred-scaled base quality < 20
+ improperly paired reads
+ read pairs aligned to different chromosomes
+ supplementary alignments
+ secondary alignments
+ bases within 5bp of the aligned start or end coordinate of a read
]

Although we marked duplicates during alignment, we additionally removed all reads that shared the same aligned start and end coordinates.
We also required all 

We also measured the strand bias at all SNVs. 


=== Calculating the expected number of multi-allelic variants

To determine whether we identified more MAVs than expected given the background rate of Illumina sequencing error, we took a simple random sampling approach.
For a given strain $i$ with $M_i$ SNV mutations, we took a random sample of $M_i$ mutations from the entire collection of $M$ SNVs (without replacement, and excluding the strain of interest). 
We then searched for evidence of multi-allelic variants at these random SNVs using the focal strain's BAM file, as described #link(<sec-identifing-mavs>)[above]. 
At these randomly-sampled SNVs, we considered any read that passed the above filters and supported a non-reference allele to be evidence of multi-allelic variation.
#pagebreak()

#bibliography("Paperpile - References - Jun 5.bib", style: "plos")

#include "supp.typ"
