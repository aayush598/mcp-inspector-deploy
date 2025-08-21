# Use official Node.js runtime
FROM node:20-slim

# Set working directory
WORKDIR /app

# Install the inspector globally
RUN npm install -g @modelcontextprotocol/inspector

# Expose port if needed (default 3000, adjust if different)
EXPOSE 6277

# Run the MCP Inspector
CMD ["npx", "@modelcontextprotocol/inspector"]
