class HomeController < ApplicationController
  def index
    Rails.logger.debug("DEBUG")
    Rails.logger.info("INFO")
    Rails.logger.warn("WARN")
    Rails.logger.error("ERROR")
    Rails.logger.fatal("FATAL")
    
  end
end
