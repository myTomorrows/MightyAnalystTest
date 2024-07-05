# Welcome to the Mighty Analyst Test 

we are a small patient advocat group (PAG) who help and monitor patients with various diseases. We have a contract with United Healthcare and Humana, clients of the firm. Although we are not allowed to see all details of United healthcare, we are allowed to see some aggregate data. The same goes for patients without a health insurance.

The sample dataset that we have managed acquire exists of patient data, procedures, insurance companies, a single hospital and a linking file. 

We would like to get a more accurate, and live reporting of this data. In the past the excel files were fine, but nowadays its becoming too much and therefore harder to read. Some of our Program managers are struggling to know what is what. For the client reporting we are not always allowed to show them all the data, and since we are hosting the data we are not allowed to share personal details. Some clients also request an extract of the patient data specific to them. 

We are currently in the process of setting up a database connection to tableau, since we already have a salesforce account and tableau can be used for reporting. We have an airbyte instance to run a few etls on a daily basis to a reporting data warehouse (postrgres database). This database is also one which we are connecting to tableau. We already have some way of creating excel files and providing them to our clients. Most of our infratstructure runs on AWS, and we use python and SQL as our main languages for many applications and data analysis. We have started a transition to use DBT in stead of SQL, but Rome was not build in a day. 

## Task 1

We would like to ask you to prep the data and create an export and client visualization for United Healthcare. It especially important for them to standardize insurances for treatments. This could optimize revenue and reduce cost since they can specialize into specific treatments. Which could be a major leverage in the negotiations with insurance companies. This in terms could lower their standard fees, which could give uninsured patients an opportunity. It would therefore also be good to know, the number of patients they are missing out on given the most performed procedures. Furhtermore they would like to have an export ordered by procedures and dates (newest date first).  

## Task 2

Since we are already delivering a report to one of our clients, we cannot leave out the other client. They want to have information of the hospital doing the insurances and the amount of patients they help in a specific time frame. They consist of a quite a large team where each of the members has different specialty (procedure that they know everything of). They would like to easily select their own specialty as to not have to look at data of others. Its important to know that one of the specialties (hospice treatments) cannot be displayed to members with a different specialty. 


## Task 3

We would like to have reports for senior management, preferably with as much detail as possible. We would like to be able to have extracts of the visualized data as well. Only senior management is allowed to see these visualisations, whereas other employees in the org are allowed to have access to the raw  extracts.

## Notes
We know some of the questions are vague and maybe impossible todo given the tools you are using. This is on purpose. We want to see how you would handle these situations, therefore it is okay to include an explanation of the process/solution that you would suggest had you been using the tools that do support these requirements. 