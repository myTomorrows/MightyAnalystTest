# Welcome to the Mighty Analyst Test 

we are a small patient advocat group (PAG) who help and monitor patients with various diseases. We have a contract with United Healthcare and Humana, clients of the firm. Although we are not allowed to see all details of United healthcare, we are allowed to see some aggregate data. The same goes for patients without a health insurance.

The sample dataset that we have managed acquire exists of patient data, procedures, insurance companies, a single hospital and a linking file. 

We would like to get a more accurate, and live reporting of this data. In the past the excel files were fine, but nowadays its becoming too much and therefore harder to read. Some of our Program managers are struggling to know what is what. For the client reporting we are not always allowed to show them all the data, and since we are hosting the data we are not allowed to share personal details. Some clients also request an extract of the patient data specific to them. 

We are currently in the process of setting up a database connection to tableau, since we already have a salesforce account and tableau can be used for reporting. We have an airbyte instance to run a few etls on a daily basis to a reporting data warehouse (postrgres database). This database is also one which we are connecting to tableau. We already have some way of creating excel files and providing them to our clients. Most of our infratstructure runs on AWS, and we use python and SQL as our main languages for many applications and data analysis. We have started a transition to use DBT in stead of SQL, but Rome was not build in a day. 

## Task 1

The client (United Healthcare) asks you to prep the data, and create some visualizations to get some more information on the data that is present. They would like to see the procedures ordered by total cost and and a visualization showing the amount of times procedures have been performed ordered from most held, to least held. We would also like you to give extracts of the data that is used in the visualtions (so the raw data behind the visualizations). Finally we would like to receive a graph showing patients, who follow the same procedures that are our top held procedures from our clients' patients. 

## Task 2

Since we are already delivering a report to one of our clients, we cannot leave out the other client. They want to have information of the hospital doing the insurances and the amount of patients they help in a specific time frame. They consist of a quite a large team where each of the members has different specialty (procedure that they know everything of). They would like to easily select their own specialty as to not have to look at data of others. Its important to know that one of the specialties (hospice treatments) cannot be displayed to members with a different specialty. 


## Task 3

We would like to have reports for senior management, preferably with as much detail as possible. We would like to be able to have extracts of the visualized data as well. Only senior management is allowed to see these visualisations, whereas other employees in the org are allowed to have access to the raw  extracts. One visualization should be about the data of our clients, how many patients we have helped from specific areas. Possibly to identify any relationship between the area of residence and the preocedures that are being performed. The other graphs we would like to see are non-client related, we would like to see if there are any patients grouped together that are not affeliated to any of our clients, but are in close proximity of patients who are in contact with our clients. 

## Notes
We know some of the questions are vague and maybe impossible todo given the tools you are using. This is on purpose. We want to see how you would handle these situations, therefore it is okay to include an explanation of the process/solution that you would suggest had you been using the tools that do support these requirements. 

## Instructions

Step one is to go to: "https://github.com/myTomorrows/MightyAnalystTest" and download this as a zip, or fork it into your own private repository (preferably github). 
Step 2 is to give us access to this repository. You do not immediately have to give us access, this can be done after you have completed it as well. You will be given a notice who to add to your repository. 
Finally, you may do the tasks described above in any way you like. Input contains the data that is used for the test and this readme file contains the requests. Good luck and above all, have fun!