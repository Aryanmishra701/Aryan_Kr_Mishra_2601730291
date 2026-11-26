# API lab

Install tools if needed: `sudo apt update && sudo apt install curl jq -y`.

Run from the repository root to fetch Aryan's public GitHub profile and the JSONPlaceholder sample posts:

```bash
curl -fL "https://api.github.com/users/Aryanmishra701" -o API/github_profile.json
jq '{name: .name, repos: .public_repos, followers: .followers, joined: .created_at}' API/github_profile.json
curl -fL "https://jsonplaceholder.typicode.com/posts" -o API/sample_posts.json
jq length API/sample_posts.json
curl -sS -o /dev/null -w '%{http_code}\\n' "https://api.github.com/users/Aryanmishra701"
```

Record the actual HTTP status and post count in `api_summary.md`. Do not manually invent API values.

```bash
git add API/
git commit -m "data: add GitHub and JSONPlaceholder API responses and summary"
```
