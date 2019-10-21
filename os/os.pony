use "collections"

primitive OS
	
	fun getUserName(_env: Env) : String ? =>
		// On Mac OS X, the user name is an environment variable matching any of these keys
		// _env.vars is an array of foo=bar
		
		try
			for envVar in _env.vars.values() do
				let splitEnvVar: Array[String] = envVar.split_by("=")
				let envVarName = splitEnvVar(0)?
				if 	(envVarName == "LOGNAME") or 
					(envVarName == "LOGNAME") or 
					(envVarName == "LOGNAME") or 
					(envVarName == "LOGNAME") then
					return splitEnvVar(1)?
				end
			end
		end
		
		error
	

