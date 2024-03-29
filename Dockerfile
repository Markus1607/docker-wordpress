FROM wordpress:latest

COPY . /var/www/html/


# Run the below command to build the current image with tagname: 'wp-image'
# docker build -t 'wp-image' .

# Run below command in the terminal to start the mysql container docker build -t 'wp-image' .
# docker run --name mysql-cont -e MYSQL_ROOT_PASSWORD=qwerty -d mysql:5.7


# Run the command to create a volume on your machine for data-persistence even when the container is deleted.
# This is incase you ever stop the component locally i.e docker compose down. It will still persist in volume.
# docker volume create my-vol(This is the name of your volume)

# Run the below file to start your wordpress image linking to your volume.
# docker run --name wp-container -v my-vol:/var/www/html/wp-content --link mysql-cont:mysql -p 8000:80 -d wp-image

# You can now successfully access wordpress locally by visiting localhost:8000 on your machine


#docker rm $(docker ps -a -q)  remove stopped containers
#docker stop $(docker ps -a -q) stop running containers
#docker rmi $(docker images -q) -f remove all existing images
