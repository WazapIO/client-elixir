# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule WhatsAPI.Model.StructsUserInfoPayload do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :user_ids
  ]

  @type t :: %__MODULE__{
    :user_ids => [String.t]
  }
end

defimpl Poison.Decoder, for: WhatsAPI.Model.StructsUserInfoPayload do
  def decode(value, _options) do
    value
  end
end
