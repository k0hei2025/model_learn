require 'yaml'
require 'csv'

ActiveRecord::Base.connection.tables.each do |t|
  ActiveRecord::Base.connection.reset_pk_sequence!(t)
end

authors = YAML.load_file('db/masters/authors.yml')
authors.each do |author|
  Author.create!(id: author['id'], name: author['name'], age: author['age'])
end
