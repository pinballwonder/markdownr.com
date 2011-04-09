require 'markdownr/parser'

class MarkdownController < ActionController::Metal
  include ActionController::RackDelegation
  
  def process_markdown
    self.response_body = Markdownr::Parser.parse(params[:text], params[:parser])
  end  
end
