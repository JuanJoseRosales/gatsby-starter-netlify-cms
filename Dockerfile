FROM node:10

RUN npm install -g gatsby-cli

# Setting working directory. All the path will be relative to WORKDIR
WORKDIR /usr/src/app

WORKDIR /usr/src/app/front-end

# Copying source files
COPY . .
RUN npm install
# Building app
RUN gatsby build

# Serve the app
ENTRYPOINT [ "gatsby", "serve" ]
