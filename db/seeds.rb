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

issue_0 = Issue.create(name: "Fall 2009", title: "History of Our Financial Crises", issue_img: "Fall 2009.jpg", volume: 1)
issue_01 = Issue.create(name: "Fall 2010", title: "Debt Crisis in Europe", issue_img: "Fall 2010.jpg", volume: 2)
issue_1 = Issue.create(name: "Spring 2010", title: "The Future of Financial Regulation", issue_img: "Spring 2010.jpg", volume: 3)
issue_2 = Issue.create(name: "Spring 2012", title: "The Changing Face of the World", issue_img: "Spring 2012.jpg", volume: 4)
issue_3 = Issue.create(name: "Winter 2012", title: "Technology: What's Next?", issue_img: "Winter 2012.jpg", volume: 5)
issue_4 = Issue.create(name: "Spring 2013", title: "The Debt Nexus", issue_img: "Spring 2013.jpg", volume: 6)
issue_5 = Issue.create(name: "Autumn / Winter 2013", title: "Luxury", issue_img: "Fall 2013.jpg", volume: 7)
issue_6 = Issue.create(name: 'Spring / Summer 2014', title: 'Defining Leadership', issue_img: 'Spring 2014.png', volume: 8)
issue_7 = Issue.create(name: "Autumn / Winter 2014", title: "The Investment Pitchbook", issue_img: 'Fall 2014.png', volume: 9)

highlight_0 = Highlight.create(issue_id: issue_0.id,
                              title: "Interview with Jeremy Siegel, Professor of Finance, Wharton School Interviewed by
                              Maxwell Black (W’10) and Daniel Hellwig (W’11)",
                              description: "“My proposal is that if you are ‘too big to fail,’ you are required to have more equity cushion. You must 
                              have more preferred stock”…“The demand for financial services is as strong as ever. The only financial 
                                service that will not be demanded is the subprime mortgage business.”")

highlight_00 = Highlight.create(issue_id: issue_0.id,
                               title: "GCC’s Monetary Union: Then There Were Four",
                               description: "An agreement among rulers of six Arabian Gulf nations to form a Gulf Corporation Council common 
                               market would establish a single GCC currency by 2010. However, the odds of meeting this deadline were 
                                slim. This article focuses on the truth behind the inevitable question: Why the setback?")

highlight_01 = Highlight.create(issue_id: issue_01.id,
                               title: "Interview with Dr. Joseph Ackermann, CEO, Deutsche Bank Interviewed by Daniel Hellwig (W’11)",
                               description: "“The most important fact is that the [Greek] rescue package has bought three years of time…If the
                               quick set-up of the EFSF can serve as a precedent for a new pragmatic approach to economic policy
                                coordination in Europe, I am confident that the challenges ahead will be mastered to Europe’s advantage”")

highlight_001 = Highlight.create(issue_id: issue_01.id,
                                title: "European Debt Crisis: Back from the Brink… for Now",
                                description: "As 2009 ended, the global economy was no longer close to collapse. Recovery had begun in many 
                                countries, but effects of events in Greece still threaten to destabilize the economy. This article explores 
                                the causes and consequences of this phenomenon, which are crucial to economic recovery.")

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

highlight_9 = Highlight.create(issue_id: issue_5.id,
                              title: "The Psychology of Top Shelf Purchases",
                              description: "Rational humans often weigh the pros and cons of decisions, and this is the basis of classical economics: 
                              price increases lead to lower demand. However, this “rule” changes with luxury goods. Products that 
                              seem to be of a higher price or quality make us think and react uncharacteristically.")

highlight_10 = Highlight.create(issue_id: issue_5.id, 
                               title: "The Business of Luxury Comfort: A Look into the Four Seasons Formula for Success Interviewed by Lauren Zakarian-Cogswell (W’15)",
                               description: "Robin Brown: “…It’s in bringing out…the incredible gift to deliver a level of intuitive service that does 
                               not exist with just any hotel or other service environment, period.”")
highlight_11 = Highlight.create(issue_id: issue_6.id,
                                title: "China's Crossroads: Leadership in Transformation",
                                description: "Robust economic growth has been the prime focus of the Chinese government for the past two decades. However, China has reached a new stage where the government, led by President Xi Jinping, must redefine its visions for the future and confront domestic issues.")
highlight_12 = Highlight.create(issue_id: issue_6.id,
                                title: "A View of Leadership from Behind the Lens with Photographer Platon Antoniou",
                                description: "Platon: \"People in power are realizing that they have to come up with new models of leadership. They have to readdress their core values...Compassion has not been part of the equation of being a good leader... in today’s society, that has to be the case now.\"")
highlight_13 = Highlight.create(issue_id: issue_7.id,
                                title: "High Altitude, High Yield: Sovereign Debt in Jaguar Economies",
                                description: "In a world of zero interest rates and poor fixed income performance, the debt of certain Latin American countries like Peru and Colombia merit a closer look due to strong economic performance stemming from governmental and fiscal reforms.")
highlight_14 = Highlight.create(issue_id: issue_7.id,
                                title: "IBR Conversation with Yie-Hsin Hung",
                                description: "Yie-Hsin Hung: \"The long-term nature of the investment management business suggests that all efforts take time to realize...The core value proposition of the business is to deliver excess returns for investors.\"")