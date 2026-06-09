return {
	Name = "Combat",

	Modules = {
		{
			Name = "TriggerBot",

			Settings = {
				Enabled = false,
				Range = 4.5,
				Priority = "Distance"
			}
		},

		{
			Name = "AutoShoot",

			Settings = {
				Enabled = false,
				CPS = 10
			}
		}
	}
}
