# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

issue_1 = Issue.create(name: "Spring 2010", title: "The Future of Financial Regulation", issue_img: "Spring 2010.jpg")
issue_2 = Issue.create(name: "Spring 2012", title: "The Changing Face of the World", issue_img: "Spring 2012.jpg")
issue_3 = Issue.create(name: "Winter 2012", title: "Technology: What's Next?", issue_img: "Winter 2012.jpg")
issue_4 = Issue.create(name: "Spring 2013", title: "The Debt Nexus", issue_img: "Spring 2013.jpg")
