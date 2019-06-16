defmodule DiscussWeb.Plugs.SetUser do
	import Plug.Conn
	import Phoenix.Controller

	alias DiscussWeb.Repo
	alias DiscussWeb.User
	alias DiscussWeb.Router.Helpers

	def init(_params) do
	end

	def call(conn, _params) do
		user_id = get_session(conn, :user_id)

		#cond do
		#end
	end
end