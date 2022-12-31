FROM python:3.10.9-alpine3.17

ENV POETRY_HOME=/opt/poetry \
    WORKDIR=/blank-project/

WORKDIR $WORKDIR
RUN apk add --no-cache poetry && \
    poetry config virtualenvs.create false

COPY ./pyproject.toml ./poetry.lock $WORKDIR
RUN poetry install --no-root --without dev
COPY ./ $WORKDIR
RUN poetry install --without dev