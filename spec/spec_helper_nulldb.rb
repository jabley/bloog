require_relative 'spec_helper_lite'

module SpecHelpers
  def setup_nulldb
    require "active_support"
    require "active_record"
    require 'nulldb'
    schema_path = File.expand_path('../db/schema.rb', File.dirname(__FILE__))
    NullDB.nullify(:schema => schema_path)
  end

  def teardown_nulldb
    NullDB.restore
  end
end
