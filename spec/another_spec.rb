require_relative '../classes.rb'

# Testing SCARY WOLF is an instance of WOLF class and testing WOLF METHODS by checking that it returns the right string.

describe "scary_wolf" do 
    it 'should be a new instance of Wolf class' do 
        expect(Wolf.new).to be_an_instance_of(Wolf)
        end 
    it 'should call the growl method and return a string' do 
            expect(Wolf.new.growl).to eq("'GRRRrrrr...!!!'")
        end 
    end 

# Calculator experiment test

# describe Calculator do 
#     it 'should subtract' do 
#         expect(Calculator.subtract(5, 3)).to eq(5 - 3)
#     end 
# end