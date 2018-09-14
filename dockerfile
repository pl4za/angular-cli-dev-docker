# Get Node image
FROM node:latest

# Add project to container
ADD . /app

# Set the working directory of the container
WORKDIR /app

# Make Angular CLI available in our DEV env.
RUN npm i -g @angular/cli

# Main command
ENTRYPOINT ["ng", "serve"]

# default flags
CMD ["--host=0.0.0.0"]