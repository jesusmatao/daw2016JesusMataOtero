#Author: Jesus Mata Otero
class Object
	def initialize(position_x = nil,position_y=nil,weight=nil)
		@position_x=position_x
		@position_y=position_y
		@weight=weight
	end
	attr_accessor :position_x, :position_y, :weight
end

class Weapon < Object
	def initialize(damage=nil,success_msg=nil,failure_msg=nil,position_x=nil,position_y=nil,weight=nil)
		super(position_x,position_y,weight)
		@damage=damage
		@success_msg=success_msg
		@failure_msg=failure_msg
	end
	
	attr_accessor :damage, :success_msg, :failure_msg

end
class Agent < Object
	def initialize(health=nil,strength=nil,name=nil,current_weapon=nil,position_x=nil,position_y=nil,weight=nil)
		super(position_x,position_y,weight)
		@health=health
		@strength=strength
		@name=name
		@current_weapon=current_weapon
	end
	attr_accessor :health, :strength, :name,:current_weapon
	
end
class Enemy < Agent
	def initialize(health=nil,strength=nil,name=nil,current_weapon=nil,position_x=nil,position_y=nil,weight=nil,strategy_id=nil)
		super(health,strength,name,current_weapon,position_x,position_y,weight)
		@strategy_id=strategy_id
	end
	attr_accessor :strategy_id
end
class Player < Agent
	def initialize(health=nil,strength=nil,name=nil,current_weapon=nil,position_x=nil,position_y=nil,weight=nil,id=nil)
		super(health,strength,name,current_weapon,position_x,position_y,weight)
		@id=id
	end
	attr_accessor :id
end