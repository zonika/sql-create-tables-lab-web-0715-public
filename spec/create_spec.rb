describe "Creating a cats table" do
  before do
    @db = SQLite3::Database.new(':memory:')
    @sql_runner = SQLRunner.new(@db)
    @sql_runner.execute_sql_create
  end

  it "creates a cats table with a name field" do
    expect{@db.execute("SELECT name FROM cats;")}.to_not raise_exception
  end

  it "creates a cats table with an age field" do
    expect{@db.execute("SELECT age FROM cats;")}.to_not raise_exception
  end

  it "creates a cats table with a gender field" do
    expect{@db.execute("SELECT gender FROM cats;")}.to_not raise_exception
  end

  it "creates a cats table with a breed field" do
    expect{@db.execute("SELECT breed FROM cats;")}.to_not raise_exception
  end

  it "creates a cats table with a temperment field" do
    expect{@db.execute("SELECT temperment FROM cats;")}.to_not raise_exception
  end

  it "creates a cats table with a declawed field" do
    expect{@db.execute("SELECT declawed FROM cats;")}.to_not raise_exception
  end

  it "creates a table with an id as a primary key" do
    expect(@db.execute("PRAGMA table_info(cats);").detect { |arr| arr[-1] == 1 && arr[2] == "INTEGER" }.length).to eq(6)
  end
end
