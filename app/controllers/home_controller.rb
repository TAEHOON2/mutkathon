class HomeController < ApplicationController
  def index
  end
  
  def gyosipage #교시 테이블 나오는 페이지
    # :yakdokroom_roomnumber 를 url에서 받아옴
    @yakdokroom= Yakdokroom.where(roomnumber: params[:yakdokroom_roomnumber])
    @myroom= @yakdokroom.first
  end
  
  
  def siganpage # 시간 테이블 나오는 페이지
    @yakdokroom= Yakdokroom.where(roomnumber: params[:yakdokroom_roomnumber])
    @myroom= @yakdokroom.first
  end
    
  
  def gyosipagecreate #교시로 검색하기 눌렀을때 Yakdokroom 모델에 Yakdok 하나 create 시키는 액션 
    
    @yakdok= Yakdokroom.create()
    @randomstring= ([*('A'..'Z'),*('0'..'9')]-%w(0 1 I O)).sample(6).join
    @yakdok.update(yakdoktype:"gyosiyakdok", roomnumber: @randomstring)

    # redirect_to home_gyosipage_path(:yakdok => @yakdok.id)     
   
    
    redirect_to "/home/gyosipage/#{@randomstring}"
    # redirect_to "/home/gyosipage/#{@yakdok.id}"
   
  end
  
  def siganpagecreate #시간base로 검색하는 것 Yakdokroom 모델에 Yakdok 하나 create시키는 액션
    
    @yakdok= Yakdokroom.create()
    @randomstring= ([*('A'..'Z'),*('0'..'9')]-%w(0 1 I O)).sample(6).join
    @yakdok.update(yakdoktype:"siganyakdok", roomnumber: @randomstring)
    # @yakdok= Yakdokroom.new
    # @yakdok.save
    # @yakdok.roomnumber=@yakdok.id
    # @yakdok.type= "siganyakdok"
    # @yakdok.save
    
    redirect_to "/home/siganpage/#{@randomstring}"
  end
  
  def gyosiyakdokcreate
    @gyosiresult = Gyosiyakdok.create(count: "1", gyosi: "월요일 1교시", roomnumber: params[:roomnumber])
    
  end
  def siganyakdokcreate
    
    @siganyakdok= Siganyakdok.create(count:"1", sigan: params[:sigan])
    redirect_to controller: 'home', action: 'siganresult', id: 3, yakdokroom: '4'
  end
  
  def gyosiresult
  end
  
  def siganresult
    
    #앞에서 먼저 받은 내용물을 parsing
    #Siganyakdok.where("yakdokroom LIKE '%#{params[:yakdokroom]}%'")
      @each = []
      @chose = ""
      @each = ["123/653/234/513" , "321/325/314/541", "132/235/541/234"] #if yakdokroom이 랜덤 일치하면 가져오게 하면 됨.
      @each.each do |x|
      @chose = x + "/" + @chose
      end
      @choseparse = @chose.split('/')
      @chosensigan = []
      @choseparse.each do |x|
      @chosensigan << [(x.to_i - 1) / 96 , (x.to_i - 1) % 96]  
  end
    
    @yakdokroom = params[:yakdokroom]
    @a = Array.new(96) {|i| 0 }
    @yakdokmatrix = []
    @nalja = 7 - 1 #7 대신 넘겨준 총 며칠 수
    for i in 0..@nalja do
    @yakdokmatrix << @a
    end
    
    @b = []
        @chosensigan.each do |x|
        @b << x[0]
    #   for i in 0..1 do
    # @yakdokmatrix[[x[[i][0]]]][x[[i][1]]]] = @yakdokmatrix[[x[[i][0]]][x[[i][1]]] + 1
    # end
    end
    
    
    
end

end
