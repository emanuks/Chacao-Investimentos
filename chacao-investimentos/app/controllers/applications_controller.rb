class ApplicationsController < ApplicationController

  def index
    @application_dts = ApplicationDt.all
    @application_ifs = ApplicationIf.all
    @application_fis = ApplicationFi.all
  end
end
