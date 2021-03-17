defmodule Flightex do
  alias Flightex.Users.Agent, as: UserAgent
  alias Flightex.Users.Create, as: UserCreator
  # alias Flightex.Users.Update, as: UserCreator

  def start_agents do
    UserAgent.start_link()
  end

  defdelegate create_user(params), to: UserCreator, as: :call
  # defdelegate update_user(params), to: UserAgent, as: :get
  defdelegate get_user(params), to: UserAgent, as: :get
  defdelegate get_users, to: UserAgent, as: :get_all
end
