gitlab-runner
=============

Container image of ``gitlab-runner`` (`home
<https://gitlab.com/gitlab-org/gitlab-ci-multi-runner>`_),
built on ``base-debian:latest`` (`github <https://github.com/multicast/base-debian>`_, `docker
<https://hub.docker.com/r/mkovac/base-debian/>`_). Main reason for basing it
on top of Debian is that I need to test lot of applications using standard
Debian packages and I can use it as a simple shared executor for many
projects in my own controlled environment.

This runner supports running sister-docker containers and thus the docker
executor, as well as shell executor. 
