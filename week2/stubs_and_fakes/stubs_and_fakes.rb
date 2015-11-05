class EmailProviderFake

  def initialize subjects
    @subjects = subjects
  end

  def get_subjects
    @subjects
  end
end

class WordChecker

  def initialize subject_provider
    @subject_provider = subject_provider
  end

  def check words
    subjects = @subject_provider.get_subjects
    subjects.include(words[0])
  end
end
