class GyosiyakdoksController < ApplicationController
    
    def gyosipagecreate
              
          
    @yakdok= Yakdokroom.create()
    @randomstring= ([*('A'..'Z'),*('0'..'9')]-%w(0 1 I O)).sample(6).join
    @yakdok.update(yakdoktype:"gyosiyakdok", roomnumber: @randomstring)

    # redirect_to home_gyosipage_path(:yakdok => @yakdok.id)     
   
    
    redirect_to "/home/gyosipage/#{@randomstring}"
    # redirect_to "/home/gyosipage/#{@yakdok.id}"
           
      Gyosiyakdok.create(gyosi: "월요일 1교시",roomnumber: @randomstring)
    #   Gyosiyakdok.create(gyosi: "화요일 1교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "수요일 1교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "목요일 1교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "금요일 1교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "월요일 2교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "화요일 2교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "수요일 2교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "목요일 2교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "금요일 2교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "월요일 3교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "화요일 3교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "수요일 3교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "목요일 3교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "금요일 3교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "월요일 4교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "화요일 4교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "수요일 4교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "목요일 4교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "금요일 4교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "월요일 5교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "화요일 5교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "수요일 5교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "목요일 5교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "금요일 5교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "월요일 6교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "화요일 6교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "수요일 6교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "목요일 6교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "금요일 6교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "월요일 7교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "화요일 7교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "수요일 7교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "목요일 7교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "금요일 7교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "월요일 8교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "화요일 8교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "수요일 8교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "목요일 8교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "금요일 8교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "월요일 9교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "화요일 9교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "수요일 9교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "목요일 9교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "금요일 9교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "월요일 10교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "화요일 10교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "수요일 10교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "목요일 10교시",roomnumber: params[:roomnumber])
    #   Gyosiyakdok.create(gyosi: "금요일 10교시",roomnumber: params[:roomnumber])

        
    end
end
