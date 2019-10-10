![CEDS Integrated Data Store Logo](/res/CEDS-IDS-Logo-Full-Medium.png "CEDS Integrated Data Store")

# CEDS Integrated Data Store (IDS)
Welcome to the CEDS Open Source Community!

The Common Education Data Standards (CEDS) Integrated Data Store (IDS) factors the complete set of CEDS elements, entities and attributes with standard technical syntax and 3rd normal form database normalization. The IDS Model provides a standard framework for integration of P-20W data systems through a well-normalized operational data store. It can be used for transactional education data systems, to perform near real-time reporting, and as a standard staging area to load the CEDS Data Warehouse. The CEDS Data Model Guide can be found here [https://ceds.ed.gov/dataModel.aspx].

**Getting Started**
***Fresh Installation***
To create a new instance of the CEDS IDS on your SQL Server, perform the following steps.
1.	Open the database creation script at /src/ddl/CEDS-IDS.sql using your preferred SQL client.
2.	Connect to the server on which you want to create the CEDS IDS instance.
3.	Find and replace the existing database name in the script (eg. CEDS-NDS-V7_2_0_0) with the database name of your choice.
4.	Run the script.
The database is empty by default. Proceed with the following instructions to load CEDS Element metadata and CEDS Option Set values into the reference tables.

***Loading CEDS Element Metadata***
The full list of CEDS element metadata is available to load to the CEDS IDS in the form of two tables: _CEDSElements and _CEDStoIDSMapping. _CEDSElements contains the full list of CEDS Elements and basic metadata. _CEDStoIDSMapping contains mapping information that links CEDS Element metadata to the CEDS IDS tables and columns.
1.	Open the script at /src/metadata/Populate-CEDS-Element-Tables.sql using your preferred SQL client.
2.	Connect to your CEDS IDS database instance.
3.	Execute the SQL script.
The two tables will be created and populated with the CEDS Element metadata.

***Loading CEDS Option Set Values to Reference Tables***
Many elements in CEDS contain a finite list of options (e.g. Disability Type). To load these options into the reference tables (aka lookup tables), proceed with the following instructions.
1.	Open the script at /src/Populate-CEDS-Ref-Tables.sql using your preferred SQL client.
2.	Connect to your CEDS IDS database instance.
3.	Execute the script.

***Upgrading your CEDS IDS***
CEDS Maintainers  will provide rerunnable scripts to incrementally upgrade your IDS between compatible, incompatible, and alignment versions of the CEDS IDS. Upgrade scripts will be rerunnable to make it safe and easy to perform upgrades. Upgrade scripts contain CEDS metadata and reference table inserts and updates.
1.	Based on your current version, download the appropriate upgrade script at /src/upgrade using your preferred SQL client.
2.	Connect to your CEDS IDS database instance.
3.	Execute the script.

**Contributing**
Please read Contributing.md for details on the process for submitting use cases and pull requests.

**Versioning**
The CEDS open source community uses a customized version of Explicit Versioning. To keep the various CEDS open source projects in alignment with the CEDS Elements, the concept of "disruptive" releases has been replaced with "alignment" releases. These releases ensure that the data models are in sync with the official, CEDS community approved list of CEDS Elements. For the versions available, see the tags on this repository.

Here is an example of how explicit versioning will occur.

Assuming an official release of CEDS has just occurred:

Data Warehouse (DW) version = 7.0.0.0
Integrated Data Store (IDS) version = 7.0.0.0
CEDS Elements = 7.0.0.0

Use Case:
Brand new elements are introduced to CEDS, because they are new, they represent no breaking change to any of the other CEDS elements:

CEDS Elements version = 7.0.1.0

These new elements, however, result in a new understanding of how data is integrated in the IDS resulting in a restructuring of the IDS which is not backwards compatible.

IDS version = 7.1.0.0

These elements are added to the DW structure and result in backwards compatibility, but a defect is identified in doing so that needs to be corrected.

DW version = 7.0.1.1

Throughout the remainder of the year, many changes occur in each of the different repositories. The changes prior to the annual release of CEDS results in the following:

DW version = 7.27.1.6
IDS version = 7.3.2.0
CEDS Elements = 7.2.18.2

The annual official CEDS release occurs, typically around January/February of the calendar year. All resources are brought into version alignment (Note: no changes occurred to the resource, the annual release simply restarts/aligns the versioning):

DW version = 8.0.0.0
IDS version = 8.0.0.0
CEDS Elements version = 8.0.0.0

Note: The CEDS Collaborative Exchange contains resources contributed by stakeholders. These resources should contain the compatible version they were created under.  The versions are not changed for a resource unless a stakeholder updates them to function under a newer version.

**License**
This project is licensed under the Apache 2.0 License - see the LICENSE file for details.

