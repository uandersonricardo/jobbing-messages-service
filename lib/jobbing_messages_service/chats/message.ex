defmodule JobbingMessagesService.Chats.Message do
  use Ecto.Schema
  import Ecto.Changeset

  schema "messages" do
    field :account, :string
    field :body, :string
    field :room, :string

    timestamps()
  end

  @doc false
  def changeset(message, attrs) do
    message
    |> cast(attrs, [:account, :body, :room])
    |> validate_required([:account, :body, :room])
  end
end
