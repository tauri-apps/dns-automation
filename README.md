# DNS automation

This repo will manage DNS records automagically. Implementing Infrastructure as Code & GitOps practices.

Currently we added workflows for handling tauri-ops-test.dev and tauri-ops-test.dev on Cloudflare. You'll find directories for those DNS zones in ./terraform.

In those you can copy one of the record-*.tf files and modify it for the new record you want. It will be applied when the commit is pushed to 'dev' branch by pull request or manually.


Currently *production domains* are not managed here.
Rather we're building out the workflow and testing in this repository with test domains.

## Contributing

_Maintained by: @tauri-apps/dns-team_

Currently this repo is under heavy development, so we'd encourage you to join us on [Discord].

[Discord]: https://discord.com/invite/tauri
