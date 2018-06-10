class PortfolioController < ApplicationController

  skip_before_action :verify_authenticity_token, only: [:send_letter]
  
  def index
  end

  def work_portfolio
  end

  def send_letter
    if params[:username]
      @letter = "Время отправки с сайта: #{Time.now}; "
      @letter += "пользователь: #{params[:username]}; "
      if params[:usermail]
        @letter += "контактные данные: #{params[:usermail]}; "
        if  params[:usertext]
          @letter += "текст сообщения: #{params[:usertext]}"
          if params[:submit] == "contact_form"
            begin
              UserMailer.send_letter(@letter).deliver
              @info_letter = "Сообщение отправлено."
            rescue
              @info_letter = "Ошибка отправки... Попробуите позже."
            end 
          end
        end
      end
    end
  end

  def work_letter
  end

  def work_project_2
  end

  def work_project_3
  end  

end
