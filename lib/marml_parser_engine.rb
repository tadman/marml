# line 1 "marml.rl"
# line 118 "marml.rl"


module Marml
  class Parser
    class Engine
      def initialize
        
# line 11 "../lib/marml_parser_engine.rb"
class << self
	attr_accessor :_marml_actions
	private :_marml_actions, :_marml_actions=
end
self._marml_actions = [
	0, 1, 0, 1, 8, 1, 10, 1, 
	11, 1, 14, 1, 15, 1, 16, 1, 
	17, 1, 18, 1, 23, 1, 24, 1, 
	25, 1, 26, 1, 27, 1, 28, 1, 
	29, 1, 30, 1, 31, 2, 1, 13, 
	2, 2, 8, 2, 3, 8, 2, 4, 
	8, 2, 5, 8, 2, 6, 8, 2, 
	7, 8, 3, 12, 8, 22, 3, 12, 
	19, 8, 4, 12, 9, 20, 8, 4, 
	12, 9, 21, 8
]

class << self
	attr_accessor :_marml_cond_offsets
	private :_marml_cond_offsets, :_marml_cond_offsets=
end
self._marml_cond_offsets = [
	0, 0, 1, 1, 1, 1, 1, 1, 
	1, 1, 1, 1, 1, 1, 1, 1, 
	1, 1, 2, 2, 2, 2, 2, 2
]

class << self
	attr_accessor :_marml_cond_lengths
	private :_marml_cond_lengths, :_marml_cond_lengths=
