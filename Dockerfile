# Step 1: Use an official Python runtime as a parent image
FROM python:3.7

# Step 2: Set the working directory in the container
WORKDIR /app

# Step 3: Copy the current directory contents into the container at /app
COPY . /app

# Step 4: Install Pipenv
RUN pip install pipenv

# Step 5: Install dependencies from Pipfile
RUN pipenv install --deploy --ignore-pipfile

# Step 6: Make port 5000 available to the world outside this container
EXPOSE 5000

# Step 7: Run the application
CMD ["pipenv", "run", "python", "app.py"]
