# Contributing
Contributions are welcome from the community. For questions and discussion threads see the CEDS [CEDS Community of Practice website]( https://ceds.grads360.org/#program).

## Submitting Code Changes
If you have direct contributions you would like considered for incorporation
into the project you can [fork this repository](https://help.github.com/articles/fork-a-repo/) and
[submit a pull request](https://help.github.com/articles/about-pull-requests/) for review.  Along with your pull request, please
create an issue that details the parameters for your changes.

## Integration Data Store Design Guidelines
### Naming Conventions
It is important to apply a consistent naming standard so users know what to
expect when they use the data model.  Below are rules to use when creating objects
in the data modeling.

* Use CEDS entity and element names when possible.
* Use Pascal Case for all objects.
* Avoid abbreviations, except for the following:
  * PS = Postsecondary
* Use acronyms that are used in CEDS, such as:
  * SEA = State Education Agency
  * LEA = Local Education Agency
  * IEU = Intermediate Education Community
  * EL = Early Learning
  * AE = Adult Education
* Acronyms should be treated as full words, with only the first letter uppercase and the remainder lowercase.

### Tables
* All tables names must be in singular form (eg. organization).
* Use CEDS entity names to distinguish tables that are used only within one education data domain.  Below are the prefixes for the domains:
  * Assessment
  * Competency
  * Credential
  * EL
  * Facility
  * K12
  * LearningResource
  * PS
  * Workforce
* Tables and elements used across data domains should be normalized for reuse.
* Reference (aka lookup) tables are prefixed with "Ref". 

### Keys
* A surrogate identity primary key should be implemented on each table.  
* Foreign keys should not be used as primary keys.
* Do not use natural primary keys.

### Indexes
* Non-clustered indexes should be created based on use case needs so as to avoid database bloat.  Outline the need for specific indexes in the use case.

### Longitudinal data
The IDS is designed to store data longitudinally.  As you design new tables, ensure you are adhering to the following rules.
* Add a field named RecordStartDateTime (DateTime, not null) that is populated with the date and time the record is effective.
* Add a field named RecordEndDateTime (DateTime, null) that is populated with the date and time the record is no longer effective.  This field is left null until it is superseded by a new record.

### Extending the IDS
If you find a use case for a table or element that is not in CEDS, please follow these recommendations.
* Avoid extensions if possible.  The further from the standard your database becomes, the more difficult it is to stay in alignment with the standards and to use tools and resources available in the marketplace.
* [Fork this repository](https://help.github.com/articles/fork-a-repo/).  This will make it easier for you to stay up-to-date with the main repository and to submit pull requests.  Store extension tables in a separate repository to avoid conflicts.  
* Avoid making changes to the existing columns, table, and other objects.  Below is the recommended method to extend the IDS.  Upgrade script will never be created that will affect your custom extension objects.
  * If you wish to extend an existing table, create a new table and create a foreign key reference to its parent.  
  * Create a new independent new table, such as a reference table to store proprietary option sets.
  * Add new option set values to existing reference tables.  Set the JurisdictionId value to the organization ID that represents your organization (from the OrganizationDetails table).  This provides separation from CEDS values, which have JurisdictionId set to NULL.  
