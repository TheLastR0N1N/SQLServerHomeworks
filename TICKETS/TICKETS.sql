USE F19_class

CREATE TABLE Approver 
(
ID INT
,Name VARCHAR(10)
)
GO
 
INSERT INTO Approver(ID,Name)
VALUES (1001,'Ram'), (1002,'Ramesh'), (1003,'Supriya'), (1004,'Sharlee')

CREATE TABLE TicketDetails
(
TicketID INT
,CreatedBy INT
,ApprovedBy INT
)
GO
 
INSERT INTO TicketDetails(TicketID,CreatedBy,ApprovedBy)
VALUES
(1,1001,1004),
(2,1001,1004),
(3,1002,1004),
(4,1001,1003)


SELECT * FROM Approver
SELECT * FROM TicketDetails

SELECT T.TicketID, A.NAME AS CreatedBy, B.NAME AS ApprovedBy
FROM TicketDetails AS T 
JOIN Approver AS A ON T.CreatedBy = A.ID
JOIN Approver AS B ON T.ApprovedBy = B.ID;
