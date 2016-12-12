class Event < ActiveRecord::Base
  belongs_to :organization

  validates :organization_id, presence: true
  validates :host_name, presence: true
  validates :action, presence: true

  scope :for_organization, ->(organization_id) { where(organization_id: organization_id) }
  scope :for_host_name, ->(host_name) { where(host_name: host_name) }

  def self.search_recent(organization_id:, count: 100, host_name: nil)
  	by_organization = Event.for_organization(organization_id)
  	by_host_name = host_name ? by_organization.for_host_name(host_name) : by_organization
  	by_host_name.order('id desc').limit(count)
  end
end


