## Materials and Methods

### Design
A set of tools is only as useful as the number of people that can use them. We decided that each visualization should adhere to a set of design principles to make them maximally useful to both the users of the visualizations and developers of visualizations based on our toolkit. To that end, our approach is to create interactive visualizations that are:

1. **Shareable** --- so others can easily view the visualizations online or in print.
2. **Modular** --- so the visualizations can be used independently or linked together to provide an integrated view of an electrophysiological dataset.
3. **Extendable** --- so others can implement their own visualization algorithms and modify the visualizations for their own use.
4. **Configurable** --- so visualizations can dynamically display different datasets or be preset to a particular view state.

#### Shareable
To make the visualizations shareable, the visualizations were written with modern web technologies --- HTML, CSS, and Javascript. They can be deployed via a local or remotely hosted webserver and viewed with any modern browsers (Firefox 4+, Chrome 4+, Safari 4+, Opera 9.5+ and IE9+). As a result, the visualizations require no specialized software (beyond a browser) to view.

Users can share a particular state of the visualization using permanent links (permalinks) --- each visualization has a button which provides the URL containing the parameters necessary to generate the current view. For example, with `SpectraVis`, if you wanted to share a snapshot of the correlation network at a specific time (e.g. 100 ms after stimulus onset), clicking on the link button would provide a URL that could then be shared with colleagues.

Additionally, static visualizations can be saved for publication purposes. Each visualization includes a button to  download the current view of the visualization in scalable vector graphics (SVG) format. This format has the advantage that it can be resized without loss of resolution --- making it useful for both presentations and publications --- and can be imported into a graphics program of choice such as Inkscape or Illustrator for further modification. The New York Times, which frequently uses interactive graphics online and in print, has used this workflow  [successfully](http://chartsnthings.tumblr.com/post/47670081904/climate-change-crowbars-and-strikeouts).

#### Modular and Extendable
Each visualization is self-contained and works independently of the other visualizations. The visualizations can be selectively linked together by using the aforementioned permalinks --- which allow specification of a particular state of the linked visualization. For example, `GLMVis` might display a neuron's receptive field response to several experimental stimuli. By a simple modification of the code, this can be linked to the neuron's raster plot in `RasterVis` --- showing the spiking response of the neuron to each experimental stimuli.

The visualizations' internal code is also constructed modularly --- separating the internal visualization modules from data loading modules and from user interface elements such as buttons. Developers can import and export these modules selectively or make their own modules, making the visualization customizable to the developers' needs. For example, in `SpectraVis`, a developer might want to customize the layout of the correlation networks, spatially grouping nodes by brain area or some other metric. Constructing the code modularly allows a developer to implement this new layout without interring with the rest of the code internals.

Finally, each visualization has its own online software repository. The repositories are hosted on Github and can be downloaded and installed --- including all software dependencies --- using the node package manager (npm). This ensures the development tools, such as deploying a local webserver (allowing the user to view the visualization on their own computer without having to host it remotely), are included. This helps developers extending the visualizations to get started developing as quickly as possible. These repositories are also open-sourced under the [GNU General Public License (version 2)](http://www.gnu.org/licenses/old-licenses/gpl-2.0.en.html), meaning the code is available to anyone to use and develop as long as the code remains open-source.

#### Configurable
The visualizations are configurable in three ways: parameters can be passed through the URL, parameters can be preset using Javascript via the `init` function for each visualization, and data and data labels can be loaded using the JSON file format.

The JSON file format is a readable, XML-like format allows the visualization to dynamically display different datasets --- adjusting axes, labels, and the display for each dataset. The JSON files are required to be formatted with a specific structure, details of which can be found on the wiki for each visualization. Importantly, JSON files can be exported from MATLAB structures (using, for example, the open-source toolbox   [JSONlab](http://www.mathworks.com/matlabcentral/fileexchange/33381-jsonlab--a-toolbox-to-encode-decode-json-files-in-matlab-octave)) and Python --- providing an important bridge between commonly used analysis tools and the visualizations.
