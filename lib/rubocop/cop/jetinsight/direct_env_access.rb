module RuboCop
  module Cop
    module Style
      class JICop < Cop
        MSG = 'Prefer EnvironmentAccessor.get to direct ENV access'.freeze
        def_node_matcher :not_empty_call?, <<~PATTERN
          (const nil :ENV)
        PATTERN
        def on_send(node)
          return unless not_empty_call? node
          add_offense(node)
        end
      end
    end
  end
end
