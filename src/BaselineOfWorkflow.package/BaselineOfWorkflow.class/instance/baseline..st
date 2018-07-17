baselines
baseline: spec
	<baseline>
	spec for: #common do: [		
		spec configuration: 'ZTimestamp' with: [
			spec 
				versionString: #stable;
				repository: 'http://mc.stfx.eu/Neo' ].
			spec 
				package: 'Workflow' 
				with: [ spec requires: { 'ZTimestamp'}].
	 ]
