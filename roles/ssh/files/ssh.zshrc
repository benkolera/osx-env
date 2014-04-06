function run_agent() {
  eval `ssh-agent | tee ~/.agent.env`
  ssh-add $(ls ~/.ssh/*_{dsa,rsa})
}

if [ -f ~/.agent.env ] ; then
  . ~/.agent.env > /dev/null
  if ! kill -0 $SSH_AGENT_PID > /dev/null 2>&1; then
    echo "Stale agent file found. Spawning new agent… "
    run_agent
  fi
else
  echo "Starting ssh-agent"
  run_agent
fi
