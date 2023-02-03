require "./lib/node"
require "./lib/linkedlist"

RSpec.describe LinkedList do
  it 'exists, head is nil' do
    list = LinkedList.new

    expect(list).to be_instance_of(LinkedList)
    expect(list.head).to eq(nil)
  end

  it 'adds a new piece of data to list #append' do
    list = LinkedList.new

    expect(list.append("doop")).to eq("doop")
  end



end