{
	if (substr($1, 1, 8) == "default.") {
		gsub(/^default/, "", $1)
		gsub(/\.do$/, "", $1)
		sub($1 "$", "", $2)
	}
	print $2
}