end
self._marml_cond_lengths = [
	0, 1, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 1, 0, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :_marml_cond_keys
	private :_marml_cond_keys, :_marml_cond_keys=
end
self._marml_cond_keys = [
	32, 32, 10, 10, 0
]

class << self
	attr_accessor :_marml_cond_spaces
	private :_marml_cond_spaces, :_marml_cond_spaces=
end
self._marml_cond_spaces = [
	0, 0, 0
]

class << self
	attr_accessor :_marml_key_offsets
	private :_marml_key_offsets, :_marml_key_offsets=
end
self._marml_key_offsets = [
	0, 0, 0, 8, 16, 24, 25, 30, 
	33, 35, 38, 40, 43, 46, 49, 52, 
	53, 54, 59, 60, 68, 76, 78, 86
]

class << self
	attr_accessor :_marml_trans_keys
	private :_marml_trans_keys, :_marml_trans_keys=
end
self._marml_trans_keys = [
	45, 95, 48, 58, 65, 90, 97, 122, 
	45, 95, 48, 58, 65, 90, 97, 122, 
	10, 33, 35, 37, 45, 46, 59, 61, 
	10, 9, 10, 32, 33, 45, 9, 10, 
	32, 10, 33, 9, 10, 32, 10, 45, 
	9, 10, 32, 9, 10, 32, 9, 10, 
	32, 9, 10, 32, 10, 10, 522, -128, 
	9, 11, 127, 10, 45, 95, 48, 58, 
	65, 90, 97, 122, 45, 95, 48, 58, 
	65, 90, 97, 122, 35, 46, 45, 95, 
	48, 58, 65, 90, 97, 122, 45, 95, 
	48, 58, 65, 90, 97, 122, 0
]

class << self
	attr_accessor :_marml_single_lengths
	private :_marml_single_lengths, :_marml_single_lengths=
end
self._marml_single_lengths = [
	0, 0, 2, 2, 8, 1, 5, 3, 
	2, 3, 2, 3, 3, 3, 3, 1, 
	1, 1, 1, 2, 2, 2, 2, 2
]

class << self
	attr_accessor :_marml_range_lengths
	private :_marml_range_lengths, :_marml_range_lengths=
end
self._marml_range_lengths = [
	0, 0, 3, 3, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 2, 0, 3, 3, 0, 3, 3
]

class << self
	attr_accessor :_marml_index_offsets
	private :_marml_index_offsets, :_marml_index_offsets=
end
self._marml_index_offsets = [
	0, 0, 1, 7, 13, 22, 24, 30, 
	34, 37, 41, 44, 48, 52, 56, 60, 
	62, 64, 68, 70, 76, 82, 85, 91
]

class << self
	attr_accessor :_marml_indicies
	private :_marml_indicies, :_marml_indicies=
end
self._marml_indicies = [
	0, 1, 1, 1, 1, 1, 0, 2, 
	2, 2, 2, 2, 0, 4, 5, 6, 
	7, 8, 9, 10, 11, 3, 12, 3, 
	13, 14, 13, 15, 16, 3, 13, 14, 
	13, 3, 17, 18, 3, 19, 20, 19, 
	3, 17, 21, 3, 22, 23, 22, 3, 
	24, 25, 24, 3, 26, 27, 26, 3, 
	28, 29, 28, 3, 31, 30, 32, 30, 
	34, 33, 33, 0, 35, 33, 36, 36, 
	36, 36, 36, 0, 36, 36, 36, 36, 
	36, 37, 38, 39, 0, 1, 1, 1, 
	1, 1, 40, 2, 2, 2, 2, 2, 
	41, 0
]

class << self
	attr_accessor :_marml_trans_targs_wi
	private :_marml_trans_targs_wi, :_marml_trans_targs_wi=
end
self._marml_trans_targs_wi = [
	0, 22, 23, 5, 4, 6, 5, 5, 
	12, 5, 13, 14, 4, 7, 4, 8, 
	10, 4, 9, 9, 4, 11, 11, 4, 
	12, 4, 13, 4, 14, 4, 16, 15, 
	15, 18, 1, 17, 20, 19, 2, 3, 
	21, 21
]

class << self
	attr_accessor :_marml_trans_actions_wi
	private :_marml_trans_actions_wi, :_marml_trans_actions_wi=
end
self._marml_trans_actions_wi = [
	0, 0, 0, 58, 19, 3, 66, 62, 
	3, 71, 3, 3, 35, 49, 29, 3, 
	3, 33, 3, 40, 21, 3, 46, 27, 
	52, 23, 43, 25, 55, 31, 0, 37, 
	9, 0, 0, 11, 0, 13, 0, 0, 
	17, 15
]

class << self
	attr_accessor :_marml_to_state_actions
	private :_marml_to_state_actions, :_marml_to_state_actions=
end
self._marml_to_state_actions = [
	0, 0, 0, 0, 5, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 5, 
	0, 5, 0, 5, 0, 5, 0, 0
]

class << self
	attr_accessor :_marml_from_state_actions
	private :_marml_from_state_actions, :_marml_from_state_actions=
end
self._marml_from_state_actions = [
	0, 0, 0, 0, 7, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 7, 
	0, 7, 0, 7, 0, 7, 0, 0
]

class << self
	attr_accessor :_marml_eof_actions
	private :_marml_eof_actions, :_marml_eof_actions=
end
self._marml_eof_actions = [
	0, 0, 0, 0, 0, 0, 0, 0, 
	0, 0, 0, 0, 0, 0, 0, 0, 
	1, 0, 1, 0, 0, 0, 0, 0
]

class << self
	attr_accessor :marml_start
end
self.marml_start = 4;
class << self
	attr_accessor :marml_first_final
end
self.marml_first_final = 4;
class << self
	attr_accessor :marml_error
end
self.marml_error = 0;

class << self
	attr_accessor :marml_en_line
end
self.marml_en_line = 15;
class << self
	attr_accessor :marml_en_block
end
self.marml_en_block = 17;
class << self
	attr_accessor :marml_en_tag
end
self.marml_en_tag = 19;
class << self
	attr_accessor :marml_en_div_tag
end
self.marml_en_div_tag = 21;
class << self
	attr_accessor :marml_en_main
end
self.marml_en_main = 4;

# line 125 "marml.rl"
      end

      def parse(data)
        @data = data
        return [ :empty ] if (!@data or @data.empty? or !@data.match(/\S/))

        result = :empty
        @current_block = Block.new
        @result_blocks = Template.new
        @result_blocks << @current_block
        @block_stack = [ @current_block ]

        stack = [ ]
        @ilevel = ilevel = [ 0 ]

        
# line 251 "../lib/marml_parser_engine.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = marml_start
	top = 0
	tokstart = nil
	tokend = nil
	act = 0
end
# line 141 "marml.rl"
        
        eof = pe
        
        
# line 266 "../lib/marml_parser_engine.rb"
begin
	_klen, _trans, _keys, _widec, _acts, _nacts = nil
	if p != pe
	if cs != 0
	while true
	_break_resume = false
	begin
	_break_again = false
	_acts = _marml_from_state_actions[cs]
	_nacts = _marml_actions[_acts]
	_acts += 1
	while _nacts > 0
		_nacts -= 1
		_acts += 1
		case _marml_actions[_acts - 1]
			when 11:
# line 1 "marml.rl"
		begin
tokstart = p
		end
# line 1 "marml.rl"
# line 288 "../lib/marml_parser_engine.rb"
		end # from state action switch
	end
	break if _break_again
	_widec = data[p]
	_keys = _marml_cond_offsets[cs]*2
	_klen = _marml_cond_lengths[cs]
	if _klen > 0
		_lower = _keys
		_upper = _keys + (_klen<<1) - 2
		loop do
			break if _upper < _lower
			_mid = _lower + (((_upper-_lower) >> 1) & ~1)
			if _widec < _marml_cond_keys[_mid]
				_upper = _mid - 2
			elsif _widec > _marml_cond_keys[_mid+1]
				_lower = _mid + 2
			else
				case _marml_cond_spaces[_marml_cond_offsets[cs] + ((_mid - _keys)>>1)]
	when 0:	_widec = 128+ (data[p] - -128)
	_widec += 256 if ( 
# line 11 "marml.rl"
 true  )
				end # case
			end
		end # loop
	end
	_keys = _marml_key_offsets[cs]
	_trans = _marml_index_offsets[cs]
	_klen = _marml_single_lengths[cs]
	_break_match = false
	
	begin
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + _klen - 1

	     loop do
	        break if _upper < _lower
	        _mid = _lower + ( (_upper - _lower) >> 1 )

	        if _widec < _marml_trans_keys[_mid]
	           _upper = _mid - 1
	        elsif _widec > _marml_trans_keys[_mid]
	           _lower = _mid + 1
	        else
	           _trans += (_mid - _keys)
	           _break_match = true
	           break
	        end
	     end # loop
	     break if _break_match
	     _keys += _klen
	     _trans += _klen
	  end
	  _klen = _marml_range_lengths[cs]
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + (_klen << 1) - 2
	     loop do
	        break if _upper < _lower
	        _mid = _lower + (((_upper-_lower) >> 1) & ~1)
	        if _widec < _marml_trans_keys[_mid]
	          _upper = _mid - 2
	        elsif _widec > _marml_trans_keys[_mid+1]
	          _lower = _mid + 2
	        else
	          _trans += ((_mid - _keys) >> 1)
	          _break_match = true
	          break
	        end
	     end # loop
	     break if _break_match
	     _trans += _klen
	  end
	end while false
	_trans = _marml_indicies[_trans]
	cs = _marml_trans_targs_wi[_trans]
	break if _marml_trans_actions_wi[_trans] == 0
	_acts = _marml_trans_actions_wi[_trans]
	_nacts = _marml_actions[_acts]
	_acts += 1
	while _nacts > 0
		_nacts -= 1
		_acts += 1
		case _marml_actions[_acts - 1]
when 1:
# line 20 "marml.rl"
		begin
 ilevel.pop; 	begin
		top -= 1
		cs = stack[top]
		_break_again = true
		break
	end
 		end
# line 20 "marml.rl"
when 2:
# line 88 "marml.rl"
		begin
 flag_as_type(:doctype); 		end
# line 88 "marml.rl"
when 3:
# line 89 "marml.rl"
		begin
 flag_as_type(:comment); 		end
# line 89 "marml.rl"
when 4:
# line 90 "marml.rl"
		begin
 flag_as_type(:html_comment); 		end
# line 90 "marml.rl"
when 5:
# line 91 "marml.rl"
		begin
 flag_as_type(:pragma); 		end
# line 91 "marml.rl"
when 6:
# line 92 "marml.rl"
		begin
 flag_as_type(:inline); 		end
# line 92 "marml.rl"
when 7:
# line 93 "marml.rl"
		begin
 flag_as_type(:inject); 		end
# line 93 "marml.rl"
when 8:
# line 94 "marml.rl"
		begin
 flag_as_type(:text); 		end
# line 94 "marml.rl"
when 9:
# line 99 "marml.rl"
		begin
 p -= 1 		end
# line 99 "marml.rl"
when 12:
# line 1 "marml.rl"
		begin
tokend = p+1
		end
# line 1 "marml.rl"
when 13:
# line 28 "marml.rl"
		begin
tokend = p+1
		end
# line 28 "marml.rl"
when 14:
# line 19 "marml.rl"
		begin
tokend = p
p = p - 1; begin  capture(@block_type, tokstart, tokend); ilevel.pop; 	begin
		top -= 1
		cs = stack[top]
		_break_again = true
		break
	end
  end
		end
# line 19 "marml.rl"
when 15:
# line 19 "marml.rl"
		begin
tokend = p
p = p - 1; begin  capture(@block_type, tokstart, tokend); ilevel.pop; 	begin
		top -= 1
		cs = stack[top]
		_break_again = true
		break
	end
  end
		end
# line 19 "marml.rl"
when 16:
# line 74 "marml.rl"
		begin
tokend = p
p = p - 1; begin  @current_block << data[tokstart, tokend]  end
		end
# line 74 "marml.rl"
when 17:
# line 74 "marml.rl"
		begin
tokend = p
p = p - 1; begin  @current_block << data[tokstart, tokend]  end
		end
# line 74 "marml.rl"
when 18:
# line 74 "marml.rl"
		begin
tokend = p
p = p - 1; begin  @current_block << data[tokstart, tokend]  end
		end
# line 74 "marml.rl"
when 19:
# line 96 "marml.rl"
		begin
act = 15;		end
# line 96 "marml.rl"
when 20:
# line 97 "marml.rl"
		begin
act = 16;		end
# line 97 "marml.rl"
when 21:
# line 97 "marml.rl"
		begin
act = 17;		end
# line 97 "marml.rl"
when 22:
# line 18 "marml.rl"
		begin
act = 18;		end
# line 18 "marml.rl"
when 23:
# line 85 "marml.rl"
		begin
tokend = p+1
 begin  remark(:newline); @block_type = nil  end
		end
# line 85 "marml.rl"
when 24:
# line 26 "marml.rl"
		begin
tokend = p
p = p - 1; begin  	begin
		stack[top] = cs
		top+= 1
		cs = 15
		_break_again = true
		break
	end
  end
		end
# line 26 "marml.rl"
when 25:
# line 26 "marml.rl"
		begin
tokend = p
p = p - 1; begin  	begin
		stack[top] = cs
		top+= 1
		cs = 15
		_break_again = true
		break
	end
  end
		end
# line 26 "marml.rl"
when 26:
# line 33 "marml.rl"
		begin
tokend = p
p = p - 1; begin  stack_up; 	begin
		stack[top] = cs
		top+= 1
		cs = 15
		_break_again = true
		break
	end
  end
		end
# line 33 "marml.rl"
when 27:
# line 33 "marml.rl"
		begin
tokend = p
p = p - 1; begin  stack_up; 	begin
		stack[top] = cs
		top+= 1
		cs = 15
		_break_again = true
		break
	end
  end
		end
# line 33 "marml.rl"
when 28:
# line 33 "marml.rl"
		begin
tokend = p
p = p - 1; begin  stack_up; 	begin
		stack[top] = cs
		top+= 1
		cs = 15
		_break_again = true
		break
	end
  end
		end
# line 33 "marml.rl"
when 29:
# line 33 "marml.rl"
		begin
tokend = p
p = p - 1; begin  stack_up; 	begin
		stack[top] = cs
		top+= 1
		cs = 15
		_break_again = true
		break
	end
  end
		end
# line 33 "marml.rl"
when 30:
# line 18 "marml.rl"
		begin
tokend = p
p = p - 1; begin  capture(@block_type, tokstart, tokend);  end
		end
# line 18 "marml.rl"
when 31:
# line 1 "marml.rl"
		begin
	case act
	when 15:
	begin begin p = ((tokend))-1; end
 flag_as_type(:tag); call tag;  end
	when 16:
	begin begin p = ((tokend))-1; end
 flag_as_type(:tag); call div_tag; end
	when 17:
	begin begin p = ((tokend))-1; end
 flag_as_type(:tag); call div_tag; end
	when 18:
	begin begin p = ((tokend))-1; end
 capture(@block_type, tokstart, tokend); end
end 
			end
# line 1 "marml.rl"
# line 621 "../lib/marml_parser_engine.rb"
		end # action switch
	end
	end while false
	break if _break_resume
	_acts = _marml_to_state_actions[cs]
	_nacts = _marml_actions[_acts]
	_acts += 1
	while _nacts > 0
		_nacts -= 1
		_acts += 1
		case _marml_actions[_acts - 1]
when 10
# line 1 "marml.rl"
		begin
tokstart = nil;		end
# line 1 "marml.rl"
# line 638 "../lib/marml_parser_engine.rb"
		end # to state action switch
	end
	break if cs == 0
	p += 1
	break if p == pe
	end
	end
	end
	end
# line 145 "marml.rl"
        
# line 650 "../lib/marml_parser_engine.rb"
	_acts = _marml_eof_actions[cs]
	_nacts =  _marml_actions[_acts]
	_acts += 1
	while _nacts > 0
		_nacts -= 1
		_acts += 1
		case _marml_actions[_acts - 1]
when 0:
# line 17 "marml.rl"
		begin
 capture(@block_type, tokstart, eof); 		end
# line 17 "marml.rl"
# line 663 "../lib/marml_parser_engine.rb"
		end # eof action switch
	end
# line 146 "marml.rl"

        result = :error unless (cs >= marml_first_final)
    
        @result_blocks
      end
    end
  end
end
