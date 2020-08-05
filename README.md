# PPUD API mocks

This repo contains mock APIs for the PPUD project. The Prison API (NOMIS) and the Community API (Delius) are mocked using [Prism](https://meta.stoplight.io/docs/prism/README.md).

## Usage

Just run `docker-compose up`!

You can then access the [Prison API](https://api.prison.service.justice.gov.uk/swagger-ui.html) mock at http://localhost:7783/prison_api, and the [Community API](https://community-api-public.test.delius.probation.hmpps.dsd.io/swagger-ui.html) mock at http://localhost:7783/community_api

## Adding sample data

You can add sample data to the mocks by editing the files in `specs`. See https://meta.stoplight.io/docs/prism/docs/guides/01-mocking.md#response-examples for details on how to add example data.

## Updating the specs

If the released versions change, you can update the specs automatically by running `make update_specs`. NOTE that this will remove any existing example data, so be careful when you commit.

This process requires `json_pp` installed on your system. If you're using Homebrew on MacOS, you can run `brew bundle` to install it using the included `Brewfile`.
