$: << ::File.expand_path("../../fnordmetric/lib/", __FILE__)

require "fnordmetric"

FnordMetric.namespace :blubber do

  gauge :events_total, :tick => 10

  event :"*" do
    incr :events_total
  end


  gauge :skip_votes, :tick => 10
  gauge :yes_votes, :tick => 10
  gauge :maybe_votes, :tick => 10

  event(:action_skip){ incr :skip_votes}
  event(:action_yes){ incr :yes_votes}
  event(:action_maybe){ incr :maybe_votes}


  widget 'Channels', {
    :title => "Snafu Foobar",
    :type => :timeline,
    :width => 30,
    :gauges => :events_total
  }

  widget 'Channels', {
    :title => "Total Events",
    :type => :timeline,
    :width => 70,
    :gauges => :events_total
  }

  widget 'Channels', {
    :title => "Yes/No/Skip-Votes",
    :type => :timeline,
    :include_current => false,
    :gauges => [:skip_votes, :yes_votes, :maybe_votes]
  }

end

fm_opts = {}
fm_opts.merge!(:web_interface => ["0.0.0.0", "2323"]) if ENV['DEV']

FnordMetric.run(fm_opts)