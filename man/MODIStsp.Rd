% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/MODIStsp.R
\name{MODIStsp}
\alias{MODIStsp}
\title{MODIStsp}
\usage{
MODIStsp(gui = TRUE, options_file = NULL, spatial_file_path = NULL,
  scrollWindow = FALSE)
}
\arguments{
\item{gui}{logical parameter (TRUE: the GUI is opened before processing; FALSE: the
saved parameters are retrieved from "options_file")}

\item{options_file}{settings (optional): full path of the JSON file containing the
processing options (default: MODIStsp_Previous.json in subdir Previous);}

\item{spatial_file_path}{(optional): full path of a spatial file to use as extent
(default=NULL): if defined, the processing options which define the extent, the
selected tiles and the "Full Tile / Resized" options are not considered; instead, new
files are created on the extent of the provided spatial file.}

\item{scrollWindow}{(optional) logical parameter: if TRUE, the GUI window is opened
fullscreen with scrollbars (this is useful on devices with small display). If using a
device with a display resolution >= 1024x768, leaving this parameter to FALSE is
suggested.}
}
\description{
Main function for the MODIS Time Series Processing Tool (MODIStsp)
}
\details{
The function is used to initialize the processing (folder names, packages,
etc.), to launch the GUI (MODIStsp_GUI) and receive its outputs, and to launch the
required routines for downloading and processing the requested datasets.
}
\note{
License: GPL 3.0
}
\examples{
# Running the tool without any option will start the GUI with the default or last used 
# settings
\dontrun{
MODIStsp()}

# Run the tool using the settings previously saved in a specific option file
\dontrun{
MODIStsp(gui = FALSE, options_File = "X:/yourpath/youroptions.json")}

# Run the tool using a previously saved options file,
# but editing it with the GUI before starting the processing
\dontrun{
MODIStsp(options_File = "X:/yourpath/youroptions.json")}

# Run the tool using the settings previously saved in a specific option file
# and specifying the extent from a spatial file
\dontrun{
MODIStsp(gui = FALSE, options_File = "X:/yourpath/youroptions.json",
  spatial_file_path = "X:/yourpath/yourspatialfile.shp" )}

# Run the tool in a batch mode, using the settings previously saved in a specific
# option file and specifying each time the extent from a different spatial file
\dontrun{
extent_list = list.files("X:/path/containing/some/shapefiles/", "\\\\.shp$")
for (single_shape in extent_list)
  MODIStsp(gui = FALSE, options_File = "X:/yourpath/youroptions.json",
    spatial_file_path = single_shape )}
}
\author{
Lorenzo Busetto, phD (2014-2015) \email{busetto.l@irea.cnr.it}

Luigi Ranghetti, phD (2015) \email{ranghetti.l@irea.cnr.it}
}
