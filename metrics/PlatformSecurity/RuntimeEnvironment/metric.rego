package metrics.platform_security.runtime_environment

import data.compare
import rego.v1
import input as func

default applicable = false

default compliant = false

applicable if {
	func
}

# TODO(all): Consider to put `operator` into list of target_values for more granularity
compliant if {
	some i
	compare(data.operator, data.target_value[i].runtimeLanguage, func.runtimeLanguage)
	compare(data.operator, data.target_value[i].runtimeVersion, func.runtimeVersion)
}
