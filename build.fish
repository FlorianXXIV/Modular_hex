if not test -d ./build
	mkdir build
end
for file in **.kra
	echo Converting: $file
	if not test -d ./build/(path dirname $file)
		mkdir build/(path dirname $file)
	end
	krita $file --export --export-filename ./build/(path change-extension png $file)
end
