package metrics.dlc.approved_commit_author

import data.compare
import rego.v1
import input.codeRepository as repo

default applicable = false

default compliant = false

applicable {
	# we are only interested in code repositories
	repo
}

compliant {
	compare(data.operator, data.target_value, repo.approvedCommitAuthor)
}
