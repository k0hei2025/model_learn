migrate:
	bundle exec ridgepole -c config/database.yml --apply -f db/Schemafile
seed:
	rails db:seed