class BrowserController < ApplicationController
  skip_before_filter :is_user_agent_ok?
end
