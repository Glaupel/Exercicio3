


Então(/^realizo alteração dos dados dos usuarios$/) do
     click_link 'menu_pim_viewPimModule'
  	 click_link 'menu_pim_viewEmployeeList'
	 find(:xpath,'//*[@id="resultTable"]/tbody/tr[5]/td[4]/a').click
	 click_button 'btnSave'
  	 fill_in('personal_txtEmpFirstName', :with  => 'Glaucia')    
     fill_in('personal_txtEmpLastName', :with  => 'Pelaquin')
     choose ('personal_optGender_2')
     select('Single', :from=> 'personal_cmbMarital')
     select('Brazilian', :from=> 'personal_cmbNation')
     fill_in('personal_txtEmpNickName', :with  => 'glau.pel')   
     fill_in('personal_txtMilitarySer', :with  => 'Teste988') 
     click_button 'btnSave'
     assert_text('Personal Details') 
 
end




