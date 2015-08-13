require_relative 'environment'

class SQLRunner

  def initialize(db)
    @db = db
  end

  def execute_sql_create
    sql = File.read("lib/create.sql")
    @db.execute_batch(sql)
  end
end
