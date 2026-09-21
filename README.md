# Poland-Simzy Snowflake DBT Integration

* Implemented version-controlled DBT projects using Git, enabling collaborative development, CI/CD pipelines, and automated deployment of transformations.
* Designed modular DBT models across raw (bronze), cleansed (silver), and business-ready (gold) layers to ensure scalability and maintainability of data pipelines.
* Developed reusable Jinja macros to standardize SQL logic, reduce redundancy, and accelerate model development.
* Defined sources with freshness checks and built layered models to ensure reliable ingestion and transformation of data.
* Automated pipeline execution using metadata tables, reducing manual intervention and enabling dynamic model selection.
* Modeled fact and dimension tables in DBT marts following star schema principles, improving query performance for BI tools.
* Built DBT snapshots to track historical changes in dimension tables, ensuring accurate reporting of slowly changing attributes.
* Applied schema and custom tests (unique, not null, referential integrity) to enforce data reliability and prevent downstream issues.
* Scheduled DBT runs via Airflow DAGs, managing dependencies and monitoring pipeline health.
* Published gold-layer models to Power BI dashboards, enabling business stakeholders to access trusted, curated datasets.
