package metrics.dlc.approved_commit_author

import data.compare
import rego.v1

default applicable = false

default compliant = false

applicable {
	# we are only interested in code modules
	input.codeModule
}

compliant {
	compare(data.operator, data.target_value, identity.approvedCommitAuthor)
}
