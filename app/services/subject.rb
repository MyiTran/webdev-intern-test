class Subject
  LIST = [
    { key: :math, label: "Toán" },
    { key: :literature, label: "Ngữ văn" },
    { key: :foreign_language, label: "Ngoại ngữ" },
    { key: :physics, label: "Vật lí" },
    { key: :chemistry, label: "Hóa học" },
    { key: :biology, label: "Sinh học" },
    { key: :history, label: "Lịch sử" },
    { key: :geography, label: "Địa lí" },
    { key: :civic_education, label: "GDCD" }
  ].freeze

  attr_reader :key, :label

  def initialize(key:, label:)
    @key = key
    @label = label
  end

  def self.all
    LIST.map { |subject| new(**subject) }
  end

  def self.keys
    LIST.map { |subject| subject[:key] }
  end

  def self.labels
    LIST.to_h { |subject| [ subject[:key], subject[:label] ] }
  end

  def self.group_a_keys
    [ :math, :physics, :chemistry ]
  end
end
