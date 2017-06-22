class PagesController < ApplicationController

  def welcome
    logger.debug "----- hello -----"
    logger.debug "---" + request.domain[0..5] + "<<<<<"
  end

end