# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule WhatsAPIGo.Model.StructsContactMessagePayloadVcard do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :full_name,
    :organization,
    :phone
  ]

  @type t :: %__MODULE__{
    :full_name => String.t | nil,
    :organization => String.t | nil,
    :phone => String.t | nil
  }
end

defimpl Poison.Decoder, for: WhatsAPIGo.Model.StructsContactMessagePayloadVcard do
  def decode(value, _options) do
    value
  end
end

