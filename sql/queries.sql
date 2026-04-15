-- Smart Filing Database System
-- Author: Jimmy Zhuang
-- Analysis Queries

-- Query 1:
-- How many issues have the highest urgency level in the Local Government industry?

SELECT COUNT(i.IssueID) AS HighUrgencyIssueCount
FROM Issue i
JOIN Industry ind
    ON i.IndustryID = ind.IndustryID
WHERE i.UrgencyLevel = (
    SELECT MAX(UrgencyLevel) FROM Issue
)
AND ind.IndustryName = 'Local Government';


-- Query 2:
-- Which team members with the Data Analyst role are not assigned to any project?

SELECT 
    tm.TeamMemberID,
    tm.MemberName,
    tm.Role
FROM TeamMember tm
LEFT JOIN ProjectAssignment pa
    ON tm.TeamMemberID = pa.TeamMemberID
WHERE tm.Role = 'Data Analyst'
GROUP BY 
    tm.TeamMemberID,
    tm.MemberName,
    tm.Role
HAVING COUNT(pa.AssignmentID) = 0
ORDER BY tm.MemberName;
