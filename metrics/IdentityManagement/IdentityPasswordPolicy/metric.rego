package clouditor.metrics.identity_password_policy

import data.clouditor.compare
import future.keywords.every
import input as identity

default applicable = false

default compliant = false

compliant {
	# we are just assuming, that the standard policy looks good
	compare(data.operator, data.target_value, identity.disablePasswordPolicy)
}
