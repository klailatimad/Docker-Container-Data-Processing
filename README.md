# Docker-Container-Data-Processing

## This code was built as a mini-project for the WeCloudData Data Engineering bootcamp Lecture #3 - Docker & Docker Compose.

### Business Scenario:
Creating a Docker Container for data processing.  

### Business Requirements:
- Download the data from the mini-project guide.
- Concatenate the downloaded files into one final csv file, called all_years.csv. 
- Upload your scripts and final csv file all_years.csv to the repository you created in the Github. 

### Deliverable:
In the file, there are 2 folders (input and output) and 1 python script. There are 2 csv files (t1 and t2) in the input folder.
What you need to do is create a image to generate a container, in the container, you will:
- Use the python script to read the data from input folder.
- Write the result data into output folder.
- The python script is in the container.
- The input and output folder is in the host, in another word, outside the container. What you need to do is to mount the 2 folders from host to the container.
- Try to make container running first, and then run python script. This means when you use docker run to start up the container, the python script will not run. The python script only runs when you give container an order with command docker exec.
- The python script is ready to use and you don't need to change it. But if you want, you can change the script for your requirements.
