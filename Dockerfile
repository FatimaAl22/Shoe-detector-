FROM python:3.10

# Creat the working directory
WORKDIR /app

#Copy requirments
COPY requirements.txt ./requirements.txt

#install dependencies
Run pip install --no-cache-dir -r requiremnets.txt

Copy model/ ./model
COPY . ./

# Expose the Flask port
EXPOSE 8000

# Set the environment variable
ENV PYTHONPATH=/app

#Run the app
CMD ["python", "app.py"]
