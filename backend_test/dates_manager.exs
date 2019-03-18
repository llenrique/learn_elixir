defmodule DatesManager do
  def set_date(type) do
    date_string = IO.gets("Give me the #{type} date (FORMAT YYYY-MM-DD): ")
    parser_date date_string
  end

  def parser_date(date_string) when is_bitstring(date_string) do
    date_string = Regex.replace ~r{[\n]}, date_string, ""
    Date.from_iso8601!(date_string)
  end
end

start_date = DatesManager.set_date("start")

end_date = DatesManager.set_date("end")

diff = fn sd, ed -> Date.diff(ed, sd) end

days_difference = diff.(start_date, end_date)

IO.puts days_difference
