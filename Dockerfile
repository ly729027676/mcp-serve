# Generated by https://smithery.ai. See: https://smithery.ai/docs/config#dockerfile
FROM python:3.12-slim

# Install dependencies
RUN pip install --no-cache-dir httpx "mcp[cli]>=1.6.0"

# Set working directory
WORKDIR /app

# Copy project files
COPY . /app

# Set the entrypoint. The MCP server uses stdio transport and runs indefinitely.
ENTRYPOINT ["python", "mcp-serve/weather.py"]
