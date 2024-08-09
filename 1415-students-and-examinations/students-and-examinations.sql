select  distinct st.student_id, st.student_name, su.subject_name, count(ex.student_id) as attended_exams
from students st
cross join subjects su
left join examinations ex
on st.student_id = ex.student_id and ex.subject_name = su.subject_name
group by st.student_id, st.student_name, su.subject_name
order by st.student_id, su.subject_name