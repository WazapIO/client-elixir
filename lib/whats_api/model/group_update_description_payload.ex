# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule WhatsAPI.Model.GroupUpdateDescriptionPayload do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :description
  ]

  @type t :: %__MODULE__{
    :description => String.t | nil
  }
end

defimpl Poison.Decoder, for: WhatsAPI.Model.GroupUpdateDescriptionPayload do
  def decode(value, _options) do
    value
  end
end
