## Discussion
We developed a novel interactive visualization toolkit for investigating electrophysiological data. This toolkit allows users to quickly explore raw data via `RasterVis` and intermediate analysis such as receptive fields and networks via `GLMVis` and `SpectraVis`. We believe these tools will be important going forward as electrode technology progresses and scientists form more complicated hypotheses.

#### Importance of Visualization for Open Neuroscience
Online interactive visualization tools such as ours may provide a way for quick exploration of datasets online --- enabling users to understand the datasets before performing more in-depth analyses. Indeed, the Allen Brain Institute --- which shares massive neuroscience datasets online --- makes extensive use of online visualizations to enable users to find the appropriate datasets. Because our tools encompass many common types of analysis for electrophysiological data, we hope our tools and future extensions can be used in a similar manner.

Sharing datasets is important because (1) it can help ensure the reproducibility of results, (2) it makes the data available for meta-analyses, (3) the data can be used as benchmarks for computational models, and (4) the data can be used in new ways, maximizing its utility [@poldrack_making_2014]. This is particularly important for datasets that are hard to collect, such as those from non-human primates.

One challenge for the sharing of datasets is providing users with a way to find the datasets they want. Datasets provided in numerical form in non-standardized formats are hard to navigate and limit the usefulness of sharing the data. As electrophysiology dataset sharing becomes more common, it will be important to have tools to do preliminary investigations of these open datasets.

#### Future Directions
As data formats for sharing electrophysiology are standardized, we would like to change our JSON data structures to match those formats in order to make visualizing data as simple as possible. Unfortunately, there is no dominant standard currently.

We would also like to provide additional "plugin" layout options for `SpectraVis`, `GLMVis`, and `RasterVis`. In particular, there are numerous open source network layouts such as [Group-in-a-box layouts](https://github.com/john-guerra/forceInABox), which clusters nodes according to group membership, and [edge bundling layouts](https://github.com/upphiminn/d3.ForceBundle), which group similar edges together --- all with the goal of improving understanding of the network structure. Likewise, with `GLMVis`, alternative views of the GLMs such as scatter plot matrices (SPLOMs) and  dimensionality reduction algorithms such as t-Distributed Stochastic Neighbor Embedding (t-SNE) [@vandermaaten_visualizing_2008] could help identify multivariate patterns in the data.

Finally, we would like to add more visualizations to the toolbox. Laminar electrodes, which have contacts spaced along the shank of the electrode and provide cortical layer information, pose an interesting challenge in terms of incorporating the extra dimension of depth information. As more studies incorporate laminar electrodes, finding effective visualizations and filtering  of networks between different cortical layers, with the many possible associations between the layers, could be another good use case for interactive visualizations.

<--! Conclusion paragraph -->

#### Data Sharing

#### Acknowledgements
Dr. Gerwin Schalk, Dr. Peter Brunner, Dr. Earl K. Miller
