CREATE PROCEDURE sp_Cursors  
  
AS  
BEGIN  
    DECLARE 
	@EmployeeID INT, 
	@EmployeeName VARCHAR(50), 
	@DepartmentID INT, 
	@DepartmentName VARCHAR(50);  
  
     /* -- Create a temporary table to store the result  */    
	 CREATE TABLE #EmployeeDetails (
	 EmployeeID INT,         
	 EmployeeName VARCHAR(50),         
	 DepartmentName VARCHAR(50)     
	 );  
  
    /* -- Declare a cursor for joining Employees with Departments */
    DECLARE emp_cursor CURSOR FOR  
    SELECT e.EmployeeID, e.EmployeeName, e.DepartmentID, d.DepartmentName  
    FROM Employees e  
    INNER JOIN Departments d ON e.DepartmentID = d.DepartmentID;  
  
    /* -- Open the cursor  */
    OPEN emp_cursor;  
  
    /* -- Fetch the first row  */
    FETCH NEXT FROM emp_cursor INTO @EmployeeID, @EmployeeName, @DepartmentID, @DepartmentName;  
  
    /* -- Loop through the records  */
    WHILE @@FETCH_STATUS = 0  
    BEGIN  
       /* -- Print employee details  
        --PRINT 'EmployeeID: ' + CAST(@EmployeeID AS VARCHAR) +  
        --      ', Name: ' + @EmployeeName +  
        --      ', Department: ' + ISNULL(@DepartmentName, 'No Department'); */
  
   INSERT INTO #EmployeeDetails (EmployeeID, EmployeeName, DepartmentName)         
   VALUES (@EmployeeID, @EmployeeName, ISNULL(@DepartmentName, 'No Department'));  
  
       /* -- Fetch next row  */
        FETCH NEXT FROM emp_cursor INTO @EmployeeID, @EmployeeName, @DepartmentID, @DepartmentName;  
    END  
  
    /* -- Close and deallocate cursor  */
    CLOSE emp_cursor;  
    DEALLOCATE emp_cursor;  
  
 SELECT * FROM #EmployeeDetails;
 
END;