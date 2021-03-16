defmodule Flightex.Users.User do
  @keys [:id, :name, :email, :cpf]
  @enforce_keys @keys

  defstruct @keys

  def build(name, email, cpf)
      when is_bitstring(name) and
             is_bitstring(email) and
             is_bitstring(cpf) do
    %__MODULE__{
      id: UUID.uuid4(),
      name: name,
      email: email,
      cpf: cpf
    }
  end

  def build(_name, _email, _cpf), do: {:error, "Invalid params."}
end
