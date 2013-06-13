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

    it "has the headline" do
      within(:css, "#banner-copy" ){
        expect(page).to have_css('h1#headline')
        expect(page).to have_css('h5#cover-copy')
        expect(page).to have_content("Pushy")
        expect(page).to have_content("Your simple private chat room")
      }
    end

    it "has the twitter login button" do
      within(:css, "#login-button"){
        expect(page).to have_css('a#twitter-login')
      }
    end

    context "login with twitter with valid credentials" do
      before(:each) do
        visit "http://lvh.me:3000"
        mock_auth_hash
      end

      it "redirects to twitter authorization" do
        click_link("twitter-login")
        expect(page).to have_content("Signed in")
      end

    end

  end #end of context

end #end of feature