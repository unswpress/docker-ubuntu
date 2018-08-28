README.txt

Derived containers should clean up downloaded packages and remove the the 'apt-get update' package lists for space.

RUN apt-get -qy clean \
    && rm -rf var/lib/apt/lists/*
