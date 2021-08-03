# frozen_string_literal: true

module SignNowSDK
  module Resources
    # Document resource on the client side
    class Document
      class << self
        ##
        # Creates a class level attribute.
        # @param name [Symbol] name of the attribute
        # @param opts [Hash] options
        # @option opts [Symbol] :default The value to set as a default for the attribute
        def class_attribute(name, opts = {})
          ivar = "@#{name}"
          instance_variable_set(ivar, opts[:default]) if opts[:default]
          singleton_class.define_method(name) { instance_variable_get(ivar) }
          singleton_class.define_method("#{name}=") do |val|
            instance_variable_set(ivar, val)
          end
          name
        end

        ##
        # Sets attributes on the instance that we expect to get back from the remote server.
        # @param name [Symbol] name of the attribute
        def attribute(name:)
          attributes << name
          attr_accessor name
        end

        ##
        # Find a document given it's id
        # @param id [String]
        def find(id)
          this = allocate
          this.instance_variable_set("@id", id)
          this
        end
      end

      class_attribute :attributes, default: []
      attribute name: :id
    end
  end
end
