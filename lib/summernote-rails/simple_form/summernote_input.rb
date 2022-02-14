class SummernoteInput < SimpleForm::Inputs::TextInput
  def input(wrapper_options)
    input_html_options[:data] ||= {}
    input_html_options[:data].merge!({
      provider: 'summernote',
      direct_upload_url: @builder.template.rails_direct_uploads_url,
      blob_url_template: @builder.template.rails_service_blob_url(":signed_id", ":filename")
    })
    super
  end
end
