# API Interaction Summary

## What is a REST API?

A REST API allows software systems to communicate over HTTP using resource-oriented endpoints and methods such as GET. The server returns a response, often JSON, which the client can inspect or process.

## HTTP status codes

- **200 OK:** the request succeeded.
- **404 Not Found:** the requested resource could not be found at that URL.

## jq filter used

```bash
jq '{name: .name, repos: .public_repos, followers: .followers, joined: .created_at}'
```

- `{ ... }` creates a new JSON object.
- `name: .name` selects the input `name` field.
- `repos: .public_repos` selects `public_repos` and labels it `repos`.
- `followers: .followers` selects the follower count.
- `joined: .created_at` selects the account creation timestamp and labels it `joined`.

## Observed results

- GitHub username: Aryanmishra701
- GitHub profile HTTP status: TODO — record the actual result of the curl command.
- JSONPlaceholder posts count (`jq length`): TODO — record actual output.

Evidence files: `github_profile.json` and `sample_posts.json`.
