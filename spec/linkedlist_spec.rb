require "./lib/linkedlist"

RSpec.describe LinkedList do
  it 'it exists' do
    list = LinkedList.new

    expect(list).to be_instance_of(LinkedList)
  end
end