FROM public.ecr.aws/docker/library/python:3.9-slim
#this is the official Python slim image hosted on Amazon’s public ECR registry (works better in CodeBuild than plain python:3.9-slim).

# Set working directory
WORKDIR /app

# Copy requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the app
COPY . .

# Expose port
EXPOSE 5000

# Run the Flask app
CMD ["python", "app.py"]


