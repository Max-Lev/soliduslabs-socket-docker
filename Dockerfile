# syntax=docker/dockerfile:1
FROM node:14
COPY . /server packge.json
RUN npm install
ENV GENERATE_SOURCEMAP=false
EXPOSE 3001
CMD ["npm", "start","--max-old-space-size=8192"]