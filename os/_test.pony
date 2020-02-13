use "ponytest"


actor Main is TestList
	new create(env: Env) => PonyTest(env, this)
	new make() => None

	fun tag tests(test: PonyTest) =>
	test(_Test1)
		
	
 	fun @runtime_override_defaults(rto: RuntimeOptions) =>
		rto.ponyanalysis = 1
		rto.ponynoblock = true
		rto.ponygcinitial = 0
		rto.ponygcfactor = 1.0


class iso _Test1 is UnitTest
	fun name(): String => "check user name"
  
	fun apply(h: TestHelper) =>
    try
      h.complete( OS.userName(h.env)? == "rjbowli" )
    else
      h.complete( false )
    end
