# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

Issue.delete_all
Highlight.delete_all

issue_1 = Issue.create(name: "Spring 2010", title: "The Future of Financial Regulation", issue_img: "Spring 2010.jpg")
issue_2 = Issue.create(name: "Spring 2012", title: "The Changing Face of the World", issue_img: "Spring 2012.jpg")
issue_3 = Issue.create(name: "Winter 2012", title: "Technology: What's Next?", issue_img: "Winter 2012.jpg")
issue_4 = Issue.create(name: "Spring 2013", title: "The Debt Nexus", issue_img: "Spring 2013.jpg")

highlight_1 = Highlight.create(issue_id: issue_1.id, 
                              title: "Interview with Oswald Gruebel, CEO, UBS Group Interviewed by Daniel Hellwig (W’11)
                              and Hamad Almudhaf ( W’11)",
                              description: "With open transactions and derivative transactions, we are talking about hundreds of trillions of dollars 
                              and this can lead to systemic risk ... We are still trying to solve this problem without a global regulator or 
                              global banking rules for banks.")

highlight_2 = Highlight.create(issue_id: issue_1.id,
                              title: "Pakistan’s Gas Crisis: Pipe Dreams & Empty Pipes",
                              description: "The media is focused on Pakistan’s struggle with fundamentalist insurgency, but the country is also 
                              dealing with an energy crisis. Electricity is rationed and the state can’t provide enough natural gas. This 
                              winter saw the beginning of a serious gas crisis in Pakistan, and there is no easy way out.")
