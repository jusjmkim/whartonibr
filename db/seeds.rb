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

highlight_3 = Highlight.create(issue_id: issue_2.id,
                              title: "Interview with Brian Roberts, Chairman and CEO of Comcast Corporation Interviewed",
                              description: "“I always knew I wanted to work for my father… as I think about the time from my youth to these last
                              few years, I start by saying that everything that is great about America can be captured in the Comcast 
                              story. It’s been a wild, exciting and uneven ride.”"
                              )

highlight_4 = Highlight.create(issue_id: issue_2.id,
                              title: "Tremors in the High-Tech Powerhouse",
                              description: "Israel has become a high-tech powerhouse. Its scientific productivity has been fueled by military
                              advances, waves of immigrants, a political and economic infrastructure designed to foster innovation, 
                              and a culture of risk-taking and individuality."
                              )

highlight_5 = Highlight.create(issue_id: issue_3.id,
                              title: "Post-Revolution: The Road to Recovery",
                              description: "Social media has transformed self-expression in the Arab world; a public consensus can now be
                              generated without censorship. It has allowed for the cure of vestiges of past regimes through social 
                              entrepreneurship. This article explores changing times due to the growth of volunteerism culture.")

highlight_6 = Highlight.create(issue_id: issue_3.id,
                              title: "The Brain Trust Behind Woody, Nemo, and Merida: A Look Inside Pixar with Producer Katherine",
                              description: "“While there is no formula for the Pixar movie, the timelines all are roughly four to six years…we really 
                              start working on the film as a film and iterating…until the movie is done by replacing storyboards with 
                              layout, then animation, then lighting…until it’s what we call “production-approved.”")

highlight_7 = Highlight.create(issue_id: issue_4.id,
                              title: "The Debt Nexus",
                              description: "A major issue regarding cost of debt is increasing interest rates. Fans of raising the debt ceiling cite 
                              foreign nations’ sensitivity to preserving kind relations with the US as a reason not to increase interest 
                              rates, but S&P’s downgrade of the US’s credit rating represents a different analysis.")

highlight_8 = Highlight.create(issue_id: issue_4.id,
                              title: "Arianna Huffington: The Founder, Chair, President, and Editor-in-Chief of the Huffington Post",
                              description: "Arianna Huffington: “Our biggest…problem right now isn’t government spending or the long-term deficit 
                              horizon. It’s jobs. And…the best solution for the deficit is growth.”")
