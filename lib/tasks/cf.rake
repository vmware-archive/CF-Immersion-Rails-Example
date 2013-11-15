namespace :cf do
  desc "Only run on the primary Cloud Foundry instance"
  task :on_primary_instance do
    instance_index = JSON.parse(ENV["VCAP_APPLICATION"])["instance_index"] rescue nil
    exit(0) unless instance_index == 0
  end

  desc "Start server using port from CF env"
  task :start_with_cf_port do
    cf_port = ENV["PORT"]
    exec("rails s -p #{cf_port}")

  end

end