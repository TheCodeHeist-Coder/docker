
#! Not OPtimized///
# Base Image
# FROM node:22-alpine   

# # in which dir, this project will be opened...
# WORKDIR /app


# # Copy the fields 
# COPY . .

# # Run a specific command...
# RUN npm install


# # expose the port
# EXPOSE 4000

# # Final command that run when running the container
# CMD [ "node", "index.js" ]


#! Optimized....

# Base Image
FROM node:22-alpine   

# # in which dir, this project will be opened...
WORKDIR /app


# # Copy the fields  and run npm
COPY ./package.json ./package.json
COPY ./package-lock.json ./package-lock.json
RUN npm install

COPY . .

# # expose the port
EXPOSE 4000

# # Final command that run when running the container
CMD [ "node", "index.js" ]

