require_relative '../classes.rb'

# Testing SCARY WOLF is an instance of WOLF class and testing WOLF METHODS by checking that it returns the right string.

describe "scary_wolf" do 
    it 'should be a new instance of Wolf class' do 
        expect(Wolf.new).to be_an_instance_of(Wolf)
        end 
    it 'should call the growl method and return a string' do 
            expect(Wolf.new.growl).to eq("'GRRRrrrr...!!!'")
        end 
    it 'should call the talk method and return a string' do 
            expect(Wolf.new.talk).to eq(CharTiming.slow("'I don't think now is the time for talking, pal.'", 0.08))
        end 
    it 'should call the pur method and return a string' do 
            expect(Wolf.new.pur).to eq("'Puurr...'")
        end
    end 