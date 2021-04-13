#----------- Jekyll Build ------------
cd front-end
bundle exec jekyll build



#----------- Maven Build ------------
cd ..
mvn package


#----------- Docker Destroy ------------
# stop all running containers
docker stop $(docker ps -a -q)

# delete all stopped containers
docker rm $(docker ps -a -q)

# delete all images whose containers are stopped
docker system prune -a


#----------- Docker Build ------------
# build new image
docker image build -t springsecurity-jekyll .

# run new container from image
docker container run --name springsecurity-jekyll-container -p 8081:8080 -d springsecurity-jekyll