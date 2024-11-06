function ssh-github -d "Open connection to Github SSH"
    eval $(ssh-agent -c)
    ssh-add ~/.ssh/id_ed25519
end
