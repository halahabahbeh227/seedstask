# Create Companies
akhtaboot = Company.create(name: 'Akhtaboot')
zenhr = Company.create(name: 'ZenHR')

# Create Branches
amman_branch = zenhr.branches.create(name: 'Amman Branch')
dubai_branch = zenhr.branches.create(name: 'Dubai Branch')

# Create Employees for Amman Branch
employee_1_amman = amman_branch.employees.create(name: 'Employee 1 Amman', email: 'em1_amman@zenhr.com', hire_date: '2023-01-01', employment_number: 'E1A')
employee_2_amman = amman_branch.employees.create(name: 'Employee 2 Amman', email: 'em2_amman@zenhr.com', hire_date: '2023-01-01', employment_number: 'E2A')
employee_terminated_amman = amman_branch.employees.create(name: 'Employee Terminated Amman', email: 'terminated_amman@zenhr.com', hire_date: '2023-01-01', employment_number: 'ETA')

# Create Employees for Dubai Branch
employee_1_dubai = dubai_branch.employees.create(name: 'Employee 1 Dubai', email: 'em1_dubai@zenhr.com', hire_date: '2023-01-01', employment_number: 'E1D')
employee_2_dubai = dubai_branch.employees.create(name: 'Employee 2 Dubai', email: 'em2_dubai@zenhr.com', hire_date: '2023-01-01', employment_number: 'E2D')
employee_3_dubai = dubai_branch.employees.create(name: 'Employee 3 Dubai', email: 'em3_dubai@zenhr.com', hire_date: '2023-01-01', employment_number: 'E3D')

# Terminate an employee
employee_terminated_amman.create_termination!(date: '2024-12-31')

# Create Financial Packages for Amman Employees
employee_1_amman.financial_packages.create(from_date: '2023-01-01', to_date: '2023-12-31', amount: 500)
employee_1_amman.financial_packages.create(from_date: '2024-01-01', to_date: '2024-12-31', amount: 600)

employee_2_amman.financial_packages.create(from_date: '2023-01-01', to_date: '2023-12-31', amount: 500)
employee_2_amman.financial_packages.create(from_date: '2024-01-01', to_date: '2024-12-31', amount: 600)

# Create Rooms for Amman Branch
room_1_amman = amman_branch.rooms.create(name: 'Amman Meeting Room 1')
room_2_amman = amman_branch.rooms.create(name: 'Amman Meeting Room 2')

# Assign Rooms to Employees
employee_1_amman.rooms << room_1_amman
employee_2_amman.rooms << [room_1_amman, room_2_amman]

