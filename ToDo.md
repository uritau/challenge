
# How to create the images

sudo docker build -t intelygenz/mongo . -f Dockerfile-mongo
sudo docker build -t intelygenz/app . -f Dockerfile-app

# How to run the images
sudo docker run -it -e MONGO_INITDB_ROOT_PASSWORD=DESIREDPASSWORD -p 27017:27017 intelygenz/mongo
sudo docker run -ti -e MONGO_URI="mongodb://admin:DESIREDPASSWORD@localhost/intelygenz" -p 8080:8080 intelygenz/app:latest

# Security considerations
* Don't use the `Dockerfile-mongo` file without passing, as argument, the environment var `MONGO_INITDB_ROOT_PASSWORD` to enable password.

# Pending on MVP
* Add passwords to MongoDB (and on app too)
* Add persistent volume to MongoDB 
* App/Mongo versioning images