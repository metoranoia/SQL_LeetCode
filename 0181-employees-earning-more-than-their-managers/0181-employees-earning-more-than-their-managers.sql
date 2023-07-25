SELECT name AS Employee FROM Employee A WHERE
salary > (SELECT salary FROM Employee WHERE id=A.managerId)