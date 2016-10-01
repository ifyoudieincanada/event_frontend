defmodule EventFrontend.Router do
  use EventFrontend.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", EventFrontend do
    pipe_through :api
  end
end
