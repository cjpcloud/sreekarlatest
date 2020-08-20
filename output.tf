output "url" {
  description = "Type the sythetic monitor url name"
  value       = "${var.url}"
}
output "subtype" {
  description = "Type the http or https"
  value       = "${var.subtype}"
}
output "body" {
  description = "ype the json body location"
  value       = "${var.body}"
}
output "host" {
  description = "type the host name"
  value       = "${var.host}"
}
output "Content-Type" {
  description = "type the Content type"
  value       = "${var.Content-Type}"
}
output "target" {
  description = "type the target 200 or 400"
  value       = "${var.target}"
}
output "locations" {
  description = "type the region"
  value       = "${var.locations}"
}
