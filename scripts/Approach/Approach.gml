function Approach(_var, _target, _amount) {
	if (_var < _target) {
	    _var += _amount;
	    if (_var > _target) return _target;
	} else {
	    _var -= _amount;
	    if (_var < _target) return _target;
	}
	return _var;
}