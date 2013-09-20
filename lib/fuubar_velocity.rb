require 'fuubar'

class FuubarVelocity < Fuubar
  def dump_summary(duration, example_count, failure_count, pending_count)
    super(duration, example_count, failure_count, pending_count)

    time_per_spec = duration / example_count
    velocity = 1 / time_per_spec

    output.puts "\nVelocity (spec/sec): #{velocity.round(2)}\n"
  end
end
