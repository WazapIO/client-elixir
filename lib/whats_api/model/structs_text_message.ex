# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule WhatsAPI.Model.StructsTextMessage do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :text,
    :to
  ]

  @type t :: %__MODULE__{
    :text => String.t,
    :to => String.t
  }
end

defimpl Poison.Decoder, for: WhatsAPI.Model.StructsTextMessage do
  def decode(value, _options) do
    value
  end
end

