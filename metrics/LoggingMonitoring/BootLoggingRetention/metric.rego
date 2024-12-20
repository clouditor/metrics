import data.clouditor.compare
import input.bootLogging as logging

default applicable = false

default compliant = false

applicable {
	logging
}

compliant {
	# time.Duration is nanoseconds, we want to convert this to days
	days := time.parse_duration_ns(logging.retentionPeriod) / (((1000 * 1000) * 1000) * 3600)

	compare(data.operator, data.target_value, days)
}
