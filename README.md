# EventFrontend

The EventFrontend is designed to verify the format of submitted events. We need
to enforce a format on submitted events. Specifically, JSON with a couple
important keys.

```elixir
# POST /event

%{
  "event" => "event.name",
  "payload" => %{
    "your-keys-here"
  }
}
```

We enforce that `payload` is a Map, and that `event` is present. Once these are
verified, we hand off the event to the EventService.

```elixir
# POST /subscribe

%{
  "event" => "event.name",
  "url" => "url-to-hit-with-event"
}
```

Endpoints:

  * POST /event
      Submit an event to the event system.
  * POST /subscribe
      Subscribe to receive events.



To start your Phoenix app:

  * Install dependencies with `mix deps.get`
  * Start Phoenix endpoint with `mix phoenix.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](http://www.phoenixframework.org/docs/deployment).

## Learn more

  * Official website: http://www.phoenixframework.org/
  * Guides: http://phoenixframework.org/docs/overview
  * Docs: https://hexdocs.pm/phoenix
  * Mailing list: http://groups.google.com/group/phoenix-talk
  * Source: https://github.com/phoenixframework/phoenix
