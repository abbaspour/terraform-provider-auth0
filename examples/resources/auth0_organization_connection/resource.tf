resource "auth0_connection" "my_connection" {
  name     = "My Connection"
  strategy = "auth0"
}

resource "auth0_organization" "my_organization" {
  name         = "my-organization"
  display_name = "My Organization"
}

resource "auth0_organization_connection" "my_org_conn" {
  organization_id            = auth0_organization.my_organization.id
  connection_id              = auth0_connection.my_connection.id
  assign_membership_on_login = true
  is_signup_enabled          = false
  show_as_button             = true
}
