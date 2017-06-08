require "rspec"
require "board.rb"
require "game.rb"
require "player.rb"


describe "tower of hanoi" do
  describe "::Game" do
    let(:player) {double("Jackie Chan", name: "Jackie Chan")}
    let(:game) {Game.new(player)}
    let(:board) {double("board")} #could be wrong

    context "#initialize" do
      it "initialize with player" do
        expect(game.player).to eq(player)
      end

      it "should create a board object" do
        expect(game.board.nil?).to eq(board.nil?)
      end
    end
  end

  describe "::Board" do
    let(:board) {Board.new}
    let(:towerA) {double("towerA")}
    let(:towerB) {double("towerB")}
    let(:towerC) {double("towerC", pole: [1,2,3])}

    describe "#won?" do
      it "towerC.pole" do

        expect(board).to_not be_won
      end

      it "is it boolean?" do
        expect([true,false].include?(board.won?))
      end
    end

    describe "#is_valid" do
      it "is_valid takes 2 args between A, B, C " do
        expect { board.is_valid?("A", "D") }.to raise_error("invalid Location!")
      end
    end
  end

  describe "::Player" do
    subject(:player) {Player.new("Jackie Chan")}

    context "#initialize" do
      it "calls player name" do
        expect(player.name).to eq("Jackie Chan")
      end
    end
  end

  # describe "::Tower" do
  #   subject(:tower) {Tower.new}
  #
  #   context "#initialize" do
  #     it "starts on empty array" do
  #       expect(tower.pole).to eq([])
  #     end
  #   end
  #
  #   context "#add_disk" do
  #     it "adds disk to pole" do
  #       tower.add_disk(1)
  #       expect(tower.pole.length).to eq(1)
  #     end
  #   end
  #   context "#take_disk" do
  #     before(:each) do
  #       tower.add_disk(1)
  #     end
  #
  #     it "removes disk from pole" do
  #       tower.take_disk
  #       expect(tower.pole.length).to eq(0) #problem
  #     end
  #
  #     it "returns disk from pole" do
  #       expect(tower.take_disk).to eq(1)
  #     end
  #   end

  # end


end
