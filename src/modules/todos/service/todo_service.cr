require "../../../models/*"
require "../dto/todo_dto"
require "../repository/todo_repository"

module TodoService
  def self.find_all()
    TodoRepository.find_all()
  end

  def self.save(create_dto : CreateTodosDto) : TodosDto
    TodoRepository.save(Todo.new(create_dto), create_dto.items)
  end
end