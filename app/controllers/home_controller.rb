class HomeController < ApplicationController
  def index
  end
  
  def gyosipage #교시 테이블 나오는 페이지
    @yakdok = params[:yakdok]
  end
  
  
  def siganpage # 시간 테이블 나오는 페이지
    @yakdok = params[:yakdok]
    @a = []
    @a << 34 << 78 << 506 << 425
  end
  
  def gyosipagecreate #교시로 검색하기 눌렀을때 Yakdokroom 모델에 Yakdok 하나 create 시키는 액션 
    
    @yakdok= Yakdokroom.create()
    @yakdok.update(roomnumber: @yakdok.id)

    # redirect_to home_gyosipage_path(:yakdok => @yakdok.id)     
    redirect_to "/home/gyosipage/#{@yakdok.id}"
  end
  
  def siganpagecreate #시간base로 검색하는 것 Yakdokroom 모델에 Yakdok 하나 create시키는 액션
    
    # @yakdok= Yakdokroom.create()
    # @yakdok.update(roomnumber: @yakdok.id)
    @yakdok= Yakdokroom.new
    @yakdok.save
    @yakdok.roomnumber=@yakdok.id
    @yakdok.save
    
    redirect_to "/home/siganpage/#{@yakdok.id}"
  end
  
  def gyosiyakdokcreate
    @gyosiresult = Gyosiyakdok.create()
    
  end
  def siganyakdokcreate
    @siganresult = Siganyakdok.create()
  end
  
  def gyosiresult
  end
  
  def siganresult
  @a = Array.new(96) {|i| 0 }
  @yakdokmatrix = []
  #n개는 앞에서 넘겨준 숫자라고 치고 (총 며칠)
  @n = 7
  for i in 1..@n do
  @yakdokmatrix << @a
  end
  end
end
