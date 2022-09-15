require_relative 'item'

class Author < Item
  attr_accessor :first_name, :last_name, :items
  attr_reader :id, :archieved

  def initialize(_first_name, _last_name)
    super(_id)
    @id = Random.rand(1..1000)
    @first_name = 'first_name'
    @last_name = 'last_name'
    @items = []
  end

  def add_item(item)
    @items << item
    item.label = self
  end

  def can_be_archived?
    super || @_id
  end
end
