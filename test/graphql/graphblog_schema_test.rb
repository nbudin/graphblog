require 'test_helper'

class GraphblogSchemaTest < ActiveSupport::TestCase
  test 'schema contains no breaking changes' do
    old_schema = File.read(File.expand_path('schema.graphql', Rails.root))
    result = GraphQL::SchemaComparator.compare(old_schema, GraphblogSchema.to_definition)

    refute result.breaking?, result.breaking_changes.map(&:message).join("\n")
  end
end
