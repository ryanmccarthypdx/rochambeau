require('rspec')
require('rochambeau')

describe("Fixnum#rochambeau") do
  it("same yields a tie") do
    expect((0).rochambeau(0)).to(eq("TIE"))
  end

  it("player 0, cpu = 1, WIN") do
    expect((0).rochambeau(1)).to(eq("WIN"))
  end

  it("player 0, cpu = 2, LOSE") do
    expect((0).rochambeau(2)).to(eq("LOSE"))
  end
  it("player 2, cpu = 2, TIE") do
    expect((2).rochambeau(2)).to(eq("TIE"))
  end
end

=begin

Rochambeau...

when player has same object as computer... TIE

when player has rock, computer has paper, LOSE

when player has scissors, computer has paper, WIN

=end
