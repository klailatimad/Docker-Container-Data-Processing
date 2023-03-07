# the image is base on the python:3.7 image
FROM python:3.8-slim-buster

#create a workfolder in the image to make sure all the works done in the folder
WORKDIR /app

# install pandas for the python script
RUN pip install pandas==1.3.5 

# add python script into the image or the copy command
ADD py_script.py .

#create container volume mounting to host dir so that the python script can read and write data from host
VOLUME /app/input
VOLUME /app/output

#create environment variables for python script
ENV INPUT_DIR='/app/input'
ENV OUTPUT_DIR='/app/output'

#make sure the container keep on running
CMD tail -f /dev/null  

# build docker image with 'docker build -t lab2 .'
# run the docker: 'docker run --rm -t -d -v $(pwd)/input:/app/input -v $(pwd)/output:/app/output lab2'
# find docker container id with 'docker ps'
# run the following command in docker exec to run the python script. python3:
# docker exec -it <docker image id> python3 <python script file name>
