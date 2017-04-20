#camel case style of writing
class GamesController < ApplicationController #the reading on classes will teach what's going on here
  #you're telling controller to "inherit all the goodies" from ApplicationController class
  def play_rock
    @computer_move = ["rock","paper","scissors"].sample
    # instance variable live long enough to make it into html. normal variables would disappear
    if @computer_move == "rock"
      @outcome = "tie"
    elsif @computer_move == "paper"
      @outcome = "lose"
    else
      @outcome = "win"
    end
    render("games/play_rock.html.erb") #erb = embedded ruby
    #it will look under "views" for a folder called "games"
  end # this part between def and end is called a method

  def play_paper
    @computer_move = ["rock","paper","scissors"].sample
    if @computer_move == "paper"
      @outcome = "tie"
    elsif @computer_move == "scissors"
      @outcome = "lose"
    else
      @outcome = "win"
    end
    render("games/play_paper.html.erb")
  end

  def play_scissors
    @computer_move = ["rock","paper","scissors"].sample
    if @computer_move == "scissors"
      @outcome = "tie"
    elsif @computer_move == "rock"
      @outcome = "lose"
    else
      @outcome = "win"
    end
    render("games/play_scissors.html.erb") 
  end
end #always write your closing tag right away

# best practice: do all your ruby within the controller
