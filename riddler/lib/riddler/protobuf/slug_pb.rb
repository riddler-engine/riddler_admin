# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: riddler/protobuf/slug.proto

require 'google/protobuf'

require 'google/protobuf/timestamp_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_message "riddler.protobuf.Slug" do
    optional :id, :string, 1
    optional :created_at, :message, 2, "google.protobuf.Timestamp"
    optional :updated_at, :message, 3, "google.protobuf.Timestamp"
    optional :name, :string, 4
    optional :status, :string, 5
    optional :content_definition_id, :string, 6
    optional :interaction_identity, :string, 7
    optional :include_predicate, :string, 8
  end
end

module Riddler
  module Protobuf
    Slug = Google::Protobuf::DescriptorPool.generated_pool.lookup("riddler.protobuf.Slug").msgclass
  end
end
