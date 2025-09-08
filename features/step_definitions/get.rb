
Dado('que o usuario informar do funcionario') do
    @get_url = 'http://dummy.restapiexample.com/api/v1/employees'
   
end

Quando('ele realizar a pesquisa') do
    @list_employee = HTTParty.get(@get_url)
end

Entao('uma lista de funcionarios deve ser retornada') do
  expect(@list_employee.code).to eql 200
  expect(@list_employee.message).to eql 'OK'
end

Dado('que o usuario cadastre um novo funcionario') do
    @post_url = 'http://dummy.restapiexample.com/api/v1/create'
end

Quando('ele inserir os dados do funcionario') do
  @create_employee = HTTParty.post(@post_url,body:{
  "id": 25,
  "employee_name": "Marcos",
  "employee_salary": 95000,
  "employee_age": 25,
  "profile_image": ""
}.to_json)
  puts @create_employee
end

Entao('retorna que o funcionario foi cadastrado') do
  puts @create_employee.code
  expect(@create_employee.code).to eql (200)
end