# ChatApp

> You can see project `screenshots` in `doc/screenshots` folder.

## Setup with docker (suggested)

1. Install Docker in your OS. [Docker Installation](https://docs.docker.com/engine/install/) 

2. Go to root of project where `Dockerfile` file is exist.

3. Open terminal/bash or something and, Try to build project and its dependencies.
    ```shell
    docker-compose up
    ```
    Or add `-d` end of command for disable logs.
    ```shell
    docker-compose up -d
    ```
4. When its done. you can open `Project` on these URLs:     
    - `ChatApp Project`: [localhost:8000](http://localhost:8000/)
    - `ChatApp Admin Page`: [localhost:8000/admin/](http://localhost:8000/admin/)
        - Admin 1 `Username: "admin"` and `Password: "admin"`
        - Admin 2 `Username: "ehsan"` and `Password: "admin"`: 
    - `PostgreSQL` database admin: [localhost:5444](http://localhost:5444/)
        - `Email: "admin@admin.dev"` and `Password: "admin"`: 
        - Host name: `localhost` or your `local IP` address.


<br>
<hr>

## To setup project manually
> The project only work well in linux based systems. In this case we tested it in `Ubuntu LTS 20.04.1` OS. [Ubuntu Installation](https://ubuntu.com/download/desktop)

### Requirements
0. Install Redis

    ```shell
    sudo apt update && sudo apt upgrade
    ```

    ```shell
    sudo apt install redis
    ```
Check redis is up
    ```shell
    sudo systemctl status redis
    ```

1. Install python 3.5+

    ```shell
    sudo apt install wget build-essential libncursesw5-dev libssl-dev \
    libsqlite3-dev tk-dev libgdbm-dev libc6-dev libbz2-dev libffi-dev zlib1g-dev
    ```

    ```shell
    sudo add-apt-repository ppa:deadsnakes/ppa
    ```
    
    ```shell
    sudo apt install python3
    ```
    
    ```shell
    sudo apt install python3-pip
    ```

2. Install python requirements

    > You need to install these dependencies for run and build project.
        
    ```shell
    sudo apt-get install python3-dev default-libmysqlclient-dev build-essential libpq-dev python3-dev autoconf automake pkg-config libtool
    ```

3. Create virtual environment
    ```shell
    pip install virtualenv
    ```
    ```shell
    virtualenv venv
    ```

4. Activate virtual environment
    ```shell
    source venv/bin/activate
    ```

5. Install python used packages
    ```shell
    pip install -r requirements.txt
    ```

5. Run project
    ```shell
    python manage.py runserver
    ```
