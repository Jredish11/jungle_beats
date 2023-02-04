require "./lib/node"
require "./lib/linkedlist"

RSpec.describe LinkedList do
  it 'exists, head is nil' do
    list = LinkedList.new

    expect(list).to be_instance_of(LinkedList)
    expect(list.head).to eq(nil)
  end

  it '#append' do
    list = LinkedList.new
    list.append("doop")

    expect(list).to be_instance_of(LinkedList)
    expect(list.head).to be_instance_of(Node)
  
    expect(list.head.data).to eq("doop")
    expect(list.head.next_node).to eq(nil)
  end

  it "#count" do
    list = LinkedList.new
    list.append("doop")

    expect(list.count).to eq(1)
  end
  
  it '#to_string' do 
  list = LinkedList.new
  list.append("doop")

  expect(list.to_string).to eq("doop")
  end



end

