# # FROM ubuntu:bionic
FROM snappypy27

# Copy function to a path
RUN mkdir -p /var/snapy_dir
COPY . /var/snapy_dir/

# Work Directory
WORKDIR /var/snapy_dir/

RUN wget https://download.esa.int/step/snap/8.0/installers/esa-snap_sentinel_unix_8_0.sh`
RUN bash esa-snap_sentinel_unix_8_0.sh

# Build context
# ADD app.py src /
# CMD ['python', "main.py"]

ENV PYTHONUNBUFFERED = '1'
# Upgrading pip
RUN python -m pip install pip --upgrade
RUN python -m pip install wheel

# Install dependencies for tiling
RUN pip install -r requirements.txt
