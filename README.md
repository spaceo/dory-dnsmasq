# Dory's dnsmasq container

## What is this?

[Dory](https://github.com/FreedomBen/dory) uses this container to provide the dnsmasq
services in conjunction with an nginx-proxy.  It's a very lightweight container built
on Alpine Linux (based off of [andyshinn/dnsmasq](https://hub.docker.com/r/andyshinn/dnsmasq/).
See the [dory](https://github.com/FreedomBen/dory) project page for more info.

## How do I use it?

You can use this container in your project, or as a standalone utility if you'd like.

Here's how to fire it up.

```
docker run freedomben/dory-dnsmasq:1.0.0 [<domain>] [<ip>]
```

So if you wanted all queries against domain "docker" to be routed to IP 3.3.3.3:

```
docker run freedomben/dory-dnsmasq:1.0.0 docker 3.3.3.3
```

If you'd rather extend it to bake in your defaults, here's an example:

```
FROM freedomben/dory-dnsmasq

CMD["docker", "3.3.3.3"]
```
