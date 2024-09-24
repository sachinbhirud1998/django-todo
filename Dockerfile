# Use the official Python image from Docker Hub
FROM python:3.7

# Copy the entire application code into the container
COPY . .

# Install Django directly
RUN pip install django==3.2.25

# Expose the port your app runs on
EXPOSE 8000

# Run migrations (optional, if needed)
RUN python manage.py migrate

# Command to run your application.
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]


