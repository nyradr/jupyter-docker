#FROM jupyter/datascience-notebook
FROM jupyter/datascience-notebook

RUN conda update -n base conda
RUN conda install --yes jupyter_contrib_nbextensions
RUN conda install --yes jupyter_nbextensions_configurator
RUN conda install --yes jupyter_dashboards -c conda-forge
RUN conda install --yes ipywidgets
RUN conda install --yes pandas
RUN conda install --yes odfpy
RUN conda install --yes matplotlib
RUN conda install --yes seaborn
RUN conda install --yes plotly
RUN conda install --yes bokeh
RUN conda install --yes pyarrow

RUN jupyter nbextension enable spellchecker/main
RUN jupyter nbextension enable hide_input_all/main
