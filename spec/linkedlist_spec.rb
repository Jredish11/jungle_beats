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
    expect(list.next_node).to eq(nil)
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

  it "append new node into list" do
    list = LinkedList.new
    list.append("doop")
    list.append("deep")
    

    expect(list.head.data).to eq("doop")
    expect(list.head).to be_instance_of(Node)
    expect(list.count).to eq(2)
    expect(list.to_string).to eq("doop deep")
  end

  it "append new node 'plop'" do
    list = LinkedList.new
    list.append("plop")
  
    expect(list.head.data).to eq("plop")
    expect(list.to_string).to eq("plop")
  end
  
  it 'append new node suu ' do
    list = LinkedList.new
    list.append("suu")

    expect(list.head.data).to eq("suu")
  end

  it 'prepend method' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    

    expect(list.head.data).to eq("dop")
    expect(list.to_string).to eq("dop plop suu")
    expect(list.count).to eq (3)
  end

  it 'tests insert method' do
    list = LinkedList.new
    list.append("plop")
    list.append("suu")
    list.prepend("dop")
    list.insert(1, "woo")

    expect(list.to_string).to eq("dop woo plop suu")
  end

  it "tests  of new data" do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    expect(list.to_string).to eq("deep woo shi shu blop")
  end

  it 'tests find method' do
    list = LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")
    

    expect(list.find(2, 1)).to eq("shi")
  end

end

