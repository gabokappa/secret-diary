require_relative './secret_diary'
class DiaryEntries < SecretDiary
  def initialize
    @entries = []
    @locked = 1
  end
  def add_entry(entry, diary)
    fail 'Diary locked' if diary.locked == 1

    @entries << entry
    entry
  end

  def get_entries(entry, diary)
    fail 'Diary locked' if diary.locked == 1

    @entries[entry]
  end

end
