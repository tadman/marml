# line 1 "marml.rl"
# line 4 "marml.rl"


module Marml
  class Parser
  
# line 9 "marml.rb"
class << self
	attr_accessor :_marml_module_actions
	private :_marml_module_actions, :_marml_module_actions=
end
self._marml_module_actions = [
	0, 1, 0
]

class << self
	attr_accessor :_marml_module_key_offsets
	private :_marml_module_key_offsets, :_marml_module_key_offsets=
end
self._marml_module_key_offsets = [
	0, 1
]

class << self
	attr_accessor :_marml_module_trans_keys
	private :_marml_module_trans_keys, :_marml_module_trans_keys=
end
self._marml_module_trans_keys = [
	0, 0, 0
]

class << self
	attr_accessor :_marml_module_single_lengths
	private :_marml_module_single_lengths, :_marml_module_single_lengths=
end
self._marml_module_single_lengths = [
	1, 1
]

class << self
	attr_accessor :_marml_module_range_lengths
	private :_marml_module_range_lengths, :_marml_module_range_lengths=
end
self._marml_module_range_lengths = [
	0, 0
]

class << self
	attr_accessor :_marml_module_index_offsets
	private :_marml_module_index_offsets, :_marml_module_index_offsets=
end
self._marml_module_index_offsets = [
	0, 2
]

class << self
	attr_accessor :_marml_module_trans_targs_wi
	private :_marml_module_trans_targs_wi, :_marml_module_trans_targs_wi=
end
self._marml_module_trans_targs_wi = [
	1, 0, 1, 0, 0
]

class << self
	attr_accessor :_marml_module_trans_actions_wi
	private :_marml_module_trans_actions_wi, :_marml_module_trans_actions_wi=
end
self._marml_module_trans_actions_wi = [
	1, 0, 1, 0, 0
]

class << self
	attr_accessor :marml_module_start
end
self.marml_module_start = 0;
class << self
	attr_accessor :marml_module_first_final
end
self.marml_module_first_final = 1;
class << self
	attr_accessor :marml_module_error
end
self.marml_module_error = -1;

class << self
	attr_accessor :marml_module_en_file
end
self.marml_module_en_file = 0;

# line 9 "marml.rl"
  
    def self.parse(data)
      result = nil
    
# line 97 "marml.rb"
begin
	p ||= 0
	pe ||= data.length
	cs = marml_module_start
end
# line 13 "marml.rl"
    
# line 105 "marml.rb"
begin
	_klen, _trans, _keys, _acts, _nacts = nil
	if p != pe
	while true
	_break_resume = false
	begin
	_break_again = false
	_keys = _marml_module_key_offsets[cs]
	_trans = _marml_module_index_offsets[cs]
	_klen = _marml_module_single_lengths[cs]
	_break_match = false
	
	begin
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + _klen - 1

	     loop do
	        break if _upper < _lower
	        _mid = _lower + ( (_upper - _lower) >> 1 )

	        if data[p] < _marml_module_trans_keys[_mid]
	           _upper = _mid - 1
	        elsif data[p] > _marml_module_trans_keys[_mid]
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
	  _klen = _marml_module_range_lengths[cs]
	  if _klen > 0
	     _lower = _keys
	     _upper = _keys + (_klen << 1) - 2
	     loop do
	        break if _upper < _lower
	        _mid = _lower + (((_upper-_lower) >> 1) & ~1)
	        if data[p] < _marml_module_trans_keys[_mid]
	          _upper = _mid - 2
	        elsif data[p] > _marml_module_trans_keys[_mid+1]
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
	cs = _marml_module_trans_targs_wi[_trans]
	break if _marml_module_trans_actions_wi[_trans] == 0
	_acts = _marml_module_trans_actions_wi[_trans]
	_nacts = _marml_module_actions[_acts]
	_acts += 1
	while _nacts > 0
		_nacts -= 1
		_acts += 1
		case _marml_module_actions[_acts - 1]
when 0:
# line 4 "marml.rl"
		begin
 result = :success 		end
# line 4 "marml.rl"
# line 176 "marml.rb"
		end # action switch
	end
	end while false
	break if _break_resume
	p += 1
	break if p == pe
	end
	end
	end
# line 14 "marml.rl"
      result
    end
  
    def initialize(data = nil)
      self.parse(data) if (data)
    end
  
    def parse(data)
      self.class.parse(data)
    end
  end
end
