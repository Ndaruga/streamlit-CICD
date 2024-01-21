# Use Python image as the base image
FROM python:3.11-slim-bullseye

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file to the container
COPY requirements.txt .

# Install the dependencies using pip
RUN pip install -r requirements.txt

# Copy the rest of the files to the container
COPY . .

# Expose the port that streamlit uses
EXPOSE 8501

# Define the command to run the streamlit app
CMD ["streamlit", "run", "app.py"]


