class FmtController < ApplicationController
  def index
    @fmts = Fmt.all
  end
  def show
  	respond_to do |format|
      format.html{render plain:"empty content"}
      format.js {}
    end
  end
end
