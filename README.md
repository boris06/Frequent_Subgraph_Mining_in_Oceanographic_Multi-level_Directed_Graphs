# Frequent Subgraph Mining in Oceanographic Multi-level Directed Graphs

This package contains R and Python scripts and data for generating and visualizing n-subgraphs, n-convergences, n-divergences and n-paths. The package was developed under Windows 10.

## Prerequisites

* R project - in this project the version 3.3 was used due to the igraph0 library, which is deprecated. In case of problems, copy the subdirectory R/igraph0 library directly under the directory C:\Users\...\Documents\R\win-library\3.3. The package FrequentSubgraphMining (https://www.csc2.ncsu.edu/faculty/nfsamato/practical-graph-mining-with-R/R-code/FrequentSubgraphMining.zip) is also needed.
* Python (version >= 2.7) with the following libraries: matplolib, shapely, basemap,glob, zipfile and os 

## Package description

### Scripts

#### R (subdirectory "R")

* prepare_gspan_input.R - generates the file "input.g" which contains the input data for the gSpan algorithm. The input is based on multi-level directed graphs (subdirectory data/multilevel_graphs) and the selected discretization of edges weights in the mentioned graphs.
* the batch files gspan.bat, gspan_divg_convg.bat and gspan_path.bat, respectivelly,  are used to generate gSpan output files for n-subgraphs, n-divergences, n-convergences and n-paths (files output.g, output_divg_convg.g and output_paths.g).
* process_gspan_output.R, process_gspan_output_divg_convg.R and process_gspan_output_paths.R produce subgraphs as .gml files in subdirectory data/subgraphs for n-subgraphs, n-divergences, n-convergences and n-paths.

#### Python (subdirectory "Python")

* show_igraph_fsm.py, show_igraph_fsm_divg_convg.py, show_igraph_fsm_paths.py are used for the visualization of .gml files for n-subgraphs, n-divergences, n-convergences and n-paths.

### Datasets (subdirectory "data")

#### multilevel_graphs

This subdirectory contains multi-level directed graphs, which are the result of the methodology described in https://www.sciencedirect.com/science/article/pii/S0957417413001541.

#### gspan

* gSpan input and output files

#### subgraphs

* n-subgraphs, n-divergences, n-convergences and n-paths in the form of .gml files, produced by R scripts above 

#### vertices

* the geometric properties of the graphs, needed for drawing

### Running the scripts

The following diagram shows the sequence of running the scripts:

![Process diagram]

[Process diagram]: Process_diagram.png "Process diagram"




