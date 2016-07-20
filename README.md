# Fluent::Plugin::EventQL, a plugin for [Fluentd](http://fluentd.org)

fluent-plugin-eventql is a buffered output plugin for fluentd and [EventQL](http://eventql.io).

It allows you to use fluentd as a collector and send logfile or timeseries data to EventQL.

## Installation

    $ fluent-gem install fluent-plugin-eventql

## Usage

Just like other regular output plugins, Use type `eventql` in your fluentd configuration under `match` scope:

`type` `eventql`

--------------

**Options:**

`host`: The IP or domain of EventQL, separate with comma, default to "localhost"

`port`: The HTTP port of EventQL, default to 9175

`database`: The target database. Tou should create the database and grant permissions first

`table`: The target table. You should create the table and grant permissions first

`user`: The DB user in EventQL (optional)

`password`: The password of the EventQL db user (optional)

`auth_token`: The EventQL db auth token  (optional)


## Configuration Example

```
<match mylog.*>
  @type eventql
  host  cloud.eventql.io
  port  9175
  database acme_corp
  table access_logs
  auth_token ...
</match>
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Licence

This package was distributed under MIT licence, see LICENCE file for details.

This plugin was written by the EventQL Authors and was inspired by Fang.Li's plugin.
