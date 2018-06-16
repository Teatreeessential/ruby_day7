class TweetControllerController < ApplicationController
    def index
        @count = Board.count
        @list=Board.all
    end
    
    def new
     #바로 뷰 파일로 넘어가 글쓰기      
    end
    
    def create
    #post로 받은 데이터를 db에 저장
    board=Board.new
    board.name = params[:id]
    board.contents = params[:contents]
    board.ip_address = request.ip
    board.title = params[:title]
    board.save
    redirect_to "/index"
    end
    
    def show
        id=params[:id].to_i
        @board=Board.find(id)
    end
    
    def delete
        board = Board.find(params[:id])
        board.destroy
        redirect_to "/index"
    end
    
    def edit
        @board = Board.find(params[:id])
        
    end
    
    def update
        board = Board.find(params[:id])
        board.title = params[:title]
        board.contents = params[:contents]
        board.name = params[:name]
        board.save
        redirect_to "/show/#{params[:id]}"
    end
    
    def tmp
        redirect_to "/show/#{params[:id]}"
    end
end
