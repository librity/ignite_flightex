defmodule Flightex do
  alias Flightex.Users.Agent, as: UserAgent

  def start_agents do
    UserAgent.start_link()
  end

  defdelegate get_user(params), to: UserAgent, as: :get
  defdelegate get_users, to: UserAgent, as: :get_all
end
