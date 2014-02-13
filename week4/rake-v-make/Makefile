WIN = *.bak
NIX = *~
RM  = rm -fv

default : win nix       #Remove Unix and Windows backup files

win : # Remove files with a .bak extension
	@${RM} ${WIN}

nix :    # Remove files whose names end with a tilde
	@${RM} ${NIX}  # Remove files whose names end with a tilde

# OK, here rake wins. I was about to use seq to generate some numbers,
# but it's not portable. There are workarounds, but I am going to be 
# lazy and hardcode my numbers in.
fake :   # create dummy files for testing
	@for i in 1 2 3; do touch $$i.bak $$i~; echo $$i.bak; echo $$i~; done

help :   # show available tasks
	@sed -n 's,^\([^	.]\+\):[^#]*#\s*\(.*\),\1: \2,p' Makefile

compare :   # show non-comment non-blank lines of code
	@for i in Makefile Rakefile; do \
		echo "$$i:"; \
		grep -v -e '^\s*#' -e '^\s*$$' $$i | wc ; \
	done

.PHONY : default win nix fake help compare
