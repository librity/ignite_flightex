defmodule Flightex.Bookings.Booking do
  @keys [:id, :departure, :leaving_from, :going_to, :user_id]
  @enforce_keys @keys

  defstruct @keys

  def build(departure_string, leaving_from, going_to, user_id)
      when is_bitstring(departure_string) and
             is_bitstring(leaving_from) and
             is_bitstring(going_to) and
             is_bitstring(user_id) do
    departure_string
    |> NaiveDateTime.from_iso8601()
    |> build_booking(leaving_from, going_to, user_id)
  end

  def build(_departure, _leaving_from, _going_to, _user_id), do: {:error, "Invalid params."}

  def build_booking({:ok, departure_date_time}, leaving_from, going_to, user_id) do
    {:ok,
     %__MODULE__{
       id: UUID.uuid4(),
       departure: departure_date_time,
       leaving_from: leaving_from,
       going_to: going_to,
       user_id: user_id
     }}
  end

  def build_booking({:error, _departure_date_time}, _leaving_from, _going_to, _user_id),
    do: {:error, "Invalid departure format."}
end
