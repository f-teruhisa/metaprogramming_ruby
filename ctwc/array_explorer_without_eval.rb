def exprole_array(method, *arguments)
	%w[a b c].send(method, *arguments)
end