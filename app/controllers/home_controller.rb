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
    
  
  # def gyosipagecreate #교시로 검색하기 눌렀을때 Yakdokroom 모델에 Yakdok 하나 create 시키는 액션 
    
  #   @yakdok= Yakdokroom.create()
  #   @randomstring= ([*('A'..'Z'),*('0'..'9')]-%w(0 1 I O)).sample(6).join
  #   @yakdok.update(yakdoktype:"gyosiyakdok", roomnumber: @randomstring)

  #   # redirect_to home_gyosipage_path(:yakdok => @yakdok.id)     
   
    
  #   redirect_to "/home/gyosipage/#{@randomstring}"
  #   # redirect_to "/home/gyosipage/#{@yakdok.id}"
   
  # end       태훈파트는 gyosiyakdoks 컨트롤러로 옮겼습니다
  
  def siganpagecreate #시간base로 검색하는 것 Yakdokroom 모델에 Yakdok 하나 create시키는 액션
    
    @yakdok= Yakdokroom.create()
    @randomstring= ([*('A'..'Z'),*('0'..'9')]-%w(0 1 I O)).sample(6).join
    @yakdok.update(yakdoktype:"siganyakdok", roomnumber: @randomstring)

    redirect_to "/home/siganpage/#{@randomstring}"
  end
  
  # def gyosiyakdokcreate
  #   # if@머시기 != 0
  #     # @ ++
  #     #@.save
  #     @findyakdok=Gyosiyakdok.where(roomnumber: params[:roomnumber])
  #     @myyakdok=@findyakdok.all
  #     @myyakdok.update(count:"8")
  #   # @gyosiresult = Gyosiyakdok.update(count: "4", gyosi: "월요일 1교시", roomnumber: params[:roomnumber])
  #   redirect_to controller: 'home', action: 'gyosiresult', yakdokroom: @myroom
    
  # end         태훈파트. gyosiyakdoks 컨트롤러로 옮겼습니다
  
  def siganyakdokcreate
    @myroom = params[:roomnumber]
    @count = ""
    @count = params[:count]
    @sigan = "123/32/125/162/252/153/124"
    @siganyakdok= Siganyakdok.create(count: @count, sigan: @sigan, roomnumber: params[:roomnumber])
    redirect_to controller: 'home', action: 'siganresult', yakdokroom: @myroom
  end
  

  def siganresult
       @myroom = params[:yakdokroom]
     #앞에서 먼저 받은 내용물을 parsing
       @k = Siganyakdok.all
       @sum = []
       @howmany = 0
       @k.each do |x|
       if x["roomnumber"] == @myroom
       @count = ""
       @count = x["count"]
       @sum << x["sigan"]
       @howmany = @howmany + 1
       end
       end 
       @days = @count.to_i * 40
       @chose = ""
       @sum.each do |x|
       @chose = x + "/" + @chose
       end
       @choseparse = @chose.split('/')
 #여기부터 되는 시간 세는 함수들
       @allpossible = []
       @mostpossible = []
       @halfpossible = []
       @notpossible = []

         for i in 1..@days
        if @choseparse.count("#{i}") == @howmany
           @allpossible << i
        elsif @choseparse.count("#{i}") >= @howmany * 0.75
           @mostpossible << i
        elsif @choseparse.count("#{i}") >= @howmany * 0.5
           @halfpossible << i
        else
          @notpossible << i
        end
    end
  end
    

    def usersiganinput
      
      #시간 integer로 바뀌었을 때 차이는 86400, to_time.to_i로 바꾸고 다시 돌릴 땐 Time.at(i)하면 끗

    end
    

        
        
      # end
      # @chosensigan = []
      # @choseparse.each do |x|
  #     @chosensigan << [(x.to_i - 1) / 96 , (x.to_i - 1) % 96]  
  # end
  #   @a = [0] * 96
  #   @yakdokmatrix = []
  #   @nalja = 7 - 1 #7 대신 넘겨준 총 며칠 수
  #   for i in 0..@nalja do
  #   @yakdokmatrix << @a
  #   end
  #     @chosensigan.each do |x|
  #     @yakdokmatrix[x[0]][x[1]] = @yakdokmatrix[x[0]][x[1]] + 1
  #   end
   def usersigancreate
      # @count = ""
      # @count = params[:count]
      @sigan = params[:sigan]
      Usersigan.create(sigan: @sigan)
      redirect_to '/'
    end
  
end