# Use a Python image to build the MkDocs site
FROM python:3.9-alpine AS builder

# Install MkDocs and mkdocs-material
RUN pip install mkdocs mkdocs-material

# Copy the MkDocs project files to the container
COPY ./ /mkdocs/

# Set the working directory
WORKDIR /mkdocs

# Build the MkDocs site
RUN mkdocs build

# Use an Nginx image to serve the built site
FROM nginx:alpine

# Copy the built MkDocs site to the Nginx HTML directory
COPY --from=builder /mkdocs/site/ /usr/share/nginx/html/

# Expose port 8000
EXPOSE 8000

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]