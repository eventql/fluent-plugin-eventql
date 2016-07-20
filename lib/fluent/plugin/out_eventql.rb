# encoding: UTF-8
require 'date'
require 'fluent/output'
require 'fluent/mixin'

class Fluent::EventqlOutput < Fluent::BufferedOutput
  Fluent::Plugin.register_output('eventql', self)

  include Fluent::HandleTagNameMixin

  config_param :host, :string,  :default => 'localhost',
               :desc => "The IP or domain of EventQL, separate with comma."
  config_param :port, :integer,  :default => 0175,
               :desc => "The HTTP port of EventQL."
  config_param :database, :string, :desc => "The target database"
  config_param :table, :string, :desc => "The target table"
  config_param :user, :string, :desc => "db user"
  config_param :password, :string, :secret => true, :desc => "db password"
  config_param :auth_token, :string, :secret => true, :desc => "db auth token"

  def initialize
    super
  end

  def configure(conf)
    super
  end

  def start
    super
  end

  FORMATTED_RESULT_FOR_INVALID_RECORD = ''.freeze

  def format(tag, time, record)
  end

  def shutdown
    super
  end

  def write(chunk)
  end

end
