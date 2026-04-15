-- Smart Filing Database System
-- Author: Jimmy Zhuang
-- Sample Data Inserts

CLIENT TABLE:

INSERT INTO Client (ClientID, ClientName, ClientType, ContactEmail)
VALUES (101, 'Smith for Mayor 2026', 'Political', 'info@smithmayor.com');

INSERT INTO Client (ClientID, ClientName, ClientType, ContactEmail)
VALUES (102, 'Clean Energy Now PAC', 'Advocacy PAC', 'contact@cleanenergynow.org');

INSERT INTO Client (ClientID, ClientName, ClientType, ContactEmail)
VALUES (103, 'FutureTech Coalition', 'Trade Assoc', 'hello@futuretech.org');

PROJECT TABLE: 

INSERT INTO Project (ProjectID, ClientID, ProjectName, StartDate, Status)
VALUES (2001, 101, '2026 Mayoral Digital Launch', 
        TO_DATE('2025-11-01 09:00:00','YYYY-MM-DD HH24:MI:SS'), 'In Progress');

INSERT INTO Project (ProjectID, ClientID, ProjectName, StartDate, Status)
VALUES (2002, 102, 'Solar Ballot Initiative Awareness', 
        TO_DATE('2025-08-15 10:30:00','YYYY-MM-DD HH24:MI:SS'), 'Active');

INSERT INTO Project (ProjectID, ClientID, ProjectName, StartDate, Status)
VALUES (2003, 103, 'Tech Workforce Policy Campaign',
        TO_DATE('2025-09-05 08:45:00','YYYY-MM-DD HH24:MI:SS'), 'Planning');

ISSUE TABLE: 

INSERT INTO Issue (IssueID, ProjectID, ClientID, IndustryID, IssueTitle, Description, UrgencyLevel)
VALUES (3001, 2001, 101, 1, 'Low Email Open Rates',
        'Fundraising emails to core supporters are below 10% open rate.', 4);

INSERT INTO Issue (IssueID, ProjectID, ClientID, IndustryID, IssueTitle, Description, UrgencyLevel)
VALUES (3002, 2002, 102, 2, 'Misinformation Ads',
        'Opponent ads spreading false claims about solar incentives.', 5);

INSERT INTO Issue (IssueID, ProjectID, ClientID, IndustryID, IssueTitle, Description, UrgencyLevel)
VALUES (3003, 2003, 103, 3, 'Weak Young-Voter Reach',
        'Social impressions for ages 18–24 lag target by 35%.', 3);

DATA SOURCE TABLE

​​INSERT INTO DataSource (DataSourceID, SourceName, SourceType, SourceURL)
VALUES (6001, 'City Voter File 2024', 'Voter File', 'https://data.example.gov/city-voterfile-2024');

INSERT INTO DataSource (DataSourceID, SourceName, SourceType, SourceURL)
VALUES (6002, 'Youth Engagement Poll – August 2025', 'Polling Report', 'https://polls.example.org/youth-engage-0825');

INSERT INTO DataSource (DataSourceID, SourceName, SourceType, SourceURL)
VALUES (6003, 'Social Listening Dashboard – Solar Policy', 'Internal Analytics', 'https://dash.targetvictory.com/solar-policy');

TEAM MEMBER TABLE

INSERT INTO TeamMember (TeamMemberID, MemberName, Role, Email)
VALUES (4001, 'Sarah Kim', 'Data Analyst', 'skim@targetvictory.com');

INSERT INTO TeamMember (TeamMemberID, MemberName, Role, Email)
VALUES (4002, 'Marcus Lee', 'Account Manager', 'mlee@targetvictory.com');

INSERT INTO TeamMember (TeamMemberID, MemberName, Role, Email)
VALUES (4003, 'Olivia Perez', 'Digital Strategist', 'operez@targetvictory.com');


PROJECT ASSIGNMENTS TABLE

INSERT INTO ProjectAssignment (AssignmentID, ProjectID, TeamMemberID, AssignmentRole)
VALUES (5001, 2001, 4002, 'Client Lead');

INSERT INTO ProjectAssignment (AssignmentID, ProjectID, TeamMemberID, AssignmentRole)
VALUES (5002, 2001, 4001, 'Analytics');

INSERT INTO ProjectAssignment (AssignmentID, ProjectID, TeamMemberID, AssignmentRole)
VALUES (5003, 2002, 4003, 'Social Media Manager');

INDUSTRY

INSERT INTO Industry (IndustryID, IndustryName)
VALUES (1, 'Local Government');

INSERT INTO Industry (IndustryID, IndustryName)
VALUES (2, 'Renewable Energy');

INSERT INTO Industry (IndustryID, IndustryName)
VALUES (3, 'Technology Policy');

URGENCY LEVEL

INSERT INTO UrgencyLevel (UrgencyLevelID, UrgencyLevel)
VALUES (1, 1);

INSERT INTO UrgencyLevel (UrgencyLevelID, UrgencyLevel)
VALUES (2, 2);

INSERT INTO UrgencyLevel (UrgencyLevelID, UrgencyLevel)
VALUES (3, 3);

INSERT INTO UrgencyLevel (UrgencyLevelID, UrgencyLevel)
VALUES (4, 4);

ASSIGNMENT ROLE

INSERT INTO AssignmentRole (RoleID, AssignmentRole)
VALUES (1, 'Client Lead');

INSERT INTO AssignmentRole (RoleID, AssignmentRole)
VALUES (2, 'Analytics');

INSERT INTO AssignmentRole (RoleID, AssignmentRole)
VALUES (3, 'Social Media Manager');
