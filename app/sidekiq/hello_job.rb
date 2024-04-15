class HelloJob
  include Sidekiq::Job

  def perform(*args)
    puts "Hellooooooo World <<<<<<<<<<<<<<<<<<<<<<<<<<<<<<,==============================="
  end
end
