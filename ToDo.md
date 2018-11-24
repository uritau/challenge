
# How to create the images

sudo docker build -t intelygenz/app . -f Dockerfile-app

# How to run the image
sudo docker run -ti -e MONGO_URI="mongodb://USER:PASSWORD@MONGOHOST/intelygenz" -p 8080:8080 intelygenz/app:latest
