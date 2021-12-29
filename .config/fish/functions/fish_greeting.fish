function fish_greeting
    if type -q neofetch
        neofetch
    else
        echo "Enjoy swimming :)"
    end
end
