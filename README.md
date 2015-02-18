# docker-warrick
A [docker](https://www.docker.com/) container to run [Warrick](https://code.google.com/p/warrick/) - a utility for reconstructing (or recovering) a website when a back-up is not available.

# Dependencies
Docker-warrick requires the `docker` environment to run. `sudo apt-get install docker` should be sufficient for acquiring the environment.

# Building the image
Before running docker-warrick, the image must first be built. This can be accomplished by first acquiring the source code:

``git clone https://github.com/machawk1/docker-warrick``

...then instructing docker to build the image while in the root directory of the repository's data:

``docker build -t="mkelly/warrick" .``

In the future, this step will be unnecessary once the image is posted to the [Docker registry](https://registry.hub.docker.com/).

# Running Docker-Warrick
To run the image built, run:

``docker run -it mkelly/warrick``
