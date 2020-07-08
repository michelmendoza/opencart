require 'capybara'
require 'capybara/cucumber'
require 'report_builder'
require 'selenium-webdriver'
require 'rspec'

 

#Capybara.configure do |config|
#    config.default_driver = :selenium_chrome #roda no navegador
    #config.default_driver = :selenium_chrome_headless #roda com o nageador em background

#end
 
 


Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(app,:browser => :chrome)
    
     
     	 
   end
   Capybara.configure do |config|
     # digo que o driver padrao eh o do selenium.
     config.default_driver = :selenium 
     
      
  config
     # defino a url padrao.
     #config.app_host = "https://www.google.com"

     # defino o tempo maximo de espera para os elementos.
     config.default_max_wait_time = 30
   end

   RSpec.configure do |config|
    config.include Capybara::DSL
  end