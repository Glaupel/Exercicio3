
Dado(/^que estou no site Orange$/) do
  visit "http://enterprise-demo.orangehrmlive.com/" 

end 

Quando(/^acessar o site com perfil de adm$/) do
   find('#txtUsername').set 'Admin'
   find('#txtPassword').set 'admin'
   find(:xpath," //*[@id='btnLogin']").click
end

Então(/^realizo cadastro de um novo usuario$/) do
    assert_text('Dashboard')
    find(:xpath," //*[@id='menu_pim_viewPimModule']").click
    find(:xpath," //*[@id='menu_pim_addEmployee']").click

    assert_text('Add Employee')
    find('#firstName').set 'Glaucia'
    find('#middleName').set ' ' 
    find('#lastName').set 'Pelaquin'
   
 # find(:xpath, "//*[@id='photofile']").click
    find(:xpath," //*[@id='chkLogin']").click
    find(:xpath, "//*[@id='user_name']").set 'Glaupel4  '
    find(:xpath, "//*[@id='user_password']").set '280971'
    find(:xpath, "//*[@id='re_password']").set '280971'
    select('Enabled', :from => 'status')
    select('New York Sales Office', :from => 'location')
    find('#btnSave').click
    assert_text('Personal Details')
 end