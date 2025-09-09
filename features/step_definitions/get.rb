
Dado('que o usuario informar do funcionario') do
    @getList = Employee_Requests.new
   
end

Quando('ele realizar a pesquisa') do
    @list_employee = @getList.find_employee
end

Entao('uma lista de funcionarios deve ser retornada') do
  expect(@list_employee.code).to eql 200
  expect(@list_employee.message).to eql 'OK'
end

Dado('que o usuario cadastre um novo funcionario') do
    @create = Employee_Requests.new
end

Quando('ele inserir os dados do funcionario') do
  @create_employee = @create.create_employee('Carla',10000,27)
  puts @create_employee
end

Entao('retorna que o funcionario foi cadastrado') do
  puts @create_employee.code
  expect(@create_employee.code).to eql (200)
end

Dado('que o usuario altere um funcionario') do
  @update = Employee_Requests.new
end

Quando('ele inserir os novos dados do funcionario') do
  @update_employee = @update.update_employee(@update.find_employee['data'][0]['id'],"Carla", 45000,20)
end

Entao('retorna que os dados do funcionario foram atualizados') do
  puts @update_employee
end

Dado('que o usuario delete um funcionario') do
    @request = Employee_Requests.new
  end

Quando('ele informar o dado do funcionario') do
  @delete_employee = @request.delete_employee(@request.find_employee['data'][0]['id'])
end

Entao('retorna que o usuario foi deletado') do
  body = JSON.parse(@delete_employee.body)
  expect(body["message"]).to eql "Successfully! Record has been deleted"
end