namespace :db do
  desc "Erase and fill database"
  # creating a rake task within db namespace called 'populate'
  # executing 'rake db:populate' will cause this script to run
  task :populate => :environment do
    # Drop the old db and recreate from scratch
    Rake::Task['db:reset'].invoke
    # # Rake::Task['db:create'].invoke
    # # Invoke rake db:migrate
    Rake::Task['db:migrate'].invoke
    # Rake::Task['db:test:prepare'].invoke
    

    require 'open-uri'
    require 'Nokogiri'
    
    hillary_clinton = Candidate.new(first_name: 'Hillary', last_name: 'Clinton', party: 'Democratic Party')
    hillary_clinton.graphic = '<div class="ftb-widget" data-width="500" data-height="400" data-widget-id="b9d30UgnSmN" data-href="http://presidential-candidates.insidegov.com/l/40/Hillary-Clinton" ><a href="http://presidential-candidates.insidegov.com/l/40/Hillary-Clinton" target="_blank"  style="font:14px/16px arial;color:#3d3d3d;">Hillary Clinton Presidential Candidate Profile | InsideGov</a></div><script async src="https://s.graphiq.com/rx/widgets.js"></script>'
    hillary_clinton.image = 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/27/Hillary_Clinton_official_Secretary_of_State_portrait_crop.jpg/330px-Hillary_Clinton_official_Secretary_of_State_portrait_crop.jpg'
    hillary_clinton.election_year = 2016
    hillary_clinton.save!
    bernie_sanders = Candidate.new(first_name: 'Bernie', last_name: 'Sanders', party: 'Democratic Party')
    bernie_sanders.image = 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/de/Bernie_Sanders.jpg/330px-Bernie_Sanders.jpg'
    bernie_sanders.graphic = '<div class="ftb-widget" data-width="500" data-height="400" data-widget-id="7SW7bxOPpBz" data-href="http://presidential-candidates.insidegov.com/l/35/Bernie-Sanders" ><a href="http://presidential-candidates.insidegov.com/l/35/Bernie-Sanders" target="_blank"  style="font:14px/16px arial;color:#3d3d3d;">Bernie Sanders Presidential Candidate Profile | InsideGov</a></div><script async src="https://s.graphiq.com/rx/widgets.js"></script>'
    bernie_sanders.election_year = 2016
    bernie_sanders.save!
    donald_trump = Candidate.new(first_name: 'Donald', last_name: 'Trump', party: 'Republican Party')
    donald_trump.image = 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Donald_Trump_September_3_2015.jpg/330px-Donald_Trump_September_3_2015.jpg'
    donald_trump.graphic = '<div class="ftb-widget" data-width="500" data-height="400" data-widget-id="8Cbk7x82PCl" data-href="http://presidential-candidates.insidegov.com/l/70/Donald-Trump" ><a href="http://presidential-candidates.insidegov.com/l/70/Donald-Trump" target="_blank"  style="font:14px/16px arial;color:#3d3d3d;">Donald Trump Presidential Candidate Profile | InsideGov</a></div><script async src="https://s.graphiq.com/rx/widgets.js"></script>'
    donald_trump.election_year = 2016
    donald_trump.save!
    ben_carson = Candidate.new(first_name: 'Ben', last_name: 'Carson', party: 'Republican Party')
    ben_carson.graphic = '<div class="ftb-widget" data-width="500" data-height="482" data-widget-id="akDOyz9uLaZ" data-href="http://presidential-candidates.insidegov.com/l/64/Ben-Carson" ><a href="http://presidential-candidates.insidegov.com/l/64/Ben-Carson" target="_blank"  style="font:14px/16px arial;color:#3d3d3d;">Ben Carson Presidential Candidate Profile | InsideGov</a></div><script async src="https://s.graphiq.com/rx/widgets.js"></script>'
    ben_carson.image = 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f5/Ben_Carson_by_Gage_Skidmore_5.jpg/330px-Ben_Carson_by_Gage_Skidmore_5.jpg'
    ben_carson.election_year = 2016
    ben_carson.save!
    marco_rubio = Candidate.new(first_name: 'Marco', last_name: 'Rubio', party: "Republican Party")
    marco_rubio.image = 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/79/Marco_Rubio%2C_Official_Portrait%2C_112th_Congress.jpg/330px-Marco_Rubio%2C_Official_Portrait%2C_112th_Congress.jpg'
    marco_rubio.graphic = '<div class="ftb-widget" data-width="500" data-height="482" data-widget-id="es8ZBrBMbIx" data-href="http://presidential-candidates.insidegov.com/l/50/Marco-Rubio" ><a href="http://presidential-candidates.insidegov.com/l/50/Marco-Rubio" target="_blank"  style="font:14px/16px arial;color:#3d3d3d;">Marco Rubio Presidential Candidate Profile | InsideGov</a></div><script async src="https://s.graphiq.com/rx/widgets.js"></script>'
    marco_rubio.election_year = 2016
    marco_rubio.save!
    ted_cruz = Candidate.new(first_name: "Ted", last_name: "Cruz", party: "Republican Party")
    ted_cruz.image = 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Ted_Cruz%2C_official_portrait%2C_113th_Congress.jpg/330px-Ted_Cruz%2C_official_portrait%2C_113th_Congress.jpg'
    ted_cruz.graphic = '<div class="ftb-widget" data-width="500" data-height="482" data-widget-id="4Fkc7mh6NqR" data-href="http://presidential-candidates.insidegov.com/l/62/Ted-Cruz" ><a href="http://presidential-candidates.insidegov.com/l/62/Ted-Cruz" target="_blank"  style="font:14px/16px arial;color:#3d3d3d;">Ted Cruz Presidential Candidate Profile | InsideGov</a></div><script async src="https://s.graphiq.com/rx/widgets.js"></script>'
    ted_cruz.election_year = 2016
    ted_cruz.save!
    jeb_bush = Candidate.new(first_name: "Jeb", last_name: "Bush", party: "Republican Party")
    jeb_bush.graphic = '<div class="ftb-widget" data-width="500" data-height="482" data-widget-id="xP14tOPmTj" data-href="http://presidential-candidates.insidegov.com/l/46/Jeb-Bush" ><a href="http://presidential-candidates.insidegov.com/l/46/Jeb-Bush" target="_blank"  style="font:14px/16px arial;color:#3d3d3d;">Jeb Bush Presidential Candidate Profile | InsideGov</a></div><script async src="https://s.graphiq.com/rx/widgets.js"></script>'
    jeb_bush.image = 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/a5/Governor_of_Florida_Jeb_Bush_at_Southern_Republican_Leadership_Conference_May_2015_by_Michael_Vadon_16.jpg/375px-Governor_of_Florida_Jeb_Bush_at_Southern_Republican_Leadership_Conference_May_2015_by_Michael_Vadon_16.jpg'
    jeb_bush.election_year = 2016
    jeb_bush.save!
    carly_fiorina = Candidate.new(first_name: "Carly", last_name: "Fiorina", party: "Republican Party")
    carly_fiorina.graphic = '<div class="ftb-widget" data-width="500" data-height="400" data-widget-id="ijG65gF2wIZ" data-href="http://presidential-candidates.insidegov.com/l/63/Carly-Fiorina" ><a href="http://presidential-candidates.insidegov.com/l/63/Carly-Fiorina" target="_blank"  style="font:14px/16px arial;color:#3d3d3d;">Carly Fiorina Presidential Candidate Profile | InsideGov</a></div><script async src="https://s.graphiq.com/rx/widgets.js"></script>'
    carly_fiorina.image = 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Carly_Fiorina_2015.jpg/330px-Carly_Fiorina_2015.jpg'
    carly_fiorina.election_year = 2016
    carly_fiorina.save!
    rand_paul = Candidate.new(first_name: 'Rand', last_name: 'Paul', party: 'Republican Party')
    rand_paul.image = 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/78/Rand_Paul%2C_official_portrait%2C_112th_Congress_alternate.jpg/330px-Rand_Paul%2C_official_portrait%2C_112th_Congress_alternate.jpg'
    rand_paul.graphic = '<div class="ftb-widget" data-width="500" data-height="482" data-widget-id="1PFnTKPUOyN" data-href="http://presidential-candidates.insidegov.com/l/57/Rand-Paul" ><a href="http://presidential-candidates.insidegov.com/l/57/Rand-Paul" target="_blank"  style="font:14px/16px arial;color:#3d3d3d;">Rand Paul Presidential Candidate Profile | InsideGov</a></div><script async src="https://s.graphiq.com/rx/widgets.js"></script>'
    rand_paul.election_year = 2016
    rand_paul.save!
    john_kasich = Candidate.new(first_name: 'John', last_name: 'Kasich', party: 'Republican Party')
    john_kasich.graphic = '<div class="ftb-widget" data-width="500" data-height="400" data-widget-id="cP0wGLnZXkV" data-href="http://presidential-candidates.insidegov.com/l/47/John-Kasich" ><a href="http://presidential-candidates.insidegov.com/l/47/John-Kasich" target="_blank"  style="font:14px/16px arial;color:#3d3d3d;">John Kasich Presidential Candidate Profile | InsideGov</a></div><script async src="https://s.graphiq.com/rx/widgets.js"></script>'
    john_kasich.image = 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ab/Governor_John_Kasich.jpg/330px-Governor_John_Kasich.jpg'
    john_kasich.election_year = 2016
    john_kasich.save!
    mike_huckabee = Candidate.new(first_name: 'Mike', last_name: 'Huckabee', party: 'Republican Party')
    mike_huckabee.graphic = '<div class="ftb-widget" data-width="500" data-height="400" data-widget-id="fzljo11wf1X" data-href="http://presidential-candidates.insidegov.com/l/52/Mike-Huckabee" ><a href="http://presidential-candidates.insidegov.com/l/52/Mike-Huckabee" target="_blank"  style="font:14px/16px arial;color:#3d3d3d;">Mike Huckabee Presidential Candidate Profile | InsideGov</a></div><script async src="https://s.graphiq.com/rx/widgets.js"></script>'
    mike_huckabee.image = 'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f2/Mike_Huckabee_by_Gage_Skidmore.jpg/330px-Mike_Huckabee_by_Gage_Skidmore.jpg'
    mike_huckabee.election_year = 2016
    mike_huckabee.save!
    chris_christie = Candidate.new(first_name: 'Chris', last_name: "Christie", party: 'Republican Party')
    chris_christie.graphic = '<div class="ftb-widget" data-width="500" data-height="400" data-widget-id="suZy819FIh" data-href="http://presidential-candidates.insidegov.com/l/37/Chris-Christie" ><a href="http://presidential-candidates.insidegov.com/l/37/Chris-Christie" target="_blank"  style="font:14px/16px arial;color:#3d3d3d;">Chris Christie Presidential Candidate Profile | InsideGov</a></div><script async src="https://s.graphiq.com/rx/widgets.js"></script>'
    chris_christie.image = 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/50/Chris_Christie_April_2015_%28cropped%29.jpg/330px-Chris_Christie_April_2015_%28cropped%29.jpg'
    chris_christie.election_year = 2016
    chris_christie.save!
    martin_omalley = Candidate.new(first_name: 'Martin', last_name: "O'Malley", party: 'Democratic Party')
    martin_omalley.graphic = '<div class="ftb-widget" data-width="500" data-height="400" data-widget-id="jGQuqTtNFzv" data-href="http://presidential-candidates.insidegov.com/l/51/Martin-O-Malley" ><a href="http://presidential-candidates.insidegov.com/l/51/Martin-O-Malley" target="_blank"  style="font:14px/16px arial;color:#3d3d3d;">Martin O\'Malley Presidential Candidate Profile | InsideGov</a></div><script async src="https://s.graphiq.com/rx/widgets.js"></script>'
    martin_omalley.image = 'https://upload.wikimedia.org/wikipedia/commons/thumb/3/37/Governor_O%27Malley_Portrait.jpg/330px-Governor_O%27Malley_Portrait.jpg'
    martin_omalley.election_year = 2016
    martin_omalley.save!
    rick_santorum = Candidate.new(first_name: "Rick", last_name: "Santorum", party: "Republican Party")
    rick_santorum.graphic = '<div class="ftb-widget" data-width="500" data-height="400" data-widget-id="2wfA4zfinZ3" data-href="http://presidential-candidates.insidegov.com/l/58/Rick-Santorum" ><a href="http://presidential-candidates.insidegov.com/l/58/Rick-Santorum" target="_blank"  style="font:14px/16px arial;color:#3d3d3d;">Rick Santorum Presidential Candidate Profile | InsideGov</a></div><script async src="https://s.graphiq.com/rx/widgets.js"></script>'
    rick_santorum.image = 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8c/Rick_Santorum_by_Gage_Skidmore_8.jpg/330px-Rick_Santorum_by_Gage_Skidmore_8.jpg'
    rick_santorum.election_year = 2016
    rick_santorum.save!
    bobby_jindal = Candidate.new(first_name: "Bobby", last_name: "Jindal", party: "Republcian Party")
    bobby_jindal.image = 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1c/Bobby_Jindal%2C_official_109th_Congressional_photo.jpg/330px-Bobby_Jindal%2C_official_109th_Congressional_photo.jpg'
    bobby_jindal.graphic = '<div class="ftb-widget" data-width="500" data-height="400" data-widget-id="hD5TUsfEXiJ" data-href="http://presidential-candidates.insidegov.com/l/56/Bobby-Jindal" ><a href="http://presidential-candidates.insidegov.com/l/56/Bobby-Jindal" target="_blank"  style="font:14px/16px arial;color:#3d3d3d;">Bobby Jindal Presidential Candidate Profile | InsideGov</a></div><script async src="https://s.graphiq.com/rx/widgets.js"></script>'
    bobby_jindal.election_year = 2016
    bobby_jindal.save!
    george_pataki = Candidate.new(first_name: "George", last_name: "Pataki", party: "Republican Party")
    george_pataki.image = 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/George_Pataki_August_2015.jpg/330px-George_Pataki_August_2015.jpg'
    george_pataki.graphic = '<div class="ftb-widget" data-width="500" data-height="400" data-widget-id="c8qkvWYCnUF" data-href="http://presidential-candidates.insidegov.com/l/68/George-Pataki" ><a href="http://presidential-candidates.insidegov.com/l/68/George-Pataki" target="_blank"  style="font:14px/16px arial;color:#3d3d3d;">George Pataki Presidential Candidate Profile | InsideGov</a></div><script async src="https://s.graphiq.com/rx/widgets.js"></script>'
    george_pataki.election_year = 2016
    george_pataki.save!
    jim_gilmore = Candidate.new(first_name: "Jim", last_name: "Gilmore", party: "Republican Party")
    jim_gilmore.graphic = '<div class="ftb-widget" data-width="500" data-height="400" data-widget-id="eSL7dcC8FBH" data-href="http://presidential-candidates.insidegov.com/l/72/Jim-Gilmore" ><a href="http://presidential-candidates.insidegov.com/l/72/Jim-Gilmore" target="_blank"  style="font:14px/16px arial;color:#3d3d3d;">Jim Gilmore Presidential Candidate Profile | InsideGov</a></div><script async src="https://s.graphiq.com/rx/widgets.js"></script>'
    jim_gilmore.image = 'https://upload.wikimedia.org/wikipedia/commons/thumb/5/54/Jim_Gilmore_by_Gage_Skidmore_2.jpg/330px-Jim_Gilmore_by_Gage_Skidmore_2.jpg'
    jim_gilmore.election_year = 2016
    jim_gilmore.save!
    lindsey_graham = Candidate.new(first_name: "Lindsey", last_name: "Graham", party: "Republican Party")
    lindsey_graham.image = 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b6/Lindsey_Graham%2C_Official_Portrait_2006.jpg/330px-Lindsey_Graham%2C_Official_Portrait_2006.jpg'
    lindsey_graham.graphic = '<div class="ftb-widget" data-width="500" data-height="400" data-widget-id="3y7SkMRmK7r" data-href="http://presidential-candidates.insidegov.com/l/65/Lindsey-Graham" ><a href="http://presidential-candidates.insidegov.com/l/65/Lindsey-Graham" target="_blank"  style="font:14px/16px arial;color:#3d3d3d;">Lindsey Graham Presidential Candidate Profile | InsideGov</a></div><script async src="https://s.graphiq.com/rx/widgets.js"></script>'
    lindsey_graham.election_year = 2016
    lindsey_graham.save!
    jill_stein = Candidate.new(first_name: "Jill", last_name: "Stein", party: "Green Party")
    jill_stein.image = 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/df/Jill_Stein_2012.jpg/330px-Jill_Stein_2012.jpg'
    jill_stein.graphic = '<div class="ftb-widget" data-width="500" data-height="400" data-widget-id="iuk97YgnV53" data-href="http://presidential-candidates.insidegov.com/l/44/Jill-Stein" ><a href="http://presidential-candidates.insidegov.com/l/44/Jill-Stein" target="_blank"  style="font:14px/16px arial;color:#3d3d3d;">Jill Stein Presidential Candidate Profile | InsideGov</a></div><script async src="https://s.graphiq.com/rx/widgets.js"></script>'
    jill_stein.election_year = 2016
    jill_stein.save!

    candidates = [hillary_clinton, bernie_sanders, donald_trump, ben_carson, marco_rubio, ted_cruz, jeb_bush, carly_fiorina, rand_paul, john_kasich, mike_huckabee, chris_christie, martin_omalley, rick_santorum, bobby_jindal, george_pataki, jim_gilmore, lindsey_graham, jill_stein]

    candidates.each do |c|
        # martin o'malley is a special case. Martin_O%60Malley
        if c.first_name == "Martin"
            url = "http://www.ontheissues.org/Martin_O%60Malley.htm"
        else
            url = "http://www.ontheissues.org/" + c.first_name + "_" + c.last_name + ".htm"
        end
        page = Nokogiri::HTML(open(url))
        # Hillary - 9 - 32
        for i in 8..31
            if c.name == "Hillary Clinton"
                i += 1
            end
            issue_and_quotes = page.css('table')[i].text
            # why don't I have to escae \ in rails console?
            test_arr = issue_and_quotes.split(/\r\n/).map{|i| i.strip!}.reject{|e| e.to_s.empty?}
            issue_pattern = "(?<=" + c.name + " on ).+"
            issue = test_arr[0].match(issue_pattern).to_s.strip
            if !Issue.all.map{|i| i.title}.include? issue
                newCategory = Category.new(name: issue)
                newCategory.save!
                newIssue = Issue.new(title: issue, category_id: newCategory.id)
                newIssue.save!
            end
            # removes the issue + 3 sections of non-quotes
            for j in 1..4
                test_arr.delete_at(0)
            end

            if !test_arr.nil?
                quotes = test_arr
                # need to check if they have no quotes
                for q in quotes
                    qSplit = q.split(/\s(?=\()/)
                    newQuote = Quote.new(body_of_text: qSplit[0], candidate_id: c.id.to_i, issue_id: Issue.where(title: issue).first, date_said: qSplit[1], source: url)
                    newQuote.save!
                end
            end
        end
    end
  end
end