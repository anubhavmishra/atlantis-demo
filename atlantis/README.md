# atlantis

Start atlantis server

```bash
./atlantis server --gh-user="$GITHUB_USERNAME" --gh-password="$GITHUB_PASSWORD" --aws-region="us-west-2" --require-approval="false" --log-level="debug" --atlantis-url=""
```

Start ngrok

```bash
./ngrok http 4141
```

Add tunnel url as a webhook to github repo `https://b38509b8.ngrok.io/events`