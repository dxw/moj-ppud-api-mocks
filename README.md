# PPUD API mocks

This repo contains mock APIs for the PPUD project.

Included APIs:

* [Prison API](https://api.prison.service.justice.gov.uk/swagger-ui.html) (NOMIS)
* [Community API](https://community-api-public.test.delius.probation.hmpps.dsd.io/swagger-ui.html) (Delius)

## Usage

Just run `docker-compose up`!

You can then access the follow mocks:

* [Prison API](http://localhost:7783/prison_api)
* [Community API](http://localhost:7783/community_api)

## Development

### Prison and Community APIs

The Prison and Community REST APIs are mocked with [Prism](https://meta.stoplight.io/docs/prism/README.md), based on their OpenAPI specifications.

#### Adding sample data

You can add sample data to the mocks by editing the files in `specs`. See [the Prism documentation](https://meta.stoplight.io/docs/prism/docs/guides/01-mocking.md#response-examples) for details on how to add example data. Make sure you add the examples in the correct response for the endpoint!

For a simple example, try `curl http://localhost:7783/prison_api/api/access-roles`

If you want to select a specific example, you need to specify it in a header: `curl http://localhost:7783/community_api/api/offenders/crn/whatever -H "Prefer: example=98765C"`

#### Updating the specs

If the released versions change, you can update the specs automatically by running `make update_specs`. NOTE that this will remove links to existing example data, so be careful when you commit.

This process requires `json_pp` installed on your system. If you're using Homebrew on MacOS, you can run `brew bundle` to install it using the included `Brewfile`.

### PPUD WAM API

The PPUD WAM SOAP API is mocked with [Castlemock](https://castlemock.github.io/), based on the WSDL from the live service.
