# Parse the CSV and seed the database here! Run 'ruby db/seed' to execute this code.


#sqlite> create table guests (id integer primary key, year integer, GoogleKnowlege_Occupation text, show text, group text, Raw_Guest_List text)
str_list = []


CSV.foreach("./daily_show_guests.csv") do |row|
  # use row here...
  str ="(\'#{row.join('\',\'')}\')"
  str_list << str
  #puts "(\"#{row.join('","')}\")"
  str = "insert into guests(YEAR,GoogleKnowlege_Occupation,Show,_Group,Raw_Guest_List) values(?,?,?,?,?)"
  #puts str
  DB.execute(str, row)
end

#puts str_list.join(',')

#DB.execute("insert into guests(YEAR,GoogleKnowlege_Occupation,Show,_Group,Raw_Guest_List) values #{str_list.join(',')}")
