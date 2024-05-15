# frozen_string_literal: true

def tidy_sql(sql)
  sql = sql.to_sql if sql.respond_to?(:to_sql)

  sql
    .gsub(', ', "\n, ")
    .gsub(' WHERE', "\nWHERE")
    .gsub(' FROM', "\nFROM")
    .gsub(' INNER', "\nINNER")
    .gsub(/ (LEFT )?OUTER/) { |m| "\n#{m.strip}" }
    .gsub(' SELECT', "\nSELECT")
    .gsub(' UNION', "\nUNION")
    .gsub(' GROUP', "\nGROUP")
    .gsub(' HAVING', "\nHAVING")
    .gsub(' ORDER', "\nORDER")
    .gsub(' AND', "\n  AND")
    .gsub(' OR', "\n   OR")
end
