# encoding: UTF-8
class Q_uiz
    
    RIGHT = :right
    WRONG = :wrong
    
    attr_accessor :name, :questions, :instructions, :counter
       
        def initialize(name, &block)
            self.name = name
            self.questions = []
            #self.instructions = []
            @counter = 0
            instance_eval &block
            
        end
      
        def to_s
          output = <<"EOQUIZ" 
                #{self.name}

                #{self.questions.join("\n")}
    
EOQUIZ
        end
      
        def quest(name, answers)
            q =  @answers = answers.map { |k, v| Answer.new(k[ORDER], k[KIND],  v) }.sort
            questions << q 
            puts q if $DEBUG
            @counter = 0
        end

=begin     
        def step(text, options = {})
          instruction = text
          instruction << " (#{options[:wrong]})" if options[:wrong]
      
          instructions << instruction
        end
=end    
        def right
         @counter += 1
        [@counter, RIGHT]
          
        end
      
        def wrong
        @counter += 1
        [@counter, WRONG]
        end
end
      
      puts Quiz.new("Cuestionario de LPP") {
         
        quest "¿Cuantos argumentos de tipo bloque puede recibir un metodo?",
        wrong => "2",
        right =>"1",
        wrong =>"muchos",
        wrong =>"los que defina el usuario"
=begin
        step "1"         
        step "2"           
        step "muchos."     
        step "los que defina el usuario."
=end        
}