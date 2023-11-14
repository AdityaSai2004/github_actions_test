workflow "Local POC Workflow" {
  on = "push"
  resolves = ["Print API Key"]
}

action "Print API Key" {
  uses = "actions/bash@main"
  runs = "./print_api_key.sh"
  env = {
    API_KEY: "${{ secrets.API_KEY }}"
  }
}
