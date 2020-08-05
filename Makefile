update_specs:
	curl https://api.prison.service.justice.gov.uk/api/swagger.json | json_pp > specs/prison_api.json
	curl https://community-api-public.test.delius.probation.hmpps.dsd.io/v2/api-docs | json_pp > specs/community_api.json
