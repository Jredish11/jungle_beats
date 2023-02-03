require "./lib/linkedlist"

RSpec.describe LinkedList do
  it 'it exists, head is nil' do
    list = LinkedList.new

    expect(list).to be_instance_of(LinkedList)
    expect(list.head).to eq(nil)
  end
  


end