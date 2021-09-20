#!/bin/sh
ruby gen_aff_files.rb github_users.json || exit 1
echo 'splitting affiliation files'
ruby split_file.rb ../company_developers.txt ../developers_affiliations.txt && rm ../developers_affiliations.txt ../company_developers.txt
