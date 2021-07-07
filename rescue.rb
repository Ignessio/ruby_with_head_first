def drive(destination)
    if destination == "Hawaii"
        raise "You can't drive to Hawaii!"
    else
        raise "You can drive to #{destination}."
    end
end

begin
    drive("Spain")
rescue => error
    puts error.message
end