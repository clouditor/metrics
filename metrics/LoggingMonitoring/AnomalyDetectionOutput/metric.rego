TODO(all): Update metric rego file like BootLoggingOutput? I think we do not need specific output folders. (anatheka)

import data.clouditor.compare

default applicable = false

default compliant = false

output := input.anomalyDetection.applicationLogging.loggingService

applicable {
	output != null
}

compliant {
	compare(data.operator, data.target_value, output)
}
