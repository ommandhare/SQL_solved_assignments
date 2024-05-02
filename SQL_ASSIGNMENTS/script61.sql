select emp_no,salary as salaries_bet_40k_50k from salaries
 WHERE salary BETWEEN 40000 AND 50000 
 order by salary DESC;