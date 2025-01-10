# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy all files to the container
COPY . .

# Install dependencies
RUN apt-get update && apt-get install -y \
    && pip install --no-cache-dir telegram telebot flask aiogram pyTelegramBotAPI

# Make all files executable
RUN chmod +x *

# Expose the application port (optional if Flask is used)
EXPOSE 8080

# Command to run the application
CMD ["python3", "nand.py"]
