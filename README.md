# Cloud Foundry service credentials API

It is difficult for Cloud Foundry developers to access the internal credentials provided to bound applications. This little application provides a JSON API to fetch the credentials.

You deploy this application, then bind a set of services to it, restart the app, and then fetch the credentials via curl or an HTTP library.

```
$ curl http://service-binding-proxy.10.244.0.34.xip.io
{"etcd-dedicated-bosh-lite":[{"name":"test-etcd2","label":"etcd-dedicated-bosh-lite","tags":["etcd","nosql"],"plan":"1-server","credentials":{"port":4001,"host":"10.244.2.6","binding_commands":{"current_plan":"1-server","commands":{"vms-state":{"method":"GET","url":"http://6a5f655c.ngrok.com/binding_commands/84534fb0-5547-0131-f3f8-0438354ccefa"},"1-server":{"method":"PUT","url":"http://6a5f655c.ngrok.com/binding_commands/8455d160-5547-0131-f3f8-0438354ccefa"},"3-servers":{"method":"PUT","url":"http://6a5f655c.ngrok.com/binding_commands/845672c0-5547-0131-f3f8-0438354ccefa"},"5-servers":{"method":"PUT","url":"http://6a5f655c.ngrok.com/binding_commands/84573270-5547-0131-f3f8-0438354ccefa"}}}}}]}
```

