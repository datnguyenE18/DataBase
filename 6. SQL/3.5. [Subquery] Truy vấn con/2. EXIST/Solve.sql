SELECT students.id,students.name,students.club_id 
FROM students, clubs
WHERE clubs.id = students.club_id
ORDER BY students.id;