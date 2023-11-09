crumb :root do
  link "Home", root_path
end

crumb :tweets do
  link "ツイート一覧", tweets_index_path
  parent :root
end

crumb :contacts do
  link "コンタクト", contacts_index_path
  parent :tweets
end


## crumb :xx do ... end (do~endの間に、アクセスしたいビューのパスや親要素を指定)
# crumb "現在のページ名(表示させるビューにもページ名記述)" do
#   link "パンくずリストでの表示名", "アクセスしたいページのパス"
#   parent :親要素のページ名(前のページ)
# end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).