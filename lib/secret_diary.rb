require_relative './diary_entries'
class SecretDiary
  attr_reader :locked
  def initialize
    @locked = 1
     @entries = []
  end

  def unlock
    @locked = 0
  end

  def locked?
    @locked
  end

  def lock
    fail 'Diary already locked' if locked? == 1

    @locked = 1
  end

  # def add_entry(entry)
  #   fail 'Diary locked' if locked? == 1
  #
  #   @entries << entry
  #   entry
  # end
  #
  # def get_entries(entry)
  #   fail 'Diary locked' if locked? == 1
  #
  #   @entries[entry]
  # end
end
