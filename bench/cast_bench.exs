defmodule CastBench do
  use Benchfella

  @dt  %{"day" => "29", "month" => "7", "year" => "2001", "hour" => "1", "min" => "2", "sec" => "3"}

  setup_all do
    Application.ensure_all_started(:timex_bench)
  end

  bench "Calecto.DateTimeUTC" do
    Calecto.DateTimeUTC.cast(@dt)
  end

  bench "Timex.Ecto.Datetime" do
    Timex.Ecto.DateTime.cast(@dt)
  end
end
