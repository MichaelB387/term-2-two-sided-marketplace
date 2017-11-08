class ChatroomsController < ApplicationController
    
        def show
        @message = Message.new
        #display most recent message
        @messages = Message.most_recent
        end
    
    end