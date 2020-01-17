# Write your sql queries in this file in the appropriate method like the example below:
#
# def select_category_from_projects
# "SELECT category FROM projects;"
# end

# Make sure each ruby method returns a string containing a valid SQL statement.

def selects_the_titles_of_all_projects_and_their_pledge_amounts_alphabetized_by_title
  "select projects.title, sum(pledges.amount) from projects join pledges on project_id = projects.id group by title order by title;"
end

def selects_the_user_name_age_and_pledge_amount_for_all_pledges_alphabetized_by_name
  "select name, age, sum(amount) from users join pledges on user_id = users.id group by name order by name;"
end

def selects_the_titles_and_amount_over_goal_of_all_projects_that_have_met_their_funding_goal
  "select title, (sum(amount) - funding_goal) from projects join pledges on project_id = projects.id group by title having sum(amount) >= funding_goal;"
end

def selects_user_names_and_amounts_of_all_pledges_grouped_by_name_then_orders_them_by_the_summed_amount
  "select name, sum(amount) from users join pledges on user_id = users.id group by name order by sum(amount);"
end

def selects_the_category_names_and_pledge_amounts_of_all_pledges_in_the_music_category
  "select category, amount from projects join pledges on project_id = projects.id where category = 'music';"
end

def selects_the_category_name_and_the_sum_total_of_the_all_its_pledges_for_the_books_category
  "select category, sum(amount) from projects join pledges on project_id = projects.id group by category having category = 'books';"
end
