resource "googlecalendar_event" "example" {
  summary     = "My Event"
  description = "Long-form description of the event"
  location    = "Conference Room B"

  // Start and end times work best if specified as RFC3339.
  start = "2017-10-12T15:00:00-05:00"
  end   = "2017-10-12T17:00:00-05:00"

  // Each attendee is listed separately, and attendees can be marked as
  // optional.
  attendee {
    email = "seth@sethvargo.com"
  }

  attendee {
    email    = "you@company.com"
    optional = true
  }
}
