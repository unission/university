# University service
University service for unission

### How to run the service
1. Create file postgres.env.
2. Add the following variables into created file:
    - POSTGRES_USER=your username
    - POSTGRES_PASSWORD=your password
    - POSTGRES_DB=your database name
3. To compile the service run the following command:
   - ```shell
     mvn clean package
     ```
4. To start the service run the following command:
    - ```shell
      docker compose up -d
     ```
5. To get into psql execute the following command:
    - ```shell
      docker exec -it university_db psql -U "your username here" -d "your database name here"
     ```
