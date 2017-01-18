# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

(1..5).to_a.each do |org_id|
	Organization.create(id: org_id, name: "Organization #{org_id}", slug: "Org_#{org_id}")
end

org_1_hosts = %w(some_host_org1 some_host_org2)
org_2_hosts = %w(org_2_host org_3_host)




Event.create(organization_id: 1, host_name: org_1_hosts.sample, action: 'new')
Event.create(organization_id: 1, host_name: org_1_hosts.sample, action: 'new1')
Event.create(organization_id: 1, host_name: org_1_hosts.sample, action: 'new2')
Event.create(organization_id: 2, host_name: org_1_hosts.sample, action: 'new3')
Event.create(organization_id: 2, host_name: org_1_hosts.sample, action: 'new4')
Event.create(organization_id: 2, host_name: org_1_hosts.sample, action: 'new5')
Event.create(organization_id: 3, host_name: org_1_hosts.sample, action: 'new6')
Event.create(organization_id: 4, host_name: org_2_hosts.sample, action: 'new7')
Event.create(organization_id: 5, host_name: org_2_hosts.sample, action: 'new8')
