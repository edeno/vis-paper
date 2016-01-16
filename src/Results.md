## Results

#### SpectraVis
Functional network analysis is a growing area of neuroscience research, driven in part by technological improvements allowing us to record from more sensors simultaneously. However, as researchers record from more sensors, network analyses can become unwieldy and hard to interpret, because the number of possible network connections scales quadratically with the number of sensors (e.g. electrodes). Further, we expect neural processes to form dynamic networks that vary over time, frequency, and spatial scales (e.g. within and between brain regions), adding complexity to network analyses.

SpectraVis is an interactive web-based visualization application that: (1) displays task-related functional networks over time and frequency, (2) compares individual and associative measures on sensor pairs (e.g. spectra, coherences), (3) compares different measures of association (e.g. correlation vs. coherence, binary vs. weighted networks), and (4) views networks at two spatial scales (sensor- and region-of-interest-level). The different modules of SpectraVis are dynamically linked, highlighting relationships between the metrics in response to user interaction.

[@fig:figure6] shows a typical view of SpectraVis. The network view shows the anatomical location of the sensors (circles with sensor number) and edges (lines) weighted by the edge statistic. In this example, the edges are binary, representing significant changes in local field potential coherence between *Speech* --- subjects reading aloud the words of the Gettysburg Address --- and *Silence* at a particular frequency (10 Hz) and time (187.5 ms after speech onset)[^1]. The network has dense connectivity within and between primary motor and primary somatosensory cortices (M1 and S1). The controls can be used to play a movie of the network over time, showing increased connectivity starting within M1 300 ms before speech onset and spreading to S1 100 ms before speech onset.

Below the network view is a sensor view (dotted box) which depicts the relationship (spectra, coherences) between a selected pair of sensors (circled in black, network view, sensors 85 and 90) at all times and frequencies. Here, the edge between M1 (sensor 90) and S1 (sensor 85) represents a 10 Hz increase in speech coherence relative to silence. The increase co-occurs with higher frequency beta (15-25Hz) power suppression on the M1 sensor. Mousing over these displays updates the network view to the time-frequency bin under the cursor.

![A static screenshot of the SpectraVis interface with the ECOG overt reading data.](figures/Figure6.png){#fig:figure6}

#### RasterVis
RasterVis incorporates two canonical visualizations for single and multiunit spiking data --- the raster plot and peri-event time histogram. The raster plot describes spike times for each trial relative to a trial event. The peri-event time histogram is a simple but useful summary of how, over a series of trials, the spike times are distributed across time bins relative to the time of a trial event. Because these two types of visualizations are familiar and represent the "raw" spiking data, they are an ideal building-block visualization. Furthermore, they can also be used to compare raw spiking data to model-generated data in order to check statistical modeling assumptions (posterior predictive checks) --- so they can be useful in understanding how models reflect the data.

RasterVis uses interactivity and animation to supplement the raster plot and peri-event time histogram in order to make it easier for the user to accomplish typical tasks in the analysis of spiking data (See [@fig:figure4] for a screenshot of the RasterVis interface).

For example, RasterVis allows for dynamic alignment of spike times and "on-the-fly" computation of peri-event histograms relative to experimental trial events (e.g. visual stimuli, timing of rewards, presentation of fixation points). Animated transitions emphasize how spike timing relative to trial event relates to another. This helps a user quickly compare the timing of individual spikes and aggregate spiking (via histogram) to different cues and conditions. Different levels of aggregation (Gaussian smoothing) for the histogram can be compared as well.

RasterVis also allows for dynamic sorting by experimental task factors. This feature creates different plots for each condition within the task factor. For example, if a task factor is a visual cue with two experimental conditions --- color and orientation --- sorting by the visual cue creates two plots for the color condition and the orientation condition. This is essential for multidimensional analysis which may compare several different factors and conditions.

Finally, RasterVis allows users to find and select neurons by subject, recording session, or name. This is useful for fast comparison between neurons, linking to other visualizations (other visualizations can directly link to a specific neuron by name via a parameter passed via the URL), and general exploratory analysis of the dataset.

![A static screenshot of the RasterVis interface.](figures/Figure4.png){#fig:figure4}

#### GLMVis
We also will build an interactive visualization for the generalized linear models that will: (1) show the relationship between the multiple dimensions of the model fit over time, (2) show the relationship between multiple models, and (3) show the relationship between multiple brain areas. To show the relationship between multiple dimensions, we will use the parallel coordinate plots [@wegman_hyperdimensional_1990].

[@fig:figure5] shows a prototype of the visualization, which we call glmVis.

![A static screenshot of the glmVis interface.](figures/Figure5.png){#fig:figure5}
