FROM apache/airflow:2.6.0

# Switch to root to install any additional dependencies (optional)
USER root

# Install additional packages if needed (uncomment and modify the line below)
# RUN apt-get update && apt-get install -y <your-packages>

# Switch back to airflow user
USER airflow

# Copy your custom DAGs, plugins, or other files (optional)
COPY dags /opt/airflow/dags/
COPY plugins /opt/airflow/plugins/

# Set up the default entry point (already set in the base image)
ENTRYPOINT ["entrypoint.sh"]

# Expose the default port (8080 for the webserver)
EXPOSE 8080
