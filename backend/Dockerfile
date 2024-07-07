# Pull base image
FROM python:3.10.13-bullseye

RUN apt-get -y update && \
    apt-get install -y --fix-missing \
    build-essential \
    git \
    wget \
    gnupg \
    pkg-config \
    python3-dev \
    software-properties-common \
    zip \
    && apt-get clean && rm -rf /tmp/* /var/tmp/*


RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ bullseye-pgdg main" > /etc/apt/sources.list.d/pgdg.list
RUN wget http://apt.postgresql.org/pub/repos/apt/ACCC4CF8.asc
RUN apt-key add ACCC4CF8.asc

RUN apt-get update \
    && apt-get install postgresql-client-12 -y \
    && apt-get clean

# Install Poetry
RUN curl -sSL https://install.python-poetry.org | python3 -
ENV PATH="/root/.local/bin:$PATH"

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
ENV PYTHONPATH=/code
WORKDIR /code/

# Copy only the necessary files
COPY ./pyproject.toml ./poetry.lock* /code/

# Install dependencies
RUN poetry install

# Copy the rest of the application
COPY . /code/

# Expose the application port
EXPOSE 8000

## Prestart script
#ENTRYPOINT poetry run bash prestart.sh
#
## Start the application
#CMD ["poetry", "run", "uvicorn", "app.main:app", "--host", "0.0.0.0", "--port", "8000", "--log-level=info", "--reload"]

# Command to run the backend server
CMD poetry run bash ./prestart.sh;poetry run uvicorn app.main:app --host 0.0.0.0 --port 8000