# use the official nginx image from the docker hub
from nginx:latest

# copy the built React app from the build context to the nginx html directory
copy build /usr/share/nginx/html

# expose port 80 to the outside world
expose 80

# start nginx server
cmd ["nginx", "-g", "daemon off;"]
