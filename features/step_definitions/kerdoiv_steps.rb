# encoding: utf-8

Amennyiben(/^megnyitom a kérdőívet "(.*?)"$/) do |site|
  @kerdoiv = Capybara::Session.new(:selenium)
  @kerdoiv.visit site
end


Amennyiben(/^elindítom a kérdőívet$/) do
  @kerdoiv.click_button "Indítás"
end

Amennyiben(/^kiválasztom az (\d+) értéket$/) do |value|
  @kerdoiv.within('.answer') do 
			@kerdoiv.find(:css, ".cbox[value='#{value}']").set(true)
		end	
end

Amennyiben(/^a folytatásra kattintok$/) do
  @kerdoiv.click_button "Folytatás"
end

Amennyiben(/^beírom, hogy "(.*?)"$/) do |answer|
  @kerdoiv.within('.answers') do 
			@kerdoiv.find(:css, "textarea").set(answer)
		end	
end