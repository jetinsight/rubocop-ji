module RuboCop
  module Cop
    module Style
      class DirectEnvAccess < Cop
        MSG = 'Use `EnvAccess` instead of `ENV` to access or check environment variables.'

        def_node_matcher :bad_method?, <<~PATTERN
          (send (const ... :ENV) ...)
        PATTERN

        def on_send(node)

          return unless bad_method?(node)

          add_offense(node)
        end
      end
    end
  end
end
