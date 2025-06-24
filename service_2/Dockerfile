FROM python:3.11-slim

# Install uv
RUN pip install uv

WORKDIR /app
COPY . .

# Install dependencies using uv
RUN uv sync

EXPOSE 8002
CMD ["uv", "run", "app.py"]