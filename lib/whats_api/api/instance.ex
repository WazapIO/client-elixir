# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule WhatsAPI.Api.Instance do
  @moduledoc """
  API calls for all endpoints tagged `Instance`.
  """

  alias WhatsAPI.Connection
  import WhatsAPI.RequestBuilder

  @doc """
  Change Webhook url.
  Changes the webhook url of an instance.

  ### Parameters

  - `connection` (WhatsAPI.Connection): Connection to server
  - `instance_key` (String.t): Instance key
  - `data` (WebhookPayload): Message data
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, WhatsAPI.Model.ApiResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec change_webhook_url(Tesla.Env.client, String.t, WhatsAPI.Model.WebhookPayload.t, keyword()) :: {:ok, WhatsAPI.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def change_webhook_url(connection, instance_key, data, _opts \\ []) do
    request =
      %{}
      |> method(:put)
      |> url("/instances/#{instance_key}/webhook")
      |> add_param(:body, :body, data)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %WhatsAPI.Model.ApiResponse{}},
      {400, %WhatsAPI.Model.ApiResponse{}},
      {401, %WhatsAPI.Model.ApiResponse{}},
      {404, %WhatsAPI.Model.ApiResponse{}},
      {500, %WhatsAPI.Model.ApiResponse{}}
    ])
  end

  @doc """
  Creates a new instance key.
  This endpoint is used to create a new WhatsApp Web instance.

  ### Parameters

  - `connection` (WhatsAPI.Connection): Connection to server
  - `data` (CreateInstancePayload): Instance data
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, WhatsAPI.Model.ApiResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_instance(Tesla.Env.client, WhatsAPI.Model.CreateInstancePayload.t, keyword()) :: {:ok, WhatsAPI.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def create_instance(connection, data, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/instances/create")
      |> add_param(:body, :body, data)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %WhatsAPI.Model.ApiResponse{}},
      {400, %WhatsAPI.Model.ApiResponse{}},
      {401, %WhatsAPI.Model.ApiResponse{}},
      {404, %WhatsAPI.Model.ApiResponse{}},
      {500, %WhatsAPI.Model.ApiResponse{}}
    ])
  end

  @doc """
  Delete Instance.
  Deletes the instance with the provided key.

  ### Parameters

  - `connection` (WhatsAPI.Connection): Connection to server
  - `instance_key` (String.t): Instance key
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, WhatsAPI.Model.ApiResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_instance(Tesla.Env.client, String.t, keyword()) :: {:ok, WhatsAPI.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def delete_instance(connection, instance_key, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/instances/#{instance_key}/delete")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %WhatsAPI.Model.ApiResponse{}},
      {400, %WhatsAPI.Model.ApiResponse{}},
      {401, %WhatsAPI.Model.ApiResponse{}},
      {404, %WhatsAPI.Model.ApiResponse{}},
      {500, %WhatsAPI.Model.ApiResponse{}}
    ])
  end

  @doc """
  Get contacts.
  Fetches the list of contacts in the instance.

  ### Parameters

  - `connection` (WhatsAPI.Connection): Connection to server
  - `instance_key` (String.t): Instance key
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, WhatsAPI.Model.ApiResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_contacts(Tesla.Env.client, String.t, keyword()) :: {:ok, WhatsAPI.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def get_contacts(connection, instance_key, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/instances/#{instance_key}/contacts")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %WhatsAPI.Model.ApiResponse{}},
      {400, %WhatsAPI.Model.ApiResponse{}},
      {401, %WhatsAPI.Model.ApiResponse{}},
      {404, %WhatsAPI.Model.ApiResponse{}},
      {500, %WhatsAPI.Model.ApiResponse{}}
    ])
  end

  @doc """
  Get Instance.
  Returns the instance data of single instance with connection status.

  ### Parameters

  - `connection` (WhatsAPI.Connection): Connection to server
  - `instance_key` (String.t): Instance key
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, WhatsAPI.Model.ApiResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_instance(Tesla.Env.client, String.t, keyword()) :: {:ok, WhatsAPI.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def get_instance(connection, instance_key, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/instances/#{instance_key}/")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %WhatsAPI.Model.ApiResponse{}},
      {400, %WhatsAPI.Model.ApiResponse{}},
      {401, %WhatsAPI.Model.ApiResponse{}},
      {404, %WhatsAPI.Model.ApiResponse{}},
      {500, %WhatsAPI.Model.ApiResponse{}}
    ])
  end

  @doc """
  Get QrCode.
  Returns the qrcode in the base64 format.

  ### Parameters

  - `connection` (WhatsAPI.Connection): Connection to server
  - `instance_key` (String.t): Instance key
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, WhatsAPI.Model.ApiResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_qr_code(Tesla.Env.client, String.t, keyword()) :: {:ok, WhatsAPI.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def get_qr_code(connection, instance_key, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/instances/#{instance_key}/qrcode")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %WhatsAPI.Model.ApiResponse{}},
      {400, %WhatsAPI.Model.ApiResponse{}},
      {401, %WhatsAPI.Model.ApiResponse{}},
      {404, %WhatsAPI.Model.ApiResponse{}},
      {500, %WhatsAPI.Model.ApiResponse{}}
    ])
  end

  @doc """
  Get all instances.
  Fetches the list of all Instances with login status.

  ### Parameters

  - `connection` (WhatsAPI.Connection): Connection to server
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, WhatsAPI.Model.ApiResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec list_instances(Tesla.Env.client, keyword()) :: {:ok, WhatsAPI.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def list_instances(connection, _opts \\ []) do
    request =
      %{}
      |> method(:get)
      |> url("/instances/list")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %WhatsAPI.Model.ApiResponse{}},
      {400, %WhatsAPI.Model.ApiResponse{}},
      {401, %WhatsAPI.Model.ApiResponse{}},
      {404, %WhatsAPI.Model.ApiResponse{}},
      {500, %WhatsAPI.Model.ApiResponse{}}
    ])
  end

  @doc """
  Logout Instance.
  Logouts of the instance with the provided key.

  ### Parameters

  - `connection` (WhatsAPI.Connection): Connection to server
  - `instance_key` (String.t): Instance key
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, WhatsAPI.Model.ApiResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec logout_instance(Tesla.Env.client, String.t, keyword()) :: {:ok, WhatsAPI.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def logout_instance(connection, instance_key, _opts \\ []) do
    request =
      %{}
      |> method(:delete)
      |> url("/instances/#{instance_key}/logout")
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %WhatsAPI.Model.ApiResponse{}},
      {400, %WhatsAPI.Model.ApiResponse{}},
      {401, %WhatsAPI.Model.ApiResponse{}},
      {404, %WhatsAPI.Model.ApiResponse{}},
      {500, %WhatsAPI.Model.ApiResponse{}}
    ])
  end
end
