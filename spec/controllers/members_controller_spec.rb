require 'spec_helper'

ENV['RAILS_ENV'] ||= 'test'
require 'rails-api'
require File.expand_path('../dummy_rails3.2_api/config/environment', __FILE__)
require 'rspec/rails'
require 'rspec/autorun'
require 'fdoc/spec_watcher'

Fdoc.service_path = File.expand_path('../../fixtures', __FILE__)

describe MembersController do
  include Fdoc::SpecWatcher

  context "#add", :fdoc => "members/add" do
    it "can take an offset" do
      put :add, name: 'Mr Clean', email: 'mrclean@test.com'
    end
  end
end
