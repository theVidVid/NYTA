# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Admin.create(email: 'administrator@nyta.com', password: 'admin')
Member.create(email: 'masteradministrator@nyta.com', password:'masteradmin')

Course.create(course_name: 'Web Development Fellowship', class_hours: '10AM-6PM')
Course.create(course_name: 'Software Engineering Intensive', class_hours: '9AM-5PM')
Course.create(course_name: 'UX-UI Design', class_hours: '6PM-10PM')
Course.create(course_name: 'Data Science Intensive', class_hours: '5PM-9PM')

Instructor.create(first_name:'Jim', last_name:'Wassermann', age:44, education:'M.S.', email:'jwassermann@gmail.com', salary:75000)
Instructor.create(first_name:'Alex', last_name:'Riley', age:33, education:'B.S.', email:'ariley@gmail.com', salary:65000)
Instructor.create(first_name:'David', last_name:'Dohrman', age:38, education:'B.S.', email:'ddohrman@gmail.com', salary:70000)
Instructor.create(first_name:'Jessica', last_name:'Jones', age:30, education:'PHD', email:'JessJones@gmail.com', salary:90000)

Cohort.create(name:'Winter', start_date: '2018-02-26', end_date:'2018-06-05', course_id: 1, instructor_id: 1)
Cohort.create(name:'Spring', start_date:'2018-03-19', end_date:'2018-07-06', course_id: 2, instructor_id: 2)
Cohort.create(name:'Fall', start_date: '2018-09-03', end_date:'2018-12-21', course_id: 2,  instructor_id: 2)
Cohort.create(name:'Summer', start_date:'2018-06-11', end_date:'2018-09-07', course_id: 3, instructor_id: 3)

Student.create(first_name:'Tim', last_name:'Barth', age:27, education:'B.A', email:'tbarth@gmail.com', cohort_id: 1)
Student.create(first_name:'Pam', last_name:'Porterhouse', age:38, education:'A.A.', email:'pamport@gmail.com', cohort_id: 4)
Student.create(first_name:'Sam', last_name:'Smith', age:30, education:'B.S.', email:'ssmith@gmail.com', cohort_id: 1)
Student.create(first_name:'Matt', last_name:'Horwat', age:24, education:'B.A.', email:'mhorwat@gmail.com', cohort_id: 2)
Student.create(first_name:'Susan', last_name:'Sommers', age:53, education:'M.S.', email:'ssommers@gmail.com', cohort_id: 3)



