class Task
  include MongoMapper::Document

  key :name
  key :completed_at, Time

  def mark_done
    update_attribute :completed_at, Time.now
  end
end