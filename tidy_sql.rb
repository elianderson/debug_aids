# frozen_string_literal: true

def tidy_sql(sql)
  sql = sql.to_sql if sql.respond_to?(:to_sql)

  sql
    .gsub(', ', "\n, ")
    .gsub(' WHERE', "\nWHERE")
    .gsub(' FROM', "\nFROM")
    .gsub(' INNER', "\nINNER")
    .gsub(' OUTER', "\nOUTER")
    .gsub(' SELECT', "\nSELECT")
    .gsub(' UNION', "\nUNION")
    .gsub(' ORDER', "\nORDER")
    .gsub(' AND', "\n  AND")
    .gsub(' OR', "\n   OR")
end
