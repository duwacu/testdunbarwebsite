Then (/^I should be logged out$/) do
    page.path =~ logout_path
end