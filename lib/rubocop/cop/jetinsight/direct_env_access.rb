module RuboCop
  module Cop
    module Style
      class DirectEnvAccess < Cop
        MSG = 'Use `EnvironmentHelper.get` instead of `ENV`.'

        def_node_matcher :bad_method?, <<~PATTERN
          (const nil? :ENV ...)
        PATTERN

        def on_send(node)
          return unless bad_method?(node)

          add_offense(node)
        end
      end
    end
  end
end
