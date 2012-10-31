# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])

# Create interest related metadata concepts
sports = Concept.create(:name => 'Sports', :category => 'Interest')
#cooking = Concept.create(:name => 'Cooking', :category => 'Interest')
#music = Concept.create(:name => 'Music', :category => 'Interest')
politics = Concept.create(:name => 'Politics', :category => 'Interest')
#comedy = Concept.create(:name => 'Comedy', :category => 'Interest')
#sitcom = Concept.create(:name => 'Sitcom', :category => 'Interest')
#scifi = Concept.create(:name => 'Scifi', :category => 'Interest')
#business = Concept.create(:name => 'Business', :category => 'Interest')

# Create location related metadata concepts
ch = Concept.create(:name => 'Chicago', :category => 'Location')
usa = Concept.create(:name => 'USA', :category => 'Location')

# Create ads/commercials/deals type of metadata concepts
deal = Concept.create(:name => 'Deal', :category => 'Business')
commercial = Concept.create(:name => 'Commercial', :category => 'Business')

# --------------------------------------------------------------------

# Create media with its connections to interest and location concepts
# xyz_media = Item.create(:title => '', :description => '', :author => '', :email => '', :link => '')

# National level sports media
sports_media = Item.create(:title => 'ESPN Greatest Sports Moments of the 20th Century', :description => 'Best compilation of sports events, figures, monents ever watched', :author => 'Youtube User', :email => 'user@youtube.com', :link => 'http://www.youtube.com/watch?v=1wqixdJ49MU')
ItemConcept.create(:item_id => sports_media.id, :concept_id => sports.id)
ItemConcept.create(:item_id => sports_media.id, :concept_id => usa.id)

sports_media = Item.create(:title => 'Federer Vs Young Final Game US OPEN 2012', :description => 'US Open 2012 final between Federer and Young.', :author => 'US Open', :email => 'info@usopen.com', :link => 'http://www.youtube.com/watch?v=Vn9PpeLcfNg')
ItemConcept.create(:item_id => sports_media.id, :concept_id => sports.id)
ItemConcept.create(:item_id => sports_media.id, :concept_id => usa.id)

sports_media = Item.create(:title => 'Dream team USA Basketball 2012 Highlights', :description => 'Highlights of the USA Olympics Dream team 2012.', :author => 'US Olympics Association', :email => 'usa@olympics.com', :link => 'http://www.youtube.com/watch?v=0gUF5-LzWTk')
ItemConcept.create(:item_id => sports_media.id, :concept_id => sports.id)
ItemConcept.create(:item_id => sports_media.id, :concept_id => usa.id)

sports_media = Item.create(:title => 'Nike USA Basketball Commercial', :description => 'A Nike USA Basketball Commercial', :author => 'Nike', :email => 'pr@nike.com', :link => 'http://www.youtube.com/watch?v=2bRxF_NalqI')
ItemConcept.create(:item_id => sports_media.id, :concept_id => sports.id)
ItemConcept.create(:item_id => sports_media.id, :concept_id => usa.id)
ItemConcept.create(:item_id => sports_media.id, :concept_id => commercial.id)

# Chicago level sports media
sports_media = Item.create(:title => 'Chicago Bulls Top 10 Plays of the 2012 Season', :description => 'Check out the Chicago Bulls Top 10 Plays of the 2011-2012 Regular Season!', :author => 'NBA', :email => 'info@nba.com', :link => 'http://www.youtube.com/watch?v=Bwdoprbo8QM')
ItemConcept.create(:item_id => sports_media.id, :concept_id => sports.id)
ItemConcept.create(:item_id => sports_media.id, :concept_id => ch.id)

sports_media = Item.create(:title => 'CHICAGO BEARS 2012 PREVIEW', :description => 'Previews of the upcoming season of the bears in 2012.', :author => 'NFL', :email => 'random@nfl.com', :link => 'http://www.youtube.com/watch?v=fXC3ZC7oum8')
ItemConcept.create(:item_id => sports_media.id, :concept_id => sports.id)
ItemConcept.create(:item_id => sports_media.id, :concept_id => ch.id)

sports_media = Item.create(:title => 'Chicago Sports Teams', :description => 'All the sports teams in Chicago', :author => 'Local fan', :email => 'hmm@sports.com', :link => 'http://www.youtube.com/watch?v=44-GkxeAh7s')
ItemConcept.create(:item_id => sports_media.id, :concept_id => sports.id)
ItemConcept.create(:item_id => sports_media.id, :concept_id => ch.id)

