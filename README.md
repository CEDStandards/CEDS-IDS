![CEDS Integrated Data Store Logo](/res/CEDS-IDS-Logo-Full-Medium.png "CEDS Integrated Data Store")

# CEDS Integration Data Store (IDS)
The CEDS Integration Data Store factors the entities and attributes of the CEDS Domain Entity Schema (DES) with standard technical syntax and 3rd normal form database normalization. The IDS Logical Model provides a standard framework for integration of P-20 data systems through a well-normalized “operational data store”. In a P-20 data system, the IDS models the most current view of data available to the enterprise, including some historical data (such as prior assessment data and enrollment records). A “record” is generally added for each Person-Organization Relationship change event in the system. This CEDS logical model does not directly address the production aspects of log and change management.

## Getting Started

### Fresh Installation

To create a new instance of the CEDS IDS on your SQL Server, perform the following steps.

1. Open the database creation script at /src/ddl/CEDS-IDS.sql using your preferred SQL client. 
2. Connect to the server on which you with to create the CEDS IDS instance.
3. Find and replace the existing database name in the script (eg. CEDS-NDS-V7_2_0_0) with the database name of your choice.
4. Run the script. 

The database is empty by default.  Proceed with the following instructions to load CEDS Element metadata and CEDS Option Set values into the reference tables.

### Loading CEDS Element Metadata

The full list of CEDS Element metadata is available to load to the CEDS IDS in the form of two tables-\_CEDSElements and \_CEDStoIDSMapping.  \_CEDSElements contains the full list of CEDS Elements and basic metadata.  \_CEDStoIDSMapping contains mapping information that links CEDS Elemenet metadata to the CEDS IDS tables and columns.  

1. Open the script at /src/metadata/Populate-CEDS-Element-Tables.sql using your preferred SQL client.
2. Connect to your CEDS IDS database instance. 
3. Execute the SQL script.  

The two tables will be created and populated with the CEDS Element metadata.  

### Loading CEDS Option Set Values to Reference Tables

Many elements in CEDS contain a finite list of options (e.g. Disability Type).  To load these options into the reference tables (aka lookup tables), proceed with the following instructions. 

1. Open the script at /src/Populate-CEDS-Ref-Tables.sql using your preferred SQL client.
2. Connect to your CEDS IDS database instance.
3. Execute the script.

### Upgrading your CEDS IDS

We will provide rerunable scripts to incrementally upgrade your IDS between compatible, incompatible, and alignment versions of the CEDS IDS.  Upgrade scripts will be rerunable to make it safe and easy to perform upgrades.  Upgrade scripts contain CEDS metadata and reference table inserts and updates.

1. Make sure you know what version of the CEDS IDS you are working with.  
2. Open the appropriate upgrade script at /src/upgrade using your preferred SQL client.
3. Connect to your CEDS IDS database instance.
4. Execute the script. 

## Contributing

Please read [CONTRIBUTING.md]() for details on our code of conduct, and the process for submitting pull requests to us.

## Versioning

We use a customized version of [Explicit Versioning](https://github.com/exadra37-versioning/explicit-versioning) for versioning.  To keep the various CEDS Open Source projects in alignment with the CEDS Elements, we are replacing the concept of "disruptive" releases with "alignment" releases.  These releases ensure that the data models are in sync with the official, community approved list of CEDS Elements.  For the versions available, see the [tags on this repository](https://github.com/CEDStandards/CEDS-IDS/tags). 

## Authors

See the list of [contributors](https://github.com/your/project/contributors) who participated in this project.

## License

This project is licensed under the Apache 2.0 License - see the [LICENSE](LICENSE) file for details.
