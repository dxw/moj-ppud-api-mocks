# PPUD API mocks

This repo contains mock APIs for the PPUD project.

Included APIs:

* [Prison API](https://api.prison.service.justice.gov.uk/swagger-ui.html) (NOMIS)
* [Community API](https://community-api-public.test.delius.probation.hmpps.dsd.io/swagger-ui.html) (Delius)
* PPUD WAM

## Usage

Just run `docker-compose up`!

You can then access the follow mocks:

* [Prison API](http://localhost:7783/prison_api)
* [Community API](http://localhost:7783/community_api)
* [PPUD WAM](http://localhost:7783/ppud_wam)

## Development

### Prison and Community APIs

The Prison and Community REST APIs are mocked with [Prism](https://meta.stoplight.io/docs/prism/README.md), based on their OpenAPI specifications.

#### Adding sample data

You can add sample data to the mocks by editing the files in `specs`. See [the Prism documentation](https://meta.stoplight.io/docs/prism/docs/guides/01-mocking.md#response-examples) for details on how to add example data. Make sure you add the examples in the correct response for the endpoint!

#### Sample request

For a simple example, try `curl http://localhost:7783/prison_api/api/access-roles`

If you want to select a specific example, you need to specify it in a header: `curl http://localhost:7783/community_api/api/offenders/crn/whatever -H "Prefer: example=98765C"`

#### Updating the specs

If the released versions change, you can update the specs automatically by running `make update_specs`. NOTE that this will remove links to existing example data, so be careful when you commit.

This process requires `json_pp` installed on your system. If you're using Homebrew on MacOS, you can run `brew bundle` to install it using the included `Brewfile`.

### PPUD WAM API

The PPUD WAM SOAP API is mocked with [Castlemock](https://castlemock.github.io/), based on the WSDL from the live service. Castlemock is configured via its [admin interface](http://localhost:7783/castlemock/) - log in with `admin / admin`. The configuration is saved in the `castlemock` directory and can be committed to git.

The WAM API mocked by Castlemock is proxied by Caddy to appear on the `ppud_wam` path for ease of use.

#### Sample request

```
curl -X POST http://localhost:7783/ppud_wam/BasicHttpBinding_IPanel --data-ascii \
  "<soapenv:Envelope xmlns:soapenv=\"http://schemas.xmlsoap.org/soap/envelope/\" xmlns:tem=\"http://tempuri.org/\"> \
    <soapenv:Header/> \
    <soapenv:Body>  \
      <tem:GetPanelInfo> \
        <tem:panel>?</tem:panel> \
        <tem:userId>?</tem:userId> \
        <tem:token>?</tem:token> \
      </tem:GetPanelInfo> \
    </soapenv:Body> \
  </soapenv:Envelope>"
```

You should get a SOAP response saying "hello world!".

It's probably easiest to use a tool like [SoapUI](https://www.soapui.org/) rather than curl when using this properly. Create a SOAP project and add the WSDL files for the endpoints you want to use. You should be able to get the WSDL for each endpoint by adding `?wsdl` to the end of the URL. For instance: http://localhost:7783/ppud_wam/BasicHttpBinding_IPanel?wsdl (NOTE: this is not currently working, not sure why)

#### Adding sample data

The Castlemock admin UI allows example responses to be added interactively - see their [documentation](https://github.com/castlemock/castlemock/wiki/Use-Case:-SOAP#create-mocked-responses) for details. Every endpoint needs an example response before you can call it.
