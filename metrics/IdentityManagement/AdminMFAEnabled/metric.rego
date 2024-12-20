package clouditor.metrics.admin_mfa_enabled

import data.clouditor.compare
import future.keywords.every
import input as identity

default applicable = false

default compliant = false

applicable {
	# we are only interested in some kind of privileged user    
	identity.privileged
}

compliant {
	compare(data.operator, data.target_value, identity.enforceMFA)
}
