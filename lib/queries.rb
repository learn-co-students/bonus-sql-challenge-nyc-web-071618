# Write methods that return SQL queries for each part of the challeng here

def guest_with_most_appearances
  # write your query here!
  # This is the wrong answer,
  #I can't get the point from the requirement
  #if you know the answer, please explain the requirement for me
  #Thank you.
  DB.execute("select year, show, _group,max(c) from  (select *,count(id) as c from guests group by _group);
")
end
