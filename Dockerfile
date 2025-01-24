FROM python:3.12.7

# Set working directory
WORKDIR /usr/src/app

# Copy requirements and install dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Start the Flask app
CMD ["flask", "run", "--host=0.0.0.0", "--debug"]