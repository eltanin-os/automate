{
	while (match($0, /\$\{?[A-Za-z_][A-Za-z0-9_]*\}?/)) {
		match_result = substr($0, RSTART, RLENGTH)
		if (match_result ~ /^\$\{/) {
			print substr(match_result, 3, length(match_result) - 3)
		} else {
			print substr(match_result, 2)
		}
		$0 = substr($0, RSTART + RLENGTH)
	}
}
