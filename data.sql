-- VISITOR DATA

INSERT INTO Visitor VALUES (1, 'Rahul Sharma', '9876543210');
INSERT INTO Visitor VALUES (2, 'Priya Verma', '9811122233');
INSERT INTO Visitor VALUES (3, 'Aman Gupta', '9898989898');

-- RESIDENT DATA

INSERT INTO Resident VALUES (101, 'Amit Singh', 'A', 201);
INSERT INTO Resident VALUES (102, 'Neha Jain', 'B', 305);
INSERT INTO Resident VALUES (103, 'Rohit Mehta', 'C', 110);

-- SECURITY STAFF DATA

INSERT INTO SecurityStaff VALUES (201, 'Guard A', 'Day');
INSERT INTO SecurityStaff VALUES (202, 'Guard B', 'Night');

-- VISIT REQUEST DATA

INSERT INTO VisitRequest VALUES (1001, 1, 101, '2026-04-20', 'Pending');
INSERT INTO VisitRequest VALUES (1002, 2, 102, '2026-04-20', 'Approved');
INSERT INTO VisitRequest VALUES (1003, 3, 103, '2026-04-21', 'Rejected');

-- VISIT LOG DATA

INSERT INTO VisitLog VALUES (5001, 1, 101, '2026-04-20 10:00:00', '2026-04-20 12:00:00', 'Approved');
INSERT INTO VisitLog VALUES (5002, 2, 102, '2026-04-20 14:00:00', NULL, 'Pending');
INSERT INTO VisitLog VALUES (5002, 2, 102, '2026-04-20 14:00:00', NULL, 'Pending');
