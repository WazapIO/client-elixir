# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule WhatsAPIGo.Model.StructsTemplateButtonPayload do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :buttons,
    :content_text,
    :footer,
    :header,
    :to
  ]

  @type t :: %__MODULE__{
    :buttons => [WhatsAPIGo.Model.StructsTemplateButton.t],
    :content_text => String.t | nil,
    :footer => String.t | nil,
    :header => String.t | nil,
    :to => String.t
  }
end

defimpl Poison.Decoder, for: WhatsAPIGo.Model.StructsTemplateButtonPayload do
  import WhatsAPIGo.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:buttons, :list, WhatsAPIGo.Model.StructsTemplateButton, options)
  end
end
