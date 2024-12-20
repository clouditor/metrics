TODO(all): Update metric rego file

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
