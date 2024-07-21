# Use Python 3.11 as base image
FROM python:3.11

# Set working directory inside the container
WORKDIR /app

# Copy all files from the current directory to /app in the container
COPY . .

# Install dependencies specified in requirements.txt
RUN pip install -r cicd_project/requirements.txt

# Run migrations for the Django project
RUN python cicd_project/manage.py makemigrations
RUN python cicd_project/manage.py migrate

# Expose port 8000 to allow external access
EXPOSE 8000

# Start Django development server
CMD ["python", "cicd_project/manage.py", "runserver", "0.0.0.0:8000"]
