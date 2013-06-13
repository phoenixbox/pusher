require "spec_helper"

feature "unauthenticated user wants to log in with twitter" do

  context "they visit the homepage"do
    
    before(:each) do
      visit root_path
    end

    it "has a the banner-copy" do 
      within(:css, "#home-dialogue"){
        expect(page).to have_css('div#banner-copy')
      }
    end

    xit "has the headline" do
      within(:css, )
    end

    it "has the twitter login button" do
      within(:css, "#login-button"){
        expect(page).to have_css('a#twitter-login')
      }
    end

  end #end of context

end #end of feature