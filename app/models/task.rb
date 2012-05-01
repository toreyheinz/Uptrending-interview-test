class Task
  include MongoMapper::Document

  key :name
  key :completed_at, Time

  scope :completed, where(:completed_at.ne => nil)
  scope :incomplete, where(:completed_at => nil)

  def mark_done
    update_attribute :completed_at, Time.now
  end
end