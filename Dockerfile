# 1. Start with a official Python "kitchen"
# Using a "slim" version is good practice as it's smaller
FROM python:3.9-slim

# 2. Set a working directory inside the "box"
WORKDIR /app

# 3. Copy the "ingredients list" and install it
# Copy only requirements.txt first to leverage Docker's cache
COPY requirements.txt .
RUN pip install -r requirements.txt

# 4. Copy the "recipe" (your code)
# Copy the rest of the application code
COPY . .

# 5. The command to run when the "box" starts
# This will run: python app.py
CMD ["python", "app.py"]