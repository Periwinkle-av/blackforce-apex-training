// ============================================================
// SESSION 3 — Assignment 1: Operators Practice
// ============================================================

Decimal salary = 250000;
Decimal salary2 = 180000;
Integer age = 27;
Boolean active = true;
Integer daysInMonth = 31;
Integer daysElapsed = 11;

// ARITHMETIC
Decimal annualSalary = salary * 12;
System.debug('1a. Annual salary: ' + annualSalary);

Decimal payrollCost = (salary + salary2) * 12;
System.debug('1b. Total annual payroll cost (2 employees): ' + payrollCost);

Integer daysRemaining = daysInMonth - daysElapsed;
System.debug('1c. Days remaining in month: ' + daysRemaining);

// ASSIGNMENT
Integer counter = 0;
counter += 5;
System.debug('2a. Counter after += 5: ' + counter);

counter -= 2;
System.debug('2b. Counter after -= 2: ' + counter);

counter++;
System.debug('2c. Counter after ++: ' + counter);

// COMPARISON
Boolean isHigherPaid = salary > salary2;
System.debug('3a. Is Employee 1 higher paid than Employee 2? ' + isHigherPaid);

Boolean isActive = (active == true);
System.debug('3b. Is employee status Active? ' + isActive);

// LOGICAL
Boolean isEligible = (age >= 25 && active == true);
System.debug('4a. Is eligible (age >= 25 AND active)? ' + isEligible);

Boolean isEligible2 = (age < 20 || active == true);
System.debug('4b. Is eligible (age < 20 OR active)? ' + isEligible2);

System.debug('====== All 10 expressions printed. Assignment 1 Complete. ======');
