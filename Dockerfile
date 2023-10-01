# Use an official Python runtime as a base image
FROM python:3.10

# Metadata as labels
LABEL org.opencontainers.image.source="https://github.com/walkingwormfood/ComfyUI/"
LABEL org.opencontainers.image.description="ComfyUI Stable Diffusion backend and GUI"
LABEL maintainer="walkingwormfood"

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install any needed packages specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 8080 for the application
EXPOSE 22 8080 8188

# Define environment variable for your application
# ENV SOME_ENV_VARIABLE some_value

# Run the command to start your application
CMD ["python", "./main.py", "--listen", "0.0.0.0"]
