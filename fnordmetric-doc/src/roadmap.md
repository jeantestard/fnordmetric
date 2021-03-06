
Todo
====

  Show HN: Open-Source framwork for beautiful real-time dashboards

  → make fnordmetric products italic
  → doc: example: age distribution
  → doc: hacking
  → doc: document all widget options
  → doc: sending data: stomp + amqp


  → implement, _decr, _max, _min for zero config gauges
  → gauge explorer: fix gauges multiple times in select dropdown
  → doc: distribution, toplist and timeseries gauge



Backlog
=======

  → bignumberwidget
  → fancy topbar daterange picker for legacy dashboards
  → make fnordmetric responsive
  → favicon (F)
  → timeseries-widget: cardinal on/off should be flick-switch
  → namespace picker in sidebar
  → distgauge: render std. deviation
  → timeseries-gauge: overview series weights
  → timeseries-gauge: punchcards
  → incr_fraction: implement progressive
  → timeseries gauge: restrict to max resolution
  → formatter: num, time, currency, percent, time_of_day
  → put images into one sprite


Changelog
=========

  1.1.1
    → icons for sidebar
    → simple gauge explorer (style like active users) + html5 api snippet generator
    → new file structure
    → better namespacing for javascript

  1.1.0
    → js api (<div data-gauge="...">)
    → gauge human_titles, units, scale_by
    → added stomp acceptor, amqp acceptor, fyrehose acceptor
    → explicit dashboard initialization with options -> dashboard grouping
    → bugfix: lots of small bugfixes

  1.0.0
    → improved ui
    → highcharts is dead, long live d3.js :)
    → websockets instead of ajax
    → new gauges are variable interval!
    → new gauges: timeseries, toplist, distribution (anti-repetition!)
    → timeseries gauge: fraction api
    → new things: trends, punchards, stdeviation etc
    → splitted up code into acceptor, web, worker etc.
    → splitted up javascript code
    → refactorings, no server-side rendering
    → less ram usage / garbage collection / single tick
    → fnordmetric:announce redis pusub event-data instead of event_id
    → config in multiple files
