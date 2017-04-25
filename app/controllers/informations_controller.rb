class InformationsController < ApplicationController
  def show

  end

  def education
  end

  def colleges
  end

  def support
  end

  def ehcp
  end
  
  def adult
  end

  def internships

  end

  def employment
  end

  def transport
  end

  def leisure
  end

#for the internships document to fill
# http://stackoverflow.com/questions/13164063/file-download-link-in-rails

  def download
    send_data pdf,
      :filename => "access_to_work_flow_chart.doc",
      :type => "application/doc"
  end


end
