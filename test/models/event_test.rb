require 'test_helper'

class EventTest < ActiveSupport::TestCase
  #test scopes
  #test validations
  #test search_recent
  def setup
  	@robocorp = Organization.create(name: 'robocorp', slug: 'robocorp')
  	@arcade = Organization.create(name: 'arcade', slug: 'arcade')
  	e1 = Event.create(organization_id: @robocorp.id, host_name: 'robocorp', action: 'un'),
    e2 = Event.create(organization_id: @arcade.id, host_name: 'arcade', action: 'dos'),
    e3 = Event.create(organization_id: @robocorp_id, host_name: 'robocorp2', action: 'tres')
   end

    test "Last n events of an organization" do 
   	setup
    results = Event.search_recent(organization_id: @robocorp.id) 
    assert results.size, 2
   end

   test "Last n events of a specific host within an organization" do 
   	setup
    results = Event.search_recent(organization_id: @robocorp.id, count: 10, host_name: 'robocorp2') 
    assert results.size, 1
   end
end