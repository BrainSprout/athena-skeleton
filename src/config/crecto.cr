require "log"

logger = Log.for("db")
logger.level = :info

Crecto::DbLogger.set_handler(logger)

module Repo
  extend Crecto::Repo

  config do |conf|
    conf.adapter = Crecto::Adapters::Postgres
    conf.uri = ENV["DATABASE_URL"]
  end
end

alias Query = Crecto::Repo::Query
