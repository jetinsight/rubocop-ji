# frozen_string_literal: true

require 'rubocop'

require_relative 'rubocop/ji'
require_relative 'rubocop/ji/version'
require_relative 'rubocop/ji/inject'

RuboCop::Ji::Inject.defaults!

require_relative 'rubocop/cop/ji_cops'
