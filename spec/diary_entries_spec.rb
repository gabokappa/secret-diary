require_relative '../lib/diary_entries'
require_relative '../lib/secret_diary'
describe DiaryEntries do
  let(:diary_entries) { DiaryEntries.new }
  let(:diary) { SecretDiary.new }

  describe '#add_entry' do
    it 'throws an error when locked' do
      allow(diary).to receive(:locked) { 1 }
      expect { diary_entries.add_entry('test', diary) }. to raise_error 'Diary locked'
    end

    it 'adds an entry' do
      diary.unlock
      expect(diary_entries.add_entry('test', diary)).to eq 'test'
    end
  end

  describe '#get_entries' do
    it 'throw an error when locked' do
      allow(diary).to receive(:locked) { 1 }
      expect { diary_entries.get_entries(1, diary) }. to raise_error 'Diary locked'
    end

    it 'retrieves and entry' do
      diary.unlock
      diary_entries.add_entry('test', diary)
      expect(diary_entries.get_entries(0, diary)).to eq 'test'
    end
  end
end
