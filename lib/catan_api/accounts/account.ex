defmodule CatanApi.Accounts.Account do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "accounts" do
    field :email, :string
    field :hash_password, :string
    belongs_to :account, CatanApi.Accounts.Account, type: :binary_id
    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(account, attrs) do
    account
    |> cast(attrs, [:email, :hash_password])
    |> validate_required([:email, :hash_password])
    |> validate_format(:email, ~r/^[\w.+-]+@[\w.-]+\.[a-zA-Z]{2,}$/, message: "must be a valid email address")
    |> validate_length(:email, max: 160, message: "must be at most 160 characters long")
    |> unique_constraint(:email)
  end
end
