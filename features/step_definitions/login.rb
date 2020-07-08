require 'securerandom'


random_string = SecureRandom.urlsafe_base64(5)
name  = "Sergio" + random_string  
email = "Sergio" + random_string + "@nuvem.com"


Dado('que eu acesso o site Opencart') do
    visit 'https://demo.opencart.com/'
    page.driver.browser.manage.window.resize_to(1640, 1200)
end
  
  Dado('clico em My Account > Register') do
    find(:xpath, "//span[contains(text(),'My Account')]").click
    find(:xpath, "//ul[@class='dropdown-menu dropdown-menu-right']//a[contains(text(),'Register')]").click
    
    
  end
  
  Dado('preencho o formulário com dados aleatórios para não ocorrer duplicação') do
    #Your Personal Details
    find(:xpath,"//input[@id='input-firstname']").set(name)
    find(:xpath,"//input[@id='input-lastname']").set("Leonidas")
    find(:xpath,"//input[@id='input-email']").set(email)
    find(:xpath,"//input[@id='input-telephone']").set("48 9944-4499")
    #Your Password
    find(:xpath,"//input[@id='input-password']").set("1234")
    find(:xpath,"//input[@id='input-confirm']").set("1234")
    #NewsLetter
    find(:xpath,"//div[@class='form-group']//div[@class='col-sm-10']//label[1]").click
    #privacy
    find(:xpath,"//input[@name='agree']").click
 end
  
  Quando('eu clicar em Continue') do
    find(:xpath,"//input[@class='btn btn-primary']").click      
 end
  
  Então('o Cadastro é realizado com sucesso') do
      page.has_xpath?("//h1[contains(text(),'Your Account Has Been Created!')]//h1[contains(text(),'Your Account Has Been Created!')]")
  end
  
  Então('clico em continue') do
        find(:xpath,"//a[@class='btn btn-primary']").click
  end
  
  Então('faço o logout') do
    find(:xpath, "//span[contains(text(),'My Account')]").click
    find(:xpath, "//ul[@class='dropdown-menu dropdown-menu-right']//a[contains(text(),'Logout')]").click

  end
  
   
  
  Dado('que eu clico em My Account > Login') do
    find(:xpath, "//span[contains(text(),'My Account')]").click
    find(:xpath, "//ul[@class='dropdown-menu dropdown-menu-right']//a[contains(text(),'Login')]").click
  end
  
  Quando('eu preencho Login e Senha e clico em Login') do
    find(:xpath, "//input[@id='input-email']").set(email)
    find(:xpath, "//input[@id='input-password']").set("1234")
    find(:xpath, "//input[@class='btn btn-primary']").click

  end
  
  Então('o Login é realizado com sucesso') do
   
    page.has_xpath?("//a[contains(text(),'Your Store')]")
end