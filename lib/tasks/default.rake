# frozen_string_literal: true

require 'rake-n-bake'

Rake::Task[:default].prerequisites.clear if Rake::Task.task_defined? :default

task default: %i[
  slim_lint
  bake:rubocop
  bake:rspec
  cucumber
  cucumber:wip
  wit_success
]

task wit_success: :environment do
  success = <<~SUCCESS_MESSAGE
  _                     _ ______      _
 | |                   | |  ____|    | |
 | |     ___   ___ __ _| | |__   __ _| |_
 | |    / _ \ / __/ _` | |  __| / _` | __|
 | |___| (_) | (_| (_| | | |___| (_| | |_
 |______\___/ \___\__,_|_|______\__,_|\__|


  SUCCESS_MESSAGE
  puts success
end
