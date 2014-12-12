# encoding: UTF-8
require 'spec_helper.rb'
require 'exam'

describe Exam do
	 describe 'Quiz practica11' do
        before :all do
            @quiz = Quiz.new("Cuestionario de LPP") do
                
                question "¿Cuantos argumentos de tipo bloque puede recibir un metodo?",
                wrong => "2",
                right =>"1",
                wrong =>"muchos",
                wrong =>"los que defina el usuario"
               
            end
            
        end
        
        describe 'Cuestionario' do 
            it "Constructor" do
                expect(@quiz.class).to eq(Quiz)
            end
            
            
    end
end
end

