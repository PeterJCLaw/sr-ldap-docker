# SR Development LDAP in Docker

This is a development focused setup of Student Robotics' LDAP configuration
within a docker container. It aims to reproduce the configuration used in
production (where LDAP is configured by Student Robotics' [puppet][sr-puppet]
configuration) for use in development and on CI.

## Usage

Grab a copy of this image for development against:

```
docker pull peterjclaw/sr-dev-ldap
```

Run the image:

```
docker run --rm --publish 3890:389 --name sr-dev-ldap peterjclaw/sr-dev-ldap
```

Note: the above configures the LDAP server to be on port `3890` locally, so
you'll need to modify the configuration of your client to match.

[sr-puppet]: https://github.com/srobo/server-puppet/
