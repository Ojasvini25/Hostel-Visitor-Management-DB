
-- BASIC DISPLAY QUERIES


-- 1. Show all visitors
SELECT * FROM Visitor;

-- 2. Show all residents
SELECT * FROM Resident;

-- 3. Show all security staff
SELECT * FROM SecurityStaff;


-- VISIT REQUEST QUERIES


-- 4. Show all pending requests
SELECT * 
FROM VisitRequest
WHERE Status = 'Pending';

-- 5. Show approved requests
SELECT * 
FROM VisitRequest
WHERE Status = 'Approved';

-- 6. Show rejected requests
SELECT * 
FROM VisitRequest
WHERE Status = 'Rejected';


-- JOIN QUERIES 


-- 7. Visitor details with resident (complete request info)
SELECT 
    V.Name AS VisitorName,
    R.Name AS ResidentName,
    R.HostelWing,
    VR.RequestDate,
    VR.Status
FROM VisitRequest VR
JOIN Visitor V ON VR.VisitorID = V.VisitorID
JOIN Resident R ON VR.ResidentID = R.ResidentID;


-- 8. Visitor entry log with details


SELECT 
    L.LogID,
    V.Name AS VisitorName,
    R.Name AS ResidentName,
    L.EntryTime,
    L.ExitTime,
    L.ApprovalStatus
FROM VisitLog L
JOIN Visitor V ON L.VisitorID = V.VisitorID
JOIN Resident R ON L.ResidentID = R.ResidentID;


-- ANALYTICAL QUERIES


-- 9. Count total visits per resident
SELECT 
    ResidentID,
    COUNT(*) AS TotalVisits
FROM VisitLog
GROUP BY ResidentID;


-- 10. Visitors who entered on a specific date
SELECT *
FROM VisitLog
WHERE DATE(EntryTime) = '2026-04-20';