sports_media = Item.create(:title => 'A Deal in your City!', :description => '2012 CHICAGO BULLS - ALL TICKETS ARE 30% OFF FOR ENTIRE SEASON AT TICKETHUNTERONLINE.COM WITH PROMO WICKED', :author => 'TicketHunterOnline', :email => 'deals@tickethunteronline.com', :link => 'http://www.youtube.com/watch?v=C4KDugDwcUA')
ItemConcept.create(:item_id => sports_media.id, :concept_id => sports.id)
ItemConcept.create(:item_id => sports_media.id, :concept_id => ch.id)
ItemConcept.create(:item_id => sports_media.id, :concept_id => deal.id)

# National level politics media
politics_media = Item.create(:title => 'Highlights: Barack Obama and Mitt Romney\'s second presidential debate ', :description => 'Highlights of Obama and Romney\'s second presidential debate.', :author => 'US government', :email => 'info@us.gov', :link => 'http://www.youtube.com/watch?v=HSyv2p0hBn4')
ItemConcept.create(:item_id => politics_media.id, :concept_id => politics.id)
ItemConcept.create(:item_id => politics_media.id, :concept_id => usa.id)

politics_media = Item.create(:title => 'Secretary Hillary Clinton\'s Speech', :description => 'Hillary Clinton\'s best speech during a debate.', :author => 'US Government', :email => 'pr@gov.com', :link => 'http://www.youtube.com/watch?v=gUKMWTO7RWI&feature=related')
ItemConcept.create(:item_id => politics_media.id, :concept_id => politics.id)
ItemConcept.create(:item_id => politics_media.id, :concept_id => usa.id)

politics_media = Item.create(:title => 'US Army Commercial ', :description => 'A commercial about the US Army', :author => 'US Army', :email => 'info@usarmy.com', :link => 'http://www.youtube.com/watch?v=FebdaYn2YeM')
ItemConcept.create(:item_id => politics_media.id, :concept_id => politics.id)
ItemConcept.create(:item_id => politics_media.id, :concept_id => usa.id)
ItemConcept.create(:item_id => politics_media.id, :concept_id => commercial.id)

# Chicago level politics media
politics_media = Item.create(:title => 'Protected Bike Lanes', :description => 'The Chicago Department of Transportation is installing protected bike lanes in the City', :author => 'Transportation Dept', :email => 'info@transport.gov', :link => 'http://www.youtube.com/watch?v=wJPZEfmdlMc')
ItemConcept.create(:item_id => politics_media.id, :concept_id => politics.id)
ItemConcept.create(:item_id => politics_media.id, :concept_id => ch.id)

politics_media = Item.create(:title => 'Mayor Emanuel on growing Chicago\'s economy', :description => 'Chicago Mayor Rahm Emanuel took office just over a year ago. Despite falling budgets, he\'s trying to get his America\'s third largest city growing again.', :author => 'CBSNewsOnline', :email => 'info@cbsnews.com', :link => 'http://www.youtube.com/watch?v=_Y00OetWnV8')
ItemConcept.create(:item_id => politics_media.id, :concept_id => politics.id)
ItemConcept.create(:item_id => politics_media.id, :concept_id => ch.id)

politics_media = Item.create(:title => 'European style bike-share program comes to downtown Chicago', :description => 'B-Cycle, a collaboration among Humana, Trek Bicycle Corp and Crispin Porter + Bogusky, has teamed up with Chicago\'s Bike and Roll, a bicycle rental and tours company, to bring bike sharing to the streets of Chicago.', :author => 'Bike and Roll', :email => 'info@bikeandroll.com', :link => 'http://www.youtube.com/watch?v=J0c6GPz3-G8')
ItemConcept.create(:item_id => politics_media.id, :concept_id => politics.id)
ItemConcept.create(:item_id => politics_media.id, :concept_id => ch.id)
ItemConcept.create(:item_id => politics_media.id, :concept_id => commercial.id)


# using youtube_it gem to pull videos from youtube api: https://github.com/kylejginavan/youtube_it
# client = YouTubeIt::Client.new
# result = client.videos_by(:query => 'Sports')
# videos = result.videos
# videos.first.player_url
