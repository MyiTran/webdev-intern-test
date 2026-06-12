require "csv"

csv_path = Rails.root.join("dataset", "diem_thi_thpt_2024.csv")

Student.delete_all

batch = []

CSV.foreach(csv_path, headers: true) do |row|
  batch << {
    registration_number: row["sbd"],
    math: row["toan"],
    literature: row["ngu_van"],
    foreign_language: row["ngoai_ngu"],
    physics: row["vat_li"],
    chemistry: row["hoa_hoc"],
    biology: row["sinh_hoc"],
    history: row["lich_su"],
    geography: row["dia_li"],
    civic_education: row["gdcd"],
    foreign_language_code: row["ma_ngoai_ngu"],
    created_at: Time.current,
    updated_at: Time.current
  }

  if batch.size >= 5000
    Student.insert_all(batch)
    batch.clear
  end
end

Student.insert_all(batch) unless batch.empty?
