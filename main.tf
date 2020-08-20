
resource "datadog_synthetics_test" "test_api" {
  type = "api"
  subtype = "${var.subtype}"
  request = {
    method = "${var.method}"
    url = "${var.url}"
    body = file("${var.body}")
    }
  request_headers = {
    host = "${var.host}"
    Content-Type = "${var.Content-Type}"

  }

  assertion {
      type = "statusCode"
      operator = "is"
      target = "${var.target}"
  }
  locations = [ "${var.locations}" ]
  options = {
    tick_every = 900
  }
  name = "An API test on example.org"
  message = "Notify @pagerduty"
  tags = ["foo:bar", "foo", "env:test"]

  status = "live"
}

