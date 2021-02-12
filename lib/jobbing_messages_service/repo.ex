defmodule JobbingMessagesService.Repo do
  use Ecto.Repo,
    otp_app: :jobbing_messages_service,
    adapter: Ecto.Adapters.Postgres
end
