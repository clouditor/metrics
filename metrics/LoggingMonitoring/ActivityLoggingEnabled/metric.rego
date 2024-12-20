import data.clouditor.compare

default applicable = false

default compliant = false

enabled := input.resourceLogging.enabled

applicable {
	enabled != null
}

compliant {
	compare(data.operator, data.target_value, enabled)
}