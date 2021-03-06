# Changelog
All notable changes to this project will be documented in this file.

## [Unreleased]

## [0.8] - 2017-05-21
### Added

- new resource `Post` with new endpoint `/posts/<post_id>`
- new scope `post:read` to view the posts of a user and his friends
- new post author endpoints `/posts/<post_id>/author` and `/posts/<post_id>/relationships/author`
- new post parent endpoints `/posts/<post_id>/parent` and `/posts/<post_id>/relationships/parent`
- new endpoint `users/<user_id>/posts` to list the posts of a user

### Changed

- Update LICENSE to GPL v3

### Deprecated

- Version 0.6 and 0.7 are now deprecated and support will be dropped in future. If your apps use this version upgrade them to version 0.8.

### Removed

- **Breaking:** The support for version 0.4 was dropped. Requests with this version and below will get a 406 error response.

## [0.7] - 2016-11-20
### Added

- every resource has now a links section

## [0.6] - 2016-10-23
### Added

- Authorization over OAuth2 Authorization Code Grant, see http://developer.youthweb.net/api_general_oauth2.html
- Resource `me/` provides the data for the authorized user
- New documentation website: http://developer.youthweb.net

### Changed

- Changed the API url from https://youthweb.net to https://api.youthweb.net

### Deprecated

- The endpoint `/auth/token` for access token is deprecated. Use the OAuth2 authorization instead.
- The usage of the old URL (https://youthweb.net) for API requests is deprecated. Use the new URL instead.
- Version 0.4 and 0.5 are now deprecated and support will be dropped in future release. If your apps use this version upgrade them to version 0.6.

### Removed

- **Breaking:** The support for version 0.3 was dropped. Requests with this version and below will get a 406 error response.

## [0.5] - 2016-07-03
### Added

- Resource `users/` provides new attributes like `first_name`, `last_name`, `email`, `birthday`, `created_at` and more.

## [0.4] - 2016-03-27
### Added

- Authentication with User-Token and Authorization with Bearer token
- New resource `users/{user_id}`
- Tests for Errors with wrong headers
- Show warning if request header Accept: application/vnd.api+json; net.youthweb.api.version=x.y is set with deprecated version

### Changed

- Show 415 error if request header Content-Type: application/vnd.api+json isn't set
- Show 406 error if request header Accept: application/vnd.api+json; net.youthweb.api.version=x.y isn't set
- Show 406 error if request header Accept: application/vnd.api+json; net.youthweb.api.version=x.y is set with unsupported version

## [0.3] - 2015-10-11
### Added

- Response header Content-Type: application/vnd.api+json added
- Response header Accept: application/vnd.api+json; net.youthweb.api.version=x.y added

### Changed

- Show warning if request header Content-Type: application/vnd.api+json isn't set
- Show warning if request header Accept: application/vnd.api+json; net.youthweb.api.version=x.y isn't set

### Removed
- The `account/stats` resource was removed.

## [0.2.1] - 2015-06-22
### Changed
- Mockserver apiary.io changed to local Drakov installation, so an apiary.io account isn't necessary.
- All resources are accessable through short urls.

### Deprecated
- Long urls to resources are deprecated, but won't be broken in near future. The use of short urls is recommended.

## [0.2] - 2015-06-21
### Added
- New resources `stats/account`, `stats/forum` and `stats/groups`.
- Better response description and new clients section in README.md.

### Changed
- response bodies are now following the [JSON API](http://jsonapi.org/) spec.

### Deprecated
- The `account/stats` resource will be deleted in the next release.

## [0.1] - 2014-12-17
### Added
- Behat-Tests for resource `account/stats`
- LICENCE file (GPLv2)
- this CHANGELOG.md
- Travis CI integration

## 0.0.1 - 2014-10-12
### Added
- Resource `account/stats`

[Unreleased]: https://github.com/youthweb/youthweb-api/compare/0.8...develop
[0.8]: https://github.com/youthweb/youthweb-api/compare/0.7...0.8
[0.7]: https://github.com/youthweb/youthweb-api/compare/0.6...0.7
[0.6]: https://github.com/youthweb/youthweb-api/compare/0.5...0.6
[0.5]: https://github.com/youthweb/youthweb-api/compare/0.4...0.5
[0.4]: https://github.com/youthweb/youthweb-api/compare/0.3...0.4
[0.3]: https://github.com/youthweb/youthweb-api/compare/0.2.1...0.3
[0.2.1]: https://github.com/youthweb/youthweb-api/compare/0.2...0.2.1
[0.2]: https://github.com/youthweb/youthweb-api/compare/0.1...0.2
[0.1]: https://github.com/youthweb/youthweb-api/compare/0.0.1...0.1
