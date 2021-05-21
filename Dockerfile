
FROM ubuntu


# Copy the current directory contents into the container at /app
COPY . /app

ARG LAST_COMMIT_INFO
RUN echo ${LAST_COMMIT_INFO}
RUN echo ${LAST_COMMIT_INFO} > last_commit.txt

# Run app.py when the container launches
# CMD ["python", "app.py"]

# Set proxy server, replace host:port with values for your servers
ENV http_proxy host:port
ENV https_proxy host:port

