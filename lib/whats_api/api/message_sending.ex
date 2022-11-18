# NOTE: This file is auto generated by OpenAPI Generator 6.2.1 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule WhatsAPI.Api.MessageSending do
  @moduledoc """
  API calls for all endpoints tagged `MessageSending`.
  """

  alias WhatsAPI.Connection
  import WhatsAPI.RequestBuilder

  @doc """
  Send raw audio.
  Sends a audio message by uploading to the WhatsApp servers every time. This is not recommended for bulk sending.

  ### Parameters

  - `connection` (WhatsAPI.Connection): Connection to server
  - `instance_key` (String.t): Instance key
  - `to` (String.t): The recipient's number
  - `send_audio_request` (SendAudioRequest): 
  - `opts` (keyword): Optional parameters
    - `:caption` (String.t): Attached caption

  ### Returns

  - `{:ok, WhatsAPI.Model.ApiResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec send_audio(Tesla.Env.client, String.t, String.t, WhatsAPI.Model.SendAudioRequest.t, keyword()) :: {:ok, WhatsAPI.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def send_audio(connection, instance_key, to, send_audio_request, opts \\ []) do
    optional_params = %{
      :caption => :query
    }

    request =
      %{}
      |> method(:post)
      |> url("/instances/#{instance_key}/send/audio")
      |> add_param(:query, :to, to)
      |> add_param(:body, :body, send_audio_request)
      |> add_optional_params(optional_params, opts)
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
  Send a button message.
  Sends an interactive button message to the given user. Make sure that all the button ids are unique

  ### Parameters

  - `connection` (WhatsAPI.Connection): Connection to server
  - `instance_key` (String.t): Instance key
  - `data` (ButtonMessagePayload): Message data
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, WhatsAPI.Model.ApiResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec send_button_message(Tesla.Env.client, String.t, WhatsAPI.Model.ButtonMessagePayload.t, keyword()) :: {:ok, WhatsAPI.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def send_button_message(connection, instance_key, data, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/instances/#{instance_key}/send/buttons")
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
  Send a button message with a media header.
  Sends an interactive button message to the given user. This message also has media header with it. Make sure that all the button ids are unique

  ### Parameters

  - `connection` (WhatsAPI.Connection): Connection to server
  - `instance_key` (String.t): Instance key
  - `data` (ButtonMessageWithMediaPayload): Message data
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, WhatsAPI.Model.ApiResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec send_button_with_media(Tesla.Env.client, String.t, WhatsAPI.Model.ButtonMessageWithMediaPayload.t, keyword()) :: {:ok, WhatsAPI.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def send_button_with_media(connection, instance_key, data, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/instances/#{instance_key}/send/button-media")
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
  Send a contact message.
  Sends a contact (vcard) message to the given user.

  ### Parameters

  - `connection` (WhatsAPI.Connection): Connection to server
  - `instance_key` (String.t): Instance key
  - `data` (ContactMessagePayload): Message data
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, WhatsAPI.Model.ApiResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec send_contact(Tesla.Env.client, String.t, WhatsAPI.Model.ContactMessagePayload.t, keyword()) :: {:ok, WhatsAPI.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def send_contact(connection, instance_key, data, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/instances/#{instance_key}/send/contact")
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
  Send raw document.
  Sends a document message by uploading to the WhatsApp servers every time. This is not recommended for bulk sending.

  ### Parameters

  - `connection` (WhatsAPI.Connection): Connection to server
  - `instance_key` (String.t): Instance key
  - `to` (String.t): The recipient's number
  - `send_document_request` (SendDocumentRequest): 
  - `opts` (keyword): Optional parameters
    - `:caption` (String.t): Attached caption

  ### Returns

  - `{:ok, WhatsAPI.Model.ApiResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec send_document(Tesla.Env.client, String.t, String.t, WhatsAPI.Model.SendDocumentRequest.t, keyword()) :: {:ok, WhatsAPI.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def send_document(connection, instance_key, to, send_document_request, opts \\ []) do
    optional_params = %{
      :caption => :query
    }

    request =
      %{}
      |> method(:post)
      |> url("/instances/#{instance_key}/send/document")
      |> add_param(:query, :to, to)
      |> add_param(:body, :body, send_document_request)
      |> add_optional_params(optional_params, opts)
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
  Send a group invite message
  Sends a group invite message to the specified number. Don't include \"https://chat.whatsapp.com/\" in the invite code.

  ### Parameters

  - `connection` (WhatsAPI.Connection): Connection to server
  - `instance_key` (String.t): Instance key
  - `data` (GroupInviteMessagePayload): Message data
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, WhatsAPI.Model.ApiResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec send_group_invite(Tesla.Env.client, String.t, WhatsAPI.Model.GroupInviteMessagePayload.t, keyword()) :: {:ok, WhatsAPI.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def send_group_invite(connection, instance_key, data, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/instances/#{instance_key}/send/group-invite")
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
  Send raw image.
  Sends a image message by uploading to the WhatsApp servers every time. This is not recommended for bulk sending.

  ### Parameters

  - `connection` (WhatsAPI.Connection): Connection to server
  - `instance_key` (String.t): Instance key
  - `to` (String.t): The recipient's number
  - `update_profile_pic_request` (UpdateProfilePicRequest): 
  - `opts` (keyword): Optional parameters
    - `:caption` (String.t): Attached caption

  ### Returns

  - `{:ok, WhatsAPI.Model.ApiResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec send_image(Tesla.Env.client, String.t, String.t, WhatsAPI.Model.UpdateProfilePicRequest.t, keyword()) :: {:ok, WhatsAPI.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def send_image(connection, instance_key, to, update_profile_pic_request, opts \\ []) do
    optional_params = %{
      :caption => :query
    }

    request =
      %{}
      |> method(:post)
      |> url("/instances/#{instance_key}/send/image")
      |> add_param(:query, :to, to)
      |> add_param(:body, :body, update_profile_pic_request)
      |> add_optional_params(optional_params, opts)
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
  Send a List message.
  Sends an interactive List message to the given user.

  ### Parameters

  - `connection` (WhatsAPI.Connection): Connection to server
  - `instance_key` (String.t): Instance key
  - `data` (ListMessagePayload): Message data
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, WhatsAPI.Model.ApiResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec send_list_message(Tesla.Env.client, String.t, WhatsAPI.Model.ListMessagePayload.t, keyword()) :: {:ok, WhatsAPI.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def send_list_message(connection, instance_key, data, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/instances/#{instance_key}/send/list")
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
  Send a location message.
  Sends a location message to the given user. This is static location and does not update Note: The Address and Url fields are optional

  ### Parameters

  - `connection` (WhatsAPI.Connection): Connection to server
  - `instance_key` (String.t): Instance key
  - `data` (LocationMessagePayload): Message data
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, WhatsAPI.Model.ApiResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec send_location(Tesla.Env.client, String.t, WhatsAPI.Model.LocationMessagePayload.t, keyword()) :: {:ok, WhatsAPI.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def send_location(connection, instance_key, data, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/instances/#{instance_key}/send/location")
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
  Send a media message.
  Sends a media message to the given user.

  ### Parameters

  - `connection` (WhatsAPI.Connection): Connection to server
  - `instance_key` (String.t): Instance key
  - `data` (SendMediaPayload): Message data
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, WhatsAPI.Model.ApiResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec send_media_message(Tesla.Env.client, String.t, WhatsAPI.Model.SendMediaPayload.t, keyword()) :: {:ok, WhatsAPI.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def send_media_message(connection, instance_key, data, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/instances/#{instance_key}/send/media")
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
  Send a Poll message.
  Sends an interactive poll message to the given user. The poll message is a new feature that is currently in beta.

  ### Parameters

  - `connection` (WhatsAPI.Connection): Connection to server
  - `instance_key` (String.t): Instance key
  - `data` (PollMessagePayload): Message data
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, WhatsAPI.Model.ApiResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec send_poll_message(Tesla.Env.client, String.t, WhatsAPI.Model.PollMessagePayload.t, keyword()) :: {:ok, WhatsAPI.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def send_poll_message(connection, instance_key, data, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/instances/#{instance_key}/send/poll")
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
  Send a template message.
  Sends an interactive template message to the given user. Note: The valid button types are \"replyButton\", \"urlButton\", \"callButton\"

  ### Parameters

  - `connection` (WhatsAPI.Connection): Connection to server
  - `instance_key` (String.t): Instance key
  - `data` (TemplateButtonPayload): Message data
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, WhatsAPI.Model.ApiResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec send_template(Tesla.Env.client, String.t, WhatsAPI.Model.TemplateButtonPayload.t, keyword()) :: {:ok, WhatsAPI.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def send_template(connection, instance_key, data, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/instances/#{instance_key}/send/template")
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
  Send a template message with media.
  Sends an interactive template message with a media header to the given user. Note: The valid button types are \"replyButton\", \"urlButton\", \"callButton\"

  ### Parameters

  - `connection` (WhatsAPI.Connection): Connection to server
  - `instance_key` (String.t): Instance key
  - `data` (TemplateButtonWithMediaPayload): Message data
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, WhatsAPI.Model.ApiResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec send_template_with_media(Tesla.Env.client, String.t, WhatsAPI.Model.TemplateButtonWithMediaPayload.t, keyword()) :: {:ok, WhatsAPI.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def send_template_with_media(connection, instance_key, data, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/instances/#{instance_key}/send/template-media")
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
  Send a text message.
  Sends a text message to the given user.

  ### Parameters

  - `connection` (WhatsAPI.Connection): Connection to server
  - `instance_key` (String.t): Instance key
  - `data` (TextMessage): Message data
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, WhatsAPI.Model.ApiResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec send_text_message(Tesla.Env.client, String.t, WhatsAPI.Model.TextMessage.t, keyword()) :: {:ok, WhatsAPI.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def send_text_message(connection, instance_key, data, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/instances/#{instance_key}/send/text")
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
  Send raw video.
  Sends a video message by uploading to the WhatsApp servers every time. This is not recommended for bulk sending.

  ### Parameters

  - `connection` (WhatsAPI.Connection): Connection to server
  - `instance_key` (String.t): Instance key
  - `to` (String.t): The recipient's number
  - `send_video_request` (SendVideoRequest): 
  - `opts` (keyword): Optional parameters
    - `:caption` (String.t): Attached caption

  ### Returns

  - `{:ok, WhatsAPI.Model.ApiResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec send_video(Tesla.Env.client, String.t, String.t, WhatsAPI.Model.SendVideoRequest.t, keyword()) :: {:ok, WhatsAPI.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def send_video(connection, instance_key, to, send_video_request, opts \\ []) do
    optional_params = %{
      :caption => :query
    }

    request =
      %{}
      |> method(:post)
      |> url("/instances/#{instance_key}/send/video")
      |> add_param(:query, :to, to)
      |> add_param(:body, :body, send_video_request)
      |> add_optional_params(optional_params, opts)
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
  Upload media.
  Uploads media to WhatsApp servers and returns the media keys. Store the returned media keys, as you will need them to send media messages

  ### Parameters

  - `connection` (WhatsAPI.Connection): Connection to server
  - `instance_key` (String.t): Instance key
  - `type` (String.t): Media type
  - `upload_media_request` (UploadMediaRequest): 
  - `opts` (keyword): Optional parameters

  ### Returns

  - `{:ok, WhatsAPI.Model.ApiResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec upload_media(Tesla.Env.client, String.t, String.t, WhatsAPI.Model.UploadMediaRequest.t, keyword()) :: {:ok, WhatsAPI.Model.ApiResponse.t} | {:error, Tesla.Env.t}
  def upload_media(connection, instance_key, type, upload_media_request, _opts \\ []) do
    request =
      %{}
      |> method(:post)
      |> url("/instances/#{instance_key}/send/upload")
      |> add_param(:query, :type, type)
      |> add_param(:body, :body, upload_media_request)
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
