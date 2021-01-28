# osTicket-docker

## Description

This repository contains a very simple Docker image that can be used to
test **osTicket** installation and execution. For now, it is not intended
for production usage, just for tests.

## Build the image

To build this image you need to run the script **prepare.sh** to
download **osTicket** from **Github**.

```
$ bash prepare.sh
```

Once the requirements are ready, just run:

```
$ docker build . -t osticket
```

This should create the docker image.

## How to run it

To run the image, just run:

```
$ docker run -p 80:80 --name osticket osticket
```

Once it is running, osTicket will be available at **http://localhost/**.

To continue the setup, it will be necessary to have a running a **MySql** or 
**MariaDB** running with a database and user already created.

For more information, see the **osTicket** official documentation.

## License

All the contents of this repository is licensed under **BSD 2-Clause License**.
**osTicket** itself is licensed under **GNU General Public License v2.0**.

