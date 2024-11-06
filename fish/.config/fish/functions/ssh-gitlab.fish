function ssh-gitlab -d "Open connection to Gitlab SSH"
    eval $(ssh-agent -c)
    ssh-add ~/.ssh/id_ed25519_gitlab
end
