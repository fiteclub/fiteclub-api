json.id @resume.id
json.name @resume.name
json.email @resume.email
@resume.categories.each do |category|
  json.set! category.name do
    json.array! category.list_items
  end
end
json.experience @resume.jobs, :start_year, :end_year, :title, :organization
