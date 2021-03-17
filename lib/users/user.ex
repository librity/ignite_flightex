defmodule Flightex.Users.User do
  @keys [:id, :name, :email, :cpf]
  @enforce_keys @keys

  defstruct @keys

  def build(name, email, cpf, id \\ UUID.uuid4())

  def build(name, email, cpf, id)
      when is_bitstring(id) and
             is_bitstring(name) and
             is_bitstring(email) and
             is_bitstring(cpf) do
    id
    |> UUID.info()
    |> build_user(name, email, cpf)
  end

  def build(_name, _email, _cpf, _id), do: {:error, "Invalid params."}

  defp build_user({:ok, [{:uuid, valid_uuid} | _tails]}, name, email, cpf) do
    {:ok, %__MODULE__{id: valid_uuid, name: name, email: email, cpf: cpf}}
  end

  defp build_user({:error, _reasin}, _name, _email, _cpf), do: {:error, "Invalid id."}
end
