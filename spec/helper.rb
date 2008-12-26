require 'bacon'

Bacon.summary_on_exit
Bacon.extend(Bacon::TestUnitOutput)

require 'lib/innate'

Innate.setup_middleware

=begin
Innate.start do
  use Rack::CommonLogger
  use Rack::ShowExceptions

  map '/' do
    use Rack::Lint
    run Innate::Mock
  end
end
=end
