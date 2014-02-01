PROG = worker
TESTEE = ${PROG}.rb
TESTER = ${PROG}_spec.rb
SPEC = rspec -c --format nested

test : ${TESTEE} ${TESTER}
	${SPEC} ${TESTER}
