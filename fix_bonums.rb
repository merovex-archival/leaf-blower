[{"id" => 2, "name" => "Remove"},
{"id" => 1, "name" => "Remove"},
{"id" => 3, "name" => "Remove"},
{"id" => 5, "name" => "Ethan Bender"},
{"id" => 6, "name" => "Unnamed"},
{"id" => 7, "name" => "Extra Hobby Leaves"},
{"id" => 8, "name" => "Asa Gleeson"},
{"id" => 9, "name" => "Tyler Solomon"},
{"id" => 10, "name" => "Magna Carta"},
{"id" => 11, "name" => "Marine Corp Museum"},
{"id" => 45, "name" => "Watched two Science Videos"},
{"id" => 17, "name" => "Asa Gleeson"},
{"id" => 18, "name" => "Made a Meal"},
{"id" => 4, "name" => "Presented Chess"},
{"id" => 19, "name" => "Home Repair"},
{"id" => 20, "name" => "Memorized 8 verses"},
{"id" => 23, "name" => "Wrote Note of Encouragement"},
{"id" => 24, "name" => "Taking Tae Kwon Do Class"},
{"id" => 25, "name" => "Knot Tying"},
{"id" => 26, "name" => "Made and Presented Periscope"},
{"id" => 27, "name" => "Attended a Play"},
{"id" => 28, "name" => "Camping with Church"},
{"id" => 16, "name" => "Historical Marker-"},
{"id" => 15, "name" => "New Hobby--Track"},
{"id" => 13, "name" => "Cloud in a bottle"},
{"id" => 29, "name" => "Made Meal"},
{"id" => 30, "name" => "Hobby Coins"},
{"id" => 31, "name" => "Hobby Aviation"},
{"id" => 32, "name" => "Saw Play \"Honk\""},
{"id" => 33, "name" => "Wakefield Chapel Visit"},
{"id" => 14, "name" => "Presented Hobby Pokemon"},
{"id" => 12, "name" => "Endurance Course"},
{"id" => 34, "name" => "Computer Programming"},
{"id" => 35, "name" => "Attend Chess Club"},
{"id" => 36, "name" => "Helped at Play"},
{"id" => 37, "name" => "Liberty Bell"},
{"id" => 38, "name" => "Walk on National Mall"},
{"id" => 39, "name" => "Learn to Crochet"},
{"id" => 40, "name" => "4 mile bike ride"},
{"id" => 41, "name" => "Exercise Circuit"},
{"id" => 42, "name" => "Visit to Air and Space--"},
{"id" => 43, "name" => "Visit to Natural History Museum"},
{"id" => 44, "name" => "Knot Tying"},
{"id" => 46, "name" => "Watch Survival Shelter videos"},
{"id" => 47, "name" => "Wrote Letter to 5th Grade Teacher"},
{"id" => 48, "name" => "Helped cut grass with Dad gome"},
{"id" => 49, "name" => "Swimming--swim class"},
{"id" => 50, "name" => "Unnamed"},
{"id" => 51, "name" => "Unnamed"},
{"id" => 53, "name" => "Unnamed"},
{"id" => 54, "name" => "Unnamed"},
{"id" => 55, "name" => "Unnamed"},
{"id" => 56, "name" => "Meals for Napal"},
{"id" => 21, "name" => "Volunteered at Church "},
{"id" => 22, "name" => "Volunteered at Church in Nursery"},
{"id" => 57, "name" => "Learned to Knit"},
{"id" => 58, "name" => "Cooking"},
{"id" => 60, "name" => "Heritage Branch #1 Historical Marker"},
{"id" => 61, "name" => "Wakefield Chapel Church Heritage Branch"},
{"id" => 52, "name" => "Points"},
{"id" => 62, "name" => "Spiritual Timeline"},
{"id" => 63, "name" => "Home Safety Check"},
{"id" => 64, "name" => "Prepared Meal"},
{"id" => 65, "name" => "Home repair, Life Skills"},
{"id" => 59, "name" => "Labeling Sewers for Run Off"},
{"id" => 66, "name" => "Fixing Unlinked Bonus"}].each do |b|
	# puts [b["id"], b["name"]].inspect
	bonum = Bonum.find(b["id"])
	
	bonum.name = b["name"]
	bonum.reported_by = "Unknown" if bonum.reported_by == ""
	bonum.earned_on = bonum.created_at if bonum.earned_on.nil?
	puts bonum.inspect
	bonum.save!
	puts bonum.inspect
	# v = {
	# 	:name => b["name"]
	# }
	# v[:reported_by] = "Unknown" if b.reported_by == ""
	# b.update({:name => b["name"]})
end