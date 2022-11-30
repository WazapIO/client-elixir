# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule WhatsAPI.Model.CreateInstancePayload do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :instance_key,
    :webhook_url
  ]

  @type t :: %__MODULE__{
    :instance_key => String.t | nil,
    :webhook_url => String.t | nil
  }
end

defimpl Poison.Decoder, for: WhatsAPI.Model.CreateInstancePayload do
  def decode(value, _options) do
    value
  end
end
