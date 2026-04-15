-- Smart Filing Database System
-- Author: Jimmy Zhuang
-- Schema Definition

CREATE TABLE Client (
    ClientID NUMBER PRIMARY KEY,
    ClientName VARCHAR2(100) NOT NULL,
    ClientType VARCHAR2(100),
    ContactEmail VARCHAR2(100)
);

CREATE TABLE Project (
    ProjectID NUMBER PRIMARY KEY,
    ClientID NUMBER NOT NULL,
    ProjectName VARCHAR2(100) NOT NULL,
    StartDate DATE,
    Status VARCHAR2(100),
    CONSTRAINT fk_project_client FOREIGN KEY (ClientID)
        REFERENCES Client(ClientID)
);

CREATE TABLE Industry (
    IndustryID NUMBER PRIMARY KEY,
    IndustryName VARCHAR2(100) NOT NULL
);

CREATE TABLE Issue (
    IssueID NUMBER PRIMARY KEY,
    ProjectID NUMBER NOT NULL,
    ClientID NUMBER NOT NULL,    
    IndustryID NUMBER NOT NULL,   
    IssueTitle VARCHAR2(100) NOT NULL,
    Description VARCHAR2(250),
    UrgencyLevel NUMBER,
    CONSTRAINT fk_issue_project FOREIGN KEY (ProjectID)
        REFERENCES Project(ProjectID),
    CONSTRAINT fk_issue_client FOREIGN KEY (ClientID)      
        REFERENCES Client(ClientID),
    CONSTRAINT fk_issue_industry FOREIGN KEY (IndustryID)   
        REFERENCES Industry(IndustryID)
);

CREATE TABLE DataSource (
    DataSourceID NUMBER PRIMARY KEY,
    SourceName VARCHAR2(100) NOT NULL,
    SourceType VARCHAR2(100),
    SourceURL VARCHAR2(100)
);

CREATE TABLE TeamMember (
    TeamMemberID NUMBER PRIMARY KEY,
    MemberName VARCHAR2(100) NOT NULL,
    Role VARCHAR2(100),
    Email VARCHAR2(100)
);

CREATE TABLE ProjectAssignment (
    AssignmentID NUMBER PRIMARY KEY,
    ProjectID NUMBER NOT NULL,
    TeamMemberID NUMBER NOT NULL,
    AssignmentRole VARCHAR2(100),
    CONSTRAINT fk_pa_project FOREIGN KEY (ProjectID)
        REFERENCES Project(ProjectID),
    CONSTRAINT fk_pa_team FOREIGN KEY (TeamMemberID)
        REFERENCES TeamMember(TeamMemberID)
);


CREATE TABLE IssueDataSource (
    IssueID NUMBER NOT NULL,
    DataSourceID NUMBER NOT NULL,
    CONSTRAINT pk_issue_datasource PRIMARY KEY (IssueID, DataSourceID),
    CONSTRAINT fk_ids_issue FOREIGN KEY (IssueID)
        REFERENCES Issue(IssueID),
    CONSTRAINT fk_ids_datasource FOREIGN KEY (DataSourceID)
        REFERENCES DataSource(DataSourceID)
);

CREATE TABLE UrgencyLevel (
    UrgencyLevelID NUMBER PRIMARY KEY,
    UrgencyLevel NUMBER NOT NULL
);
CREATE TABLE AssignmentRole (
    RoleID NUMBER PRIMARY KEY,
    AssignmentRole VARCHAR2(100) NOT NULL
);
