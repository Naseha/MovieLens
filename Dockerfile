# Use a Python base image (we'll assume you need Jupyter dependencies)
FROM python:3.9

# Set the working directory to where your notebook and files will be
WORKDIR MovieLens

# Copy necessary files
COPY requirements.txt . 
RUN pip install -r requirements.txt
COPY Project2-Movielens.ipynb .
COPY aext_assistant /app/aext_assistant

COPY aext_assistant /app/aext_assistant

# Install JupyterLab and any other dependencies
RUN pip install jupyterlab -r requirements.txt 

# Expose the port Jupyter Notebook typically uses
EXPOSE 8888

# Command to start Jupyter Lab 
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--allow-root"] 

