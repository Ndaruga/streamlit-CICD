# Use Python image as the base image
FROM python:3.11-slim-bullseye

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file to the container
COPY requirements.txt .

# Install the dependencies using conda and pip
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh
RUN bash ~/miniconda.sh -b -p /opt/conda
ENV PATH="/opt/conda/bin:$PATH"

RUN conda install -c conda-forge hdbscan &&
RUN pip install -r requirements.txt

# Copy the rest of the files to the container
COPY . .

# Expose the port that streamlit uses
EXPOSE 8501

# Define the command to run the streamlit app
CMD ["streamlit", "run", "app.py"]


