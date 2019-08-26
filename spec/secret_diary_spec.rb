require_relative '../lib/secret_diary'

describe SecretDiary do
  let(:diary) { SecretDiary.new }

  describe '#unlock' do
    it 'unlocks the diary' do
      expect(diary.unlock).to eq 0
    end
  end

  describe '#lock' do
    it 'throw and error if already locked' do
    expect { diary.lock }. to raise_error 'Diary already locked'
    end
  end
end
