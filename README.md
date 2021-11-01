## START HERE
Clone the repository by using the command
```
git clone https://github.com/rheosai/proansible.git
```
Navigate into the folder proansible.
This folder consists of two folders
- install
- course
--------------------------------------------------------------------------------------------
The install folder is for the tutorial where you will install ansible from the command line.
Navigate into the install folder and type

```
docker-compose up -d
```

This will result in a single docker container with the following

NAME	|	OS	|	Purpose|
--------|---------------|--------------|
control	|	ubuntu	|	Ansible control host where we will install ansible|

username: ansible
password: password

You can then login to the control host using

```
ssh -p 4000 ansible@localhost
```

Once we finish some basics exercises installing and testing ansible, we will move to the course folder.
--------------------------------------------------------------------------------------------
The course folder is where all the main course files will be stored.
This is where we will spend most of our time.
