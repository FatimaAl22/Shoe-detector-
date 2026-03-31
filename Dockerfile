FROM python:3.10

# Creat the working directory
WORKDIR /app

# Copy all files
COPY . .

#install dependencies
Run pip install --no-cache-dir -r requiremnets.txt

# Expose the Flask port
EXPOSE 10000

# Set the environment variable
ENV PYTHONPATH=/app

#Run the app
CMD ["gunicorn", "app:app", "--bind", "0.0.0.0:10000"]





