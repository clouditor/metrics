package metrics.automatic_updates_enabled

import data.compare
import input.automaticUpdates as am

default applicable = false

default compliant = false

applicable {
	am
}

compliant {
	compare(data.operator, data.target_value, am.enabled)
}
