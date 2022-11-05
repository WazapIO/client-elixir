# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule WhatsAPI.Model.LocationMessagePayloadLocation do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :address,
    :latitude,
    :longitude,
    :name
  ]

  @type t :: %__MODULE__{
    :address => String.t | nil,
    :latitude => float(),
    :longitude => float(),
    :name => String.t
  }
end

defimpl Poison.Decoder, for: WhatsAPI.Model.LocationMessagePayloadLocation do
  def decode(value, _options) do
    value
  end
end

