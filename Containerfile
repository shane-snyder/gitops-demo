# Use Red Hat Universal Base Image (UBI)
FROM registry.access.redhat.com/ubi8/ubi

# Install Python and pip
RUN yum install -y python38 python38-pip && \
    yum clean all

# Install Flask
RUN pip3 install Flask

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the Flask app to the container
COPY app.py .

# Tell Docker to expose this port
EXPOSE 5000

# Command to run the Flask app
CMD ["python3", "app.py"]

