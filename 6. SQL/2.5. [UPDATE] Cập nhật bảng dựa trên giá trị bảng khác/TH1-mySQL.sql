UPDATE
    affiliations,
    professors
SET
    professor_id = professors.id
WHERE
    affiliations.first_name = professors.first_name AND affiliations.last_name = professors.last_name;