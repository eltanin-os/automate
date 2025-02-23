{
	while (match($0, /\$\{?[A-Za-z_][A-Za-z0-9_]*\}?/)) {
		match_result = substr($0, RSTART, RLENGTH)
		if (match_result ~ /^\$\{/) {
			output = substr(match_result, 3, length(match_result) - 3)
		} else {
			output = substr(match_result, 2)
		}
		if (!made[output]++) {
			print output
		}
		$0 = substr($0, RSTART + RLENGTH)
	}
}
